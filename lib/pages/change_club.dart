import 'package:fifa/functions/func_change_club.dart';
import 'package:fifa/global_variables.dart';
import 'package:fifa/values/images.dart';
import 'package:fifa/page_controller/change_club_control.dart';
import 'package:fifa/widgets/button_continue.dart';
import 'package:fifa/theme/textstyle.dart';
import 'package:flutter/material.dart';

import 'menu/c_menu.dart';

class ChangeClub extends StatefulWidget {
  //NECESSARY VARIABLES WHEN CALLING THIS CLASS
  const ChangeClub({Key? key}) : super(key: key);
  @override
  _ChangeClubState createState() => _ChangeClubState();
}

class _ChangeClubState extends State<ChangeClub> {


////////////////////////////////////////////////////////////////////////////
//                               BUILD                                    //
////////////////////////////////////////////////////////////////////////////
  @override
  Widget build(BuildContext context) {

    OptionsClubs options = OptionsClubs();

    return Scaffold(

        resizeToAvoidBottomInset : false, //Evita um overlay quando o layout é maior que a tela
        body:  Stack(
            children: [

              Image.asset('assets/icons/wallpaper.png',height: double.infinity,width: double.infinity,fit: BoxFit.fill),

              Column(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: [

                  const SizedBox(height: 40),
                  const Text('Mudar de time',style: EstiloTextoBranco.text30),


                  Column(
                    children: [
                      Row(
                        mainAxisAlignment: MainAxisAlignment.spaceAround,
                        children: [
                          clubWidget(options.team1),
                          clubWidget(options.team2),
                        ],
                      ),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.spaceAround,
                        children: [
                          clubWidget(options.team3),
                          clubWidget(options.team4),
                        ],
                      ),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.spaceAround,
                        children: [
                          clubWidget(options.team5),
                          clubWidget(options.team6),
                        ],
                      ),
                    ],
                  ),

                  //VOLTAR
                  customButtonContinue(
                      title: 'VOLTAR',
                      function: (){
                        Navigator.of(context).pushReplacement(MaterialPageRoute(builder: (context) => const Menu()));
                      }
                  ),

                ],
              )

            ]
        )
    );
  }
////////////////////////////////////////////////////////////////////////////
//                               WIDGETS                                  //
////////////////////////////////////////////////////////////////////////////
Widget clubWidget(int clubID){

  ClubClassification clubClassification = ClubClassification(clubID: clubID);

    return GestureDetector(
      onTap: (){
        funcChangeClub(clubClassification.clubName, clubClassification.indexLeague, clubClassification.chaveClub);
        alreadyChangedClubThisSeason = true;
        Navigator.push(context,MaterialPageRoute(builder: (context) => const Menu()));
      },
      child: Padding(
        padding: const EdgeInsets.symmetric(vertical: 8.0),
        child: Container(
          height: 210,width: 170,
          color: Colors.black12,
          padding: const EdgeInsets.symmetric(vertical: 8.0),
          child: Column(
            children: [
              Image.asset('assets/clubs/${FIFAImages().imageLogo(clubClassification.clubName)}.png',height: 130,width: 130),
              Text(clubClassification.clubName,textAlign:TextAlign.center,style: EstiloTextoBranco.text20),
              Text('Posição: '+clubClassification.posicaoTabela.toString()+'º',style: EstiloTextoBranco.text14)
            ],
          ),
        ),
      ),
    );
}
}