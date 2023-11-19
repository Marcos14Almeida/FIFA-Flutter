import 'package:fifa/classes/functions/size.dart';
import 'package:fifa/classes/image_class.dart';
import 'package:fifa/pages/tournament_mode/custom_tournament.dart';
import 'package:fifa/pages/tournament_mode/tourn2_settings.dart';
import 'package:fifa/theme/colors.dart';
import 'package:fifa/theme/textstyle.dart';
import 'package:fifa/widgets/button/back_button.dart';
import 'package:flutter/material.dart';

class Tournament extends StatefulWidget {
  const Tournament({Key? key}) : super(key: key);

  @override
  State<Tournament> createState() => _TournamentState();
}

class _TournamentState extends State<Tournament> {


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
              backButtonText(context,'Tournament'),
              const Text('Choose a Style',style: EstiloTextoBranco.text20),
              const SizedBox(height: 32),

              Column(
                children: [

                  box("League", CustomTournament().league),
                  const SizedBox(height: 16),
                  box("Knockout", CustomTournament().knockout),
                  const SizedBox(height: 16),
                  box("Group-knockout", CustomTournament().groups),

                ],
              ),

            ],
          ),


        ],
      ),
    );
  }

////////////////////////////////////////////////////////////////////////////
//                               WIDGETS                                  //
////////////////////////////////////////////////////////////////////////////
Widget box(String title, String type){
    return InkWell(
      onTap: (){
        CustomTournament customTournament = CustomTournament();
        customTournament.setType(type);
        Navigator.push(context,MaterialPageRoute(builder: (context) => TournamentSettings(customTournament: customTournament)));
      },
      child: Container(
        height: 96,
        width: Sized(context).width - 64,
        decoration: BoxDecoration(
          color: AppColors().greyTransparent,
          borderRadius: const BorderRadius.all(Radius.circular(8.0)),
        ),
        child: Padding(
          padding: const EdgeInsets.all(8.0),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text(title, style: EstiloTextoBranco.text25)
            ],
          ),
        ),
      ),
    );
}
}
