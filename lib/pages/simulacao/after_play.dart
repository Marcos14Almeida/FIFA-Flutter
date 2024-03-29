import 'package:fifa/classes/classification.dart';
import 'package:fifa/classes/club.dart';
import 'package:fifa/classes/functions/name.dart';
import 'package:fifa/classes/semana.dart';
import 'package:fifa/classes/functions/size.dart';
import 'package:fifa/classes/image_class.dart';
import 'package:fifa/classes/international.dart';
import 'package:fifa/classes/jogador.dart';
import 'package:fifa/classes/league.dart';
import 'package:fifa/classes/match/goal_my_match.dart';
import 'package:fifa/classes/match/match.dart';
import 'package:fifa/classes/my.dart';
import 'package:fifa/classes/table/tabela_national.dart';
import 'package:fifa/classes/table/table_matchs_control.dart';
import 'package:fifa/global_variables.dart';
import 'package:fifa/pages/cups/tabs/cup_matchs.dart';
import 'package:fifa/pages/menu/c_menu.dart';
import 'package:fifa/pages/simulacao/not_play_international/not_play_international_matamata.dart';
import 'package:fifa/pages/table/widgets/table_widget.dart';
import 'package:fifa/pages/table_international/main_tabs.dart';
import 'package:fifa/theme/background_color/background_position.dart';
import 'package:fifa/theme/background_color/color_grade.dart';
import 'package:fifa/theme/colors.dart';
import 'package:fifa/theme/textstyle.dart';
import 'package:fifa/theme/translation.dart';
import 'package:fifa/values/images.dart';
import 'package:fifa/values/league_names.dart';
import 'package:fifa/widgets/best_player_box/best_player_box.dart';
import 'package:fifa/widgets/button/button_continue.dart';
import 'package:fifa/widgets/button/pressable_button.dart';
import 'package:fifa/widgets/match_row.dart';
import 'package:fifa/widgets/number_circle.dart';
import 'package:fifa/widgets/popup/popup_player_info.dart';
import 'package:flutter/material.dart';

class PlayerGrade{
  late int id;
  late String name;
  late double grade;
  PlayerGrade({required this.id,required this.name, required this.grade});
}

class AfterPlay extends StatefulWidget {
  //NECESSARY VARIABLES WHEN CALLING THIS CLASS
  final int adversarioClubID;
  final int goal1;
  final int goal2;
  final bool visitante;
  const AfterPlay({Key? key, required this.adversarioClubID, required this.visitante, required this.goal1, required this.goal2}) : super(key: key);

  @override
  State<AfterPlay> createState() => _AfterPlayState();
}

class _AfterPlayState extends State<AfterPlay> with TickerProviderStateMixin {

  String name1 = '';
  String name2 = '';
  My myClass = My();
  late PlayerGrade playerGrade;
  Club myClubClass = Club(index: My().clubID);
  late Club adversarioClubClass;
  late League leagueClass;
  late TabController _tabController;
  Semana weekClass = Semana(semana-1); //A semana desejada é a "anterior"

