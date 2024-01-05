import 'package:fifa/classes/club.dart';
import 'package:fifa/classes/mata_mata/cup_classification.dart';
import 'package:fifa/classes/mata_mata/knockout_international.dart';
import 'package:fifa/classes/match/confronto.dart';
import 'package:fifa/classes/match/result_dict.dart';
import 'package:fifa/classes/semana.dart';
import 'package:fifa/classes/my.dart';
import 'package:fifa/classes/simulate/after_simulation/historic.dart';
import 'package:fifa/classes/simulate/my_match/my_match_simulation.dart';
import 'package:fifa/classes/simulate/player_variables/cards_injury_selection.dart';
import 'package:fifa/classes/simulate/player_variables/match_selection.dart';
import 'package:fifa/global_variables.dart';
import 'package:flutter/cupertino.dart';

import '../../../values/leagues_prize.dart';

class PosturaDoTimeClass{
  String defesa = 'Defesa';
  String normal = 'Normal';
  String ataque = 'Ataque';
  String value = 'Normal';

  setValue(String newValue){
    value = newValue;
  }
}

class CounterMatch extends ChangeNotifier{

  int milis = 0;
  late My myClass;
  late Club adversarioClubClass;
  late Club myClubClass;
  bool finishedMatch = false;
  late MyMatchSimulation myMatchSimulation;
  late PosturaDoTimeClass posturaDoTime;

  start(My myClass,Club adversarioClubClass, MyMatchSimulation myMatchSimulation, PosturaDoTimeClass posturaDoTime){
    this.myClass = myClass;
    myClubClass = Club(index: myClass.clubID);
    this.adversarioClubClass = adversarioClubClass;
    this.myMatchSimulation = myMatchSimulation;
    this.posturaDoTime = posturaDoTime;
  }

  simulateMinute () async {
    //ANTES DE COMEÇAR O JOGO
    if(milis==0){
      CardsInjury().setMinus1InjuryRedYellowCardAllTeam(myClubClass);
      CardsInjury().setMinus1InjuryRedYellowCardAllTeam(adversarioClubClass);
    }

      milis+=1;
      if(milis>90){
        milis = 90;
        endOfMatch();
      }else{
        //ATUALIZAÇÃO DE PARAMENTROS DA SIMULAÇAO
        myMatchSimulation.updateMilis(milis);
        myMatchSimulation.golPorMinuto(posturaDoTime, myClubClass.getOverall(), adversarioClubClass.getOverall());
        myMatchSimulation.updateHealth(myClubClass,adversarioClubClass);
        CardsInjury().setRedCardsYellowCardsInjury(myClubClass, true);
        CardsInjury().setRedCardsYellowCardsInjury(adversarioClubClass, true);
        notifyListeners();
      }
  }

  endOfMatch(){
    Club myClubClass = Club(index: myClass.clubID);
    if(!finishedMatch){
      myMatchSimulation.endMatch(); //set vitoria, empate ou derrota

      Confronto confronto = Confronto(clubName1: myMatchSimulation.myClubClass.name, clubName2: myMatchSimulation.adversarioClubClass.name);
      confronto.setGoals(goal1: myMatchSimulation.meuGolMarcado, goal2: myMatchSimulation.meuGolSofrido);
      premiacao(myClass, confronto); //dinheiro

      //update poe +1 match pros meus jogadores
      UpdatePlayerVariableMatch().update(myClubClass);
      UpdatePlayerVariableMatch().update(adversarioClubClass);

      //salva resultado no histórico
      saveHistoricResults();

      //Reseta a saude de todos os jogadores
      globalJogadoresHealth = List.filled(globalMaxPlayersPermitted, 1.0);

      finishedMatch = true;
    }
  }

  saveHistoricResults(){
    Semana semanaClass = Semana(semana);
    if(semanaClass.isJogoCampeonatoNacional){
      SaveMatchHistoric().setHistoricGoalsLeagueMy(myMatchSimulation);
    }else if(semanaClass.isJogoGruposInternacional){
      SaveMatchHistoric().setHistoricGoalsGruposInternational(myClass.getMyInternationalLeague(), myClass.clubID, adversarioClubClass.index,myMatchSimulation.meuGolMarcado, myMatchSimulation.meuGolSofrido);
    }else if(semanaClass.isJogoMataMataInternacional){
      //SALVA O PLACAR
      String phaseName = KnockoutInternational().getPhaseKeyName(semana);
      String idaOrVoltaKey = KnockoutInternational().getIdaOrVoltaKey(phaseName, semana);
      Map matchsMap = KnockoutInternational().getPhaseResults(myClass.getMyInternationalLeague(), phaseName, idaOrVoltaKey);
      int matchNumber = KnockoutInternational().getKeyNumberFromTeamName(matchsMap, myClass.clubName);
      Map result = matchsMap[matchNumber];
      if(result[ResultDict().keyTeamName1]==myClass.clubName){
        result = ResultDict().saveGoals(result, myMatchSimulation.meuGolMarcado, myMatchSimulation.meuGolSofrido);
      }else{
        result = ResultDict().saveGoals(result, myMatchSimulation.meuGolSofrido, myMatchSimulation.meuGolMarcado);
      }
      globalInternationalMataMata[myClass.getMyInternationalLeague()]![phaseName][idaOrVoltaKey][matchNumber] = result;
    }else if(semanaClass.isJogoCopa){
      //TODO SAVE PLAY RESULT COPA
      String cupName = myClass.cupName;
      String phaseName = CupClassification().getPhaseKeyName(semana);
      String idaOrVoltaKey = CupClassification().getIdaOrVoltaKey(phaseName, semana);
      Map matchsMap = CupClassification().getPhaseResults(cupName, phaseName, idaOrVoltaKey);
      int matchNumber = CupClassification().getKeyNumberFromTeamName(matchsMap, myClass.clubName);
      Map result = matchsMap[matchNumber];
      if(result[ResultDict().keyTeamName1]==myClass.clubName){
        result = ResultDict().saveGoals(result, myMatchSimulation.meuGolMarcado, myMatchSimulation.meuGolSofrido);
      }else{
        result = ResultDict().saveGoals(result, myMatchSimulation.meuGolSofrido, myMatchSimulation.meuGolMarcado);
      }
      globalCup[cupName]![phaseName][idaOrVoltaKey][matchNumber] = result;
    }
  }
}