import 'package:fifa/classes/image_class.dart';
import 'package:fifa/pages/tournament_mode/custom_tournament.dart';
import 'package:fifa/theme/textstyle.dart';
import 'package:fifa/widgets/button/back_button.dart';
import 'package:flutter/material.dart';

class TournamentMenu extends StatefulWidget {
  final CustomTournament customTournament;
  const TournamentMenu({Key? key, required this.customTournament}) : super(key: key);

  @override
  State<TournamentMenu> createState() => _TournamentMenuState();
}

class _TournamentMenuState extends State<TournamentMenu> {


  ////////////////////////////////////////////////////////////////////////////
//                               INIT                                     //
////////////////////////////////////////////////////////////////////////////
  @override
  void initState() {
    super.initState();
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

          Column(
            children: [
              backButtonText(context,'Tournament Menu'),
              Text(widget.customTournament.myClub,style: EstiloTextoBranco.text16),
              Images().getEscudoWidget(widget.customTournament.myClub),

            ],
          ),


        ],
      ),
    );
  }

////////////////////////////////////////////////////////////////////////////
//                               WIDGETS                                  //
////////////////////////////////////////////////////////////////////////////
}