  ///////////////////////////////////////////////////////////////////////////
//                               INIT                                     //
////////////////////////////////////////////////////////////////////////////
  @override
  void initState() {
    _tabController = TabController(vsync: this, length: 2);
    onInit();
    bestPlayer();
    super.initState();
  }
  onInit(){
    adversarioClubClass = Club(index: widget.adversarioClubID);
    if(widget.visitante){
      name2 = myClass.clubName;
      name1 = adversarioClubClass.name;
    }else{
      name1 = myClass.clubName;
      name2 = adversarioClubClass.name;
    }
    leagueClass = League(index: myClass.leagueID);
  }
  bestPlayer(){
    int bestPlayerID = 0;
    double highestGrade = 0;
    for(int playerID in myClubClass.escalacao){
      if(MatchStats(playerID: playerID).grade > highestGrade){
        highestGrade = MatchStats(playerID: playerID).grade;
        bestPlayerID = playerID;
      }
    }
    for(int playerID in adversarioClubClass.escalacao){
      if(MatchStats(playerID: playerID).grade > highestGrade){
        highestGrade = MatchStats(playerID: playerID).grade;
        bestPlayerID = playerID;
      }
    }
    playerGrade = PlayerGrade(id: bestPlayerID,name: Jogador(index: bestPlayerID).name,grade: highestGrade);
  }
  @override
  void dispose() {
    _tabController.dispose();
    super.dispose();
  }
////////////////////////////////////////////////////////////////////////////
//                               BUILD                                    //
////////////////////////////////////////////////////////////////////////////
  @override
  Widget build(BuildContext context) {

    return DefaultTabController(
      length: 2,
      child: Scaffold(
        body: Stack(
          children: [
            Images().getWallpaper(),

            Column(
              children: [

                const SizedBox(height: 30),
                header(),

                SizedBox(
                  height: 30,
                  child: TabBar(
                    controller: _tabController,
                    indicatorColor: AppColors().primary,
                    labelStyle: EstiloRajdhani.tabbar,
                    tabs: [
                      Tab(text: Translation(context).text.timeline),
                      Tab(text: Translation(context).text.players),
                    ],
                  ),
                ),
                Expanded(
                  child: TabBarView(
                    controller: _tabController,
                    children: [
                      goalsWidget(),
                      playerStatistics(),
                    ],
                  ),
                ),

                customButtonContinue(
                  title: Translation(context).text.nextMatchWeek,
                  function: (){
                    Navigator.pushReplacement(context,MaterialPageRoute(builder: (context) => const Menu()));
                  },
                ),

              ],
            ),


          ],
        ),
      ),
    );
  }

////////////////////////////////////////////////////////////////////////////
//                               WIDGETS                                  //
////////////////////////////////////////////////////////////////////////////
  Widget header(){
    String textRodada = '';
    if(weekClass.isJogoCampeonatoNacional) {
      textRodada = '${Translation(context).text.matchWeek} ' + (rodada-1).toString() + '/' + (League(index: myClass.leagueID).getNTeams()-1).toString();
    }else{
      textRodada = Name().groupsPhase;
      if(weekClass.isJogoGruposInternacional){textRodada += ' ${weekClass.rodadaGroupInternational}'; }
      else{
        textRodada = weekClass.semanaStr;
      }
    }
    return Container(
        margin: const EdgeInsets.symmetric(horizontal: 8, vertical: 4),
      child: Container(
      padding: const EdgeInsets.all(4),
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(8),
        color: AppColors().greyTransparent,
      ),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceAround,
        children: [
          //Escudo time 1
          Images().getEscudoWidget(name1,80,80),

          Column(
            children: [
              weekClass.isJogoCampeonatoNacional ? Image.asset(FIFAImages().campeonatoLogo(myClubClass.leagueName),height: 30,width: 30)
                  : weekClass.isJogoCopa ? Image.asset(FIFAImages().campeonatoLogo(myClass.cupName),height: 35,width: 35)
                  : weekClass.isJogoMundial ? Image.asset(FIFAImages().campeonatoLogo(LeagueOfficialNames().mundial),height: 35,width: 35)
                  : Image.asset(FIFAImages().campeonatoLogo(myClass.getMyInternationalLeague()),height: 35,width: 35),
              Text(textRodada,style: EstiloTextoBranco.text16),
              widget.visitante
                  ? Text(widget.goal2.toString() + 'X' + widget.goal1.toString() ,style: EstiloTextoBranco.text30)
                  : Text(widget.goal1.toString() + 'X' + widget.goal2.toString() ,style: EstiloTextoBranco.text30),
            ],
          ),

          //Escudo time 2
          Images().getEscudoWidget(name2,80,80),

        ],
      ),
      ),
    );
  }

