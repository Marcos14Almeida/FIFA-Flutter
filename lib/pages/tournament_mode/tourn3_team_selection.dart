import 'dart:async';

import 'package:fifa/classes/functions/size.dart';
import 'package:fifa/classes/image_class.dart';
import 'package:fifa/pages/tournament_mode/custom_tournament.dart';
import 'package:fifa/pages/tournament_mode/tourn_menu.dart';
import 'package:fifa/theme/colors.dart';
import 'package:fifa/theme/custom_toast.dart';
import 'package:fifa/theme/textstyle.dart';
import 'package:fifa/values/club_details.dart';
import 'package:fifa/widgets/button/back_button.dart';
import 'package:fifa/widgets/button/button_continue.dart';
import 'package:fifa/widgets/popup/popup_select_club_compare.dart';
import 'package:fifa/widgets/stars.dart';
import 'package:flutter/material.dart';

class TeamSelection extends StatefulWidget {
  final CustomTournament customTournament;
  const TeamSelection({Key? key, required this.customTournament}) : super(key: key);

  @override
  State<TeamSelection> createState() => _TeamSelectionState();
}

class _TeamSelectionState extends State<TeamSelection> {

  CustomTournament customTournament = CustomTournament();
  ////////////////////////////////////////////////////////////////////////////
//                               INIT                                     //
////////////////////////////////////////////////////////////////////////////
  @override
  void initState() {
    customTournament = widget.customTournament;
    super.initState();
  }
////////////////////////////////////////////////////////////////////////////
//                               BUILD                                    //
////////////////////////////////////////////////////////////////////////////
  @override
  Widget build(BuildContext context) {

    ClubDetails clubDetails = ClubDetails();

    return Scaffold(
      body: Stack(
        children: [

          Images().getWallpaper(),

          Column(
            children: [

              backButtonText(context,'Team Selection'),

              Text(widget.customTournament.type,style: EstiloTextoBranco.negrito20),
              const SizedBox(height: 16),

              SizedBox(
                height: Sized(context).height-200,
                child: GridView.builder(
                  gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
                    crossAxisCount: 4, // Number of columns in the grid
                    crossAxisSpacing: 1, // Spacing between columns
                    mainAxisSpacing: 32,
                  ),
                  itemCount: customTournament.clubs.length,
                  itemBuilder: (BuildContext context, int index) {
                    return box(context, index, clubDetails);
                  },
                ),

          ),

              const Spacer(),
              Padding(
                padding: const EdgeInsets.symmetric(horizontal: 8, vertical: 8),
                child: customButtonContinue(
                    title: "Start",
                    function: (){
                      Navigator.push(context,MaterialPageRoute(builder: (context) => TournamentMenu(customTournament: customTournament)));
                    }
                ),),

        ],
      ),
      ],
    )
    );
  }

////////////////////////////////////////////////////////////////////////////
//                               WIDGETS                                  //
////////////////////////////////////////////////////////////////////////////

  Widget box(BuildContext originalContext, index, ClubDetails clubdetails){

    String clubName = customTournament.clubs[index];

    return InkWell(
      onDoubleTap: (){
        setState((){});
        customTournament.myClub = clubName;
      },
      onTap: () async{

        PopupSelectClub popupConfig = PopupSelectClub();
        popUpSelectClub(originalContext: originalContext, popupConfig: popupConfig);

        Timer.periodic(const Duration(milliseconds: 100), (timer) {
          if (popupConfig.popupClosed) {
            setState((){});
            if(!customTournament.clubs.contains(popupConfig.newClub.name)){
              customTournament.clubs[index] = popupConfig.newClub.name;
            }else{
              customToast("Clube já selecionado");
            }
            timer.cancel();
          }
        });

      },
      child: Container(
        color: clubName == customTournament.myClub ? AppColors().greyTransparent2 : Colors.transparent,
        child: Column(
          children: [
            Images().getEscudoWidget(clubName,45),
            SizedBox(
                height: 32,
                child: Center(child: Text(clubName, maxLines:2, textAlign: TextAlign.center, style: EstiloTextoBranco.text12))),
            Row(
              children: [
                const SizedBox(width: 6),
                starsWidgetFromOverall(clubdetails.getOverall(clubName),14),
              ],
            ),
          ],
        ),
      ),
    );
  }

}
