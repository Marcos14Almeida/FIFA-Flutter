import 'package:fifa/global_variables.dart';

class GoalMyMatch{
  late int minute;
  late int playerID;
  late String playerName;
  late int playerIDAssist;
  String playerNameAssist = "";
  late int clubID;

  void getMyGoal(int i){
    minute = globalMatchGoalsMinutesMy[i];
    playerID = globalMatchGoalScorerIDMy[i];
    playerName = globalJogadoresName[playerID];
    playerIDAssist = globalMatchAssistsIDMy[i];
    if(playerIDAssist>0){
      playerNameAssist = globalJogadoresName[playerIDAssist];
    }
    clubID = globalJogadoresClubIndex[playerID];
  }
  void getAdvGoal(int i){
    minute = globalMatchGoalsMinutesAdv[i];
    playerID = globalMatchGoalScorerIDAdv[i];
    playerName = globalJogadoresName[playerID];
    playerIDAssist = globalMatchAssistsIDAdv[i];
    if(playerIDAssist>0){
      playerNameAssist = globalJogadoresName[playerIDAssist];
    }
    clubID = globalJogadoresClubIndex[playerID];
  }

}