Widget goalsWidget(){
  List<GoalMyMatch> goals = [];
  List<GoalMyMatch> goals1 = [];
  List<GoalMyMatch> goals2 = [];
  for(int i=0; i < widget.goal1;i++){
    if(!widget.visitante){
      GoalMyMatch goal1 = GoalMyMatch();
      goal1.getMyGoal(i);
      goals1.add(goal1);
    }else{
      GoalMyMatch goal2 = GoalMyMatch();
      goal2.getMyGoal(i);
      goals2.add(goal2);
    }
  }
  for(int i=0; i< widget.goal2;i++){
    if(widget.visitante){
      GoalMyMatch goal1 = GoalMyMatch();
      goal1.getAdvGoal(i);
      goals1.add(goal1);
    }else{
      GoalMyMatch goal2 = GoalMyMatch();
      goal2.getAdvGoal(i);
      goals2.add(goal2);
    }
  }

  goals = goals1+goals2;
  goals.sort((a, b) => a.minute.compareTo(b.minute));

    return
        Column(
          children: [
            Expanded(
              child: SingleChildScrollView(
                child: Column(
                  children: [
                    for(int i=0; i<goals.length; i++)
                      goalRow(goals[i], goals2.contains(goals[i])),
                  ],
                ),
              ),
            ),

            weekClass.isJogoCampeonatoNacional || weekClass.isJogoCampeonatoInternacional
                ? classification()
                : Container(),

            weekClass.isJogoCampeonatoNacional
                ? weekMatchs()
                : weekClass.isJogoCopa ? SizedBox(height: 10*34, child: cupPhaseWidget(context, My().cupName))
                : weekClass.isJogoMundial ? Container()
                : weekClass.isJogoGruposInternacional
                ? tableWidget()
                : tableWidgetMataMata(),
          ],
        );
}

