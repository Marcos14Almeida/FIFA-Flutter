import 'package:fifa/classes/click_navigator/click_club.dart';
import 'package:fifa/classes/club.dart';
import 'package:fifa/classes/functions/change_club_control.dart';
import 'package:fifa/classes/image_class.dart';
import 'package:fifa/classes/match/adversario.dart';
import 'package:fifa/classes/my.dart';
import 'package:fifa/classes/semana.dart';
import 'package:fifa/pages/club_profile/my_team.dart';
import 'package:fifa/pages/menu/widgets/menu_button.dart';
import 'package:fifa/pages/menu/widgets/play_button.dart';
import 'package:fifa/pages/menu/widgets/stadium_buttons.dart';
import 'package:fifa/pages/tournament_mode/custom_tournament.dart';
import 'package:fifa/theme/colors.dart';
import 'package:fifa/theme/textstyle.dart';
import 'package:fifa/widgets/button/back_button.dart';
import 'package:fifa/widgets/stars.dart';
import 'package:flutter/material.dart';

class TournamentMenu extends StatefulWidget {
  final CustomTournament customTournament;
  const TournamentMenu({Key? key, required this.customTournament}) : super(key: key);

  @override
  State<TournamentMenu> createState() => _TournamentMenuState();
}

class _TournamentMenuState extends State<TournamentMenu> {

  late My myClass;
  late Adversario adversario;
  late Club club;
  bool loaded = false;

  ////////////////////////////////////////////////////////////////////////////
//                               INIT                                     //
////////////////////////////////////////////////////////////////////////////
  @override
  void initState() {
    onInit();
    super.initState();
  }
  onInit() async{
    funcChangeClub(widget.customTournament.myClub);
    myClass = My();
    adversario = Adversario();
    adversario.getAdversario();
    club = Club(index: myClass.clubID);
    loaded = true;
    setState(() {

    });
  }
////////////////////////////////////////////////////////////////////////////
//                               BUILD                                    //
////////////////////////////////////////////////////////////////////////////
  @override
  Widget build(BuildContext context) {

    return Scaffold(
      body: Stack(
        children: [

          Images().getWallpaper(),

          loaded ? Column(
            children: [
              backButtonText(context,'Tournament Menu'),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceAround,
                children: [
                  Images().getEscudoWidget(widget.customTournament.myClub,80,80),
                  Column(
                    children: [
                      Text(widget.customTournament.myClub,style: EstiloTextoBranco.negrito22),
                      starsWidgetFromOverall(club.getOverall()),
                    ],
                  ),
                  Images().getUniformWidget(widget.customTournament.myClub,80,80),
                ],
              ),

              wPlayButton(context, club, adversario, Semana(1)),
              Row(
                  mainAxisAlignment: MainAxisAlignment.spaceAround,
                  children: [
                    Expanded(child: wMenuButton("Tabela", club, (){})),
                    Expanded(child: wMenuButton("My Team", club, (){navigatorPush(context, const MyTeam());})),
                  ]),

              Text(widget.customTournament.clubs.toString(),style: EstiloTextoBranco.text12,),

              const Spacer(),
              Container(
                color: AppColors().greyTransparent,
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [

                    close(context),

                    save(context),

                  ],
                ),
              ),

            ],
          ) : Container(),


        ],
      ),
    );
  }

////////////////////////////////////////////////////////////////////////////
//                               WIDGETS                                  //
////////////////////////////////////////////////////////////////////////////

}