Widget goalRow(GoalMyMatch goalMyMatch, bool visitante){

  double paddingSize = 6;

  return
    Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Row(
          mainAxisAlignment: MainAxisAlignment.start,
          children: [
            visitante ? Container(width: Sized(context).width*0.50-1) : Container(),
            visitante ? Container(width: 1,height:18,color: Colors.white): Container(),
            Container(padding: EdgeInsets.only(left: paddingSize)),
            Image.asset('assets/icons/bola.png',height:15,width: 15),
            Text(goalMyMatch.minute.toString()+'\'  ',style: EstiloTextoBranco.text14),
            SizedBox(width:135,
                child: Text(goalMyMatch.playerName,overflow: TextOverflow.ellipsis,style: EstiloTextoBranco.text14),
              ),
              const Spacer(),
              !visitante ? Container(width: 1,height:18,color: Colors.white): Container(),
              !visitante ? Container(width: Sized(context).width*0.5) : Container(),
          ],
        ),
        goalMyMatch.playerNameAssist.isNotEmpty ? Row(
          children: [
            visitante ? Container(width: Sized(context).width*0.50-1) : Container(),
            visitante ? Container(width: 1,height:18,color: Colors.white): Container(),
            Container(padding: EdgeInsets.only(left: paddingSize)),
            Image.asset('assets/icons/assists.png',height:15,width: 15),
            const SizedBox(width: 23),
            SizedBox(width:135,
              child: Text(goalMyMatch.playerNameAssist,overflow: TextOverflow.ellipsis,style: EstiloTextoCinza.text14),
            ),
            const Spacer(),
            !visitante ? Container(width: 1,height:18,color: Colors.white): Container(),
            !visitante ? Container(width: Sized(context).width*0.5) : Container(),
          ],
        ) : Container(),
      ],
    );
}

  Widget playerStatistics(){
    return Column(
      children: [

        SingleChildScrollView(
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Column(
                children: [
                  for(int i=0;i<11;i++)
                    playerRow(Jogador(index: !widget.visitante ? myClubClass.escalacao[i] : adversarioClubClass.escalacao[i])),
                ],
              ),

              Column(
                children: [
                  for(int i=0;i<11;i++)
                    playerRow(Jogador(index: widget.visitante ? myClubClass.escalacao[i] : adversarioClubClass.escalacao[i])),
                ],
              ),
            ],
          ),
        ),

        bestPlayerBox('Melhor Jogador', Jogador(index: playerGrade.id),playerGrade.grade.toStringAsFixed(1)),

      ],
    );
  }
  Widget playerRow(Jogador player){

    MatchStats match = MatchStats(playerID: player.index);

    return Padding(
      padding: const EdgeInsets.symmetric(vertical: 4.0),
      child: PressableButton(
        onTap:(){
          popUpOkShowPlayerInfos(context: context, playerID: player.index, funcSetState: (){});
        },
        child: Row(
          children: [
              const SizedBox(width: 2),
              positionContainer(player.position),
              Images().getPlayerPictureWidget(player,25,25),
              SizedBox(width:100,child: Text(player.name,style: EstiloTextoBranco.text12)),
              const SizedBox(width: 4),
              Container(
                  height:18,width:25,color:colorGradeBackground(match.grade.floorToDouble()),
                  child: Center(child: Text(match.grade.toStringAsFixed(1),style: EstiloTextoPreto.text12))),
          ],
        ),
      ),
    );
  }
  Widget classification(){
      return Container(
        color: AppColors().greyTransparent,
        margin: const EdgeInsets.all(4),
        child: Column(
          children: [
            const SizedBox(height: 8),
            const Text('Classificação',style: EstiloTextoBranco.negrito16),
            const SizedBox(height: 8),
            //TITLE
            Row(
              children: [
                Container(width:30),
                const Expanded(child: Text('Nome',style:EstiloTextoBranco.text14)),
                const SizedBox(width:30,child: Text('PTS',style:EstiloTextoBranco.text14)),
                const SizedBox(width:30,child: Text('GM',style:EstiloTextoBranco.text14)),
                const SizedBox(width:30,child: Text('GS',style:EstiloTextoBranco.text14)),
                const SizedBox(width:25,child: Text('SG',style:EstiloTextoBranco.text14)),
                const SizedBox(width:30,child: Text('OVR',style:EstiloTextoBranco.text14)),
                const SizedBox(width:10)
              ],
            ),

            classificationBox(),

          ],
        ),
      );
    }

  Widget classificationBox(){
    List classificationClubsIndexes = [];
    if(weekClass.isJogoCampeonatoInternacional){
      List classificationClubsIndexesAll = International(myClass.getMyInternationalLeague()).getClassification();
      myClass = My();
      int index = myClass.getMyClubInternationalGroup()*4;
      classificationClubsIndexes = [
        classificationClubsIndexesAll[index],
        classificationClubsIndexesAll[index+1],
        classificationClubsIndexesAll[index+2],
        classificationClubsIndexesAll[index+3]
      ];
    }else{
      classificationClubsIndexes = Classification(leagueIndex: myClass.getLeagueID()).classificationClubsIndexes;
    }
    My my = My();

    return             //CONTENT
      Container(
        height: 5*35,
        margin: const EdgeInsets.all(4),
        child: ListView.builder(
            padding: EdgeInsets.zero,
            itemCount: classificationClubsIndexes.length,
            itemBuilder: (c,i) => weekClass.isJogoCampeonatoInternacional
                ? groupInternationalRow(context, i+1, classificationClubsIndexes[i], my)
                : rowTableNacionalLayout(context, i, classificationClubsIndexes[i], League(index: my.leagueID))
        ),
      );
  }

  Widget classificationRow(int position, int indexClub){
    Club clubClass = Club(index: indexClub);

    return Row(
      children: [
        numberCircle(position+1, 25),
        Images().getEscudoWidget(clubClass.name,25,25),
        Expanded(
            child: Container(color:(clubClass.name==myClass.clubName) ? Colors.teal : Colors.transparent,
            padding:const EdgeInsets.all(1),
            child: Text(clubClass.name,style:EstiloTextoBranco.text12))),
        SizedBox(width:25,
            child: Text(weekClass.isJogoCampeonatoNacional
                ? clubClass.leaguePoints.toString()
                : clubClass.internationalPoints.toString()
                ,style:EstiloTextoBranco.text14)),
        SizedBox(width:25,
            child: Text(weekClass.isJogoCampeonatoNacional
                ? clubClass.leagueGM.toString()
                : clubClass.internationalGM.toString(),style:EstiloTextoBranco.text14)),
        SizedBox(width:25,
            child: Text(weekClass.isJogoCampeonatoNacional
                ? clubClass.leagueGS.toString()
                : clubClass.internationalGS.toString(),style:EstiloTextoBranco.text14)),
        SizedBox(width:40,child: Text(clubClass.getOverall().toStringAsFixed(2),style:EstiloTextoBranco.text14)),
      ],
    );
  }

  Widget weekMatchs(){

    int nteamsLeague = leagueClass.getNTeams();
    My my = My();

    return Container(
      color: AppColors().greyTransparent,
      margin: const EdgeInsets.all(4),
      child: Column(
        children: [
          Text('Rodada '+(weekClass.rodadaNacional).toString(),style: EstiloTextoBranco.negrito16),
              Container(
                height: 5*34,
                margin: const EdgeInsets.all(4),
                child: ListView.builder(
                    padding: EdgeInsets.zero,
                    itemCount: (nteamsLeague/2).round(),
                    itemBuilder: (c,i)=>matchRowWidget(
                        TableNational(
                          chosenLeagueIndex: myClass.leagueID,
                          leagueClass: leagueClass,
                          rodadaMatch: weekClass.rodadaNacional,
                          matchNumber: i*2
                        ).confronto,
                        my
                    )
                ),
              ),
        ],
      ),
    );
  }


  Widget tableWidget() {
    My my = My();
    return Container(
      color: AppColors().greyTransparent,
      margin: const EdgeInsets.all(4),
      height: 5*34,
      child: SingleChildScrollView(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            for (int groupNumber = 0; groupNumber < 8; groupNumber++)
              for (int nConfronto = -1; nConfronto < 2; nConfronto++) //Tem linha com título
                Column(
                  children: [
                    if (nConfronto == -1)
                      groupTitle(groupNumber)
                    else
                      groupRow(groupNumber,nConfronto, my)
                  ],
                )
          ],
        ),
      ),
    );
  }

  Widget groupTitle(int groupNumber){
    String groupLetter = 'A';
    if(groupNumber==1){groupLetter='B';}
    if(groupNumber==2){groupLetter='C';}
    if(groupNumber==3){groupLetter='D';}
    if(groupNumber==4){groupLetter='E';}
    if(groupNumber==5){groupLetter='F';}
    if(groupNumber==6){groupLetter='G';}
    if(groupNumber==7){groupLetter='H';}
    return Text('\n${Translation(context).text.group} ' + groupLetter, style: EstiloTextoBranco.negrito16);
  }
  Widget groupRow(int groupNumber, int nConfronto, My my){
    return  matchRowWidget(
        MatchResultInternational(
            rodadaNumber: semanasGruposInternacionais.indexOf(semana-1),
            groupNumber: groupNumber,
            nConfronto: nConfronto,
            competitionName: myClass.getMyInternationalLeague()
        ).confronto,
        my);
  }

Widget tableWidgetMataMata(){
  return Container(
    color: AppColors().greyTransparent,
    margin: const EdgeInsets.all(4),
    height: 5*34,
    child: SingleChildScrollView(
      child: Column(
        children: [
          Column(
            children: [
              for(int phaseStage = 0; phaseStage < 7; phaseStage++)
                phaseTableMataMataWidget(myClass.getMyInternationalLeague(),semana,phaseStage)
            ],
          ),
        ],
      ),
    ),
  );
}

}
