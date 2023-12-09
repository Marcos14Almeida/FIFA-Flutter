import 'package:fifa/values/club_details.dart';
import 'package:fifa/widgets/kits_crests/patterns.dart';
import 'package:fifa/widgets/kits_crests/uniforme.dart';
import 'package:flutter/material.dart';

class FullKitCustom {

  ClubDetails clubDetails = ClubDetails();
  ClubPattern clubPattern = ClubPattern();

  late String clubName;
  late LinearGradient pattern;
  late ClubColors clubColors;
  double scale = 1;

  double angle = 15;
  final double _heightShorts = 40;
  final double _widthShorts = 26;

  final double _heightSocks= 38;
  final double _widthSocks = 8;
  final double _heightSocksFeet = 8;
  final double _widthSocksFeet = 16;

  FullKitCustom(this.clubName, [this.scale = 1]) {
    pattern = clubPattern.getGradient(
        clubDetails.getPattern(clubName), clubDetails.getColors(clubName));
    clubColors = clubDetails.getColorsShortsSocks(clubName);
  }

  Widget kit(){
    return Stack(
      children: [

        UniformCustom(clubName, scale).kit(),

        //SHORTS
        //SHORTS Esquerda
        Padding(
          padding: EdgeInsets.only(left: 22*scale, top:75*scale),
          child: Transform.rotate(
            angle: 3.1415 * angle/ 360,
            child: Container(
              height: _heightShorts*scale, width: _widthShorts*scale,
              decoration: BoxDecoration(
                color: clubColors.primaryColor,
                borderRadius: BorderRadius.only(topLeft: Radius.circular(4*scale), bottomLeft: Radius.circular(4*scale)),
              ),
            ),
          ),
        ),

        //SHORTS Direito
        Padding(
          padding: EdgeInsets.only(left: 47*scale, top:75*scale),
          child: Transform.rotate(
            angle: -3.1415 * angle/ 360,
            child: Container(
              height: _heightShorts*scale, width: _widthShorts*scale,
              decoration: BoxDecoration(
                color: clubColors.primaryColor,
                borderRadius: BorderRadius.only(
                    topRight: Radius.circular(4*scale), bottomLeft: Radius.circular(4*scale),
                     bottomRight: Radius.circular(4*scale)
                ),
              ),
            ),
          ),
        ),

        //MEIAS Esquerda
        Padding(
          padding: EdgeInsets.only(left: 85*scale, top:75*scale),
          child: Transform.rotate(
            angle: -3.1415 * 0/ 360,
            child: Container(
              height: _heightSocks*scale, width: _widthSocks*scale,
              decoration: BoxDecoration(
                color: clubColors.secondColor,
                border: Border.all(color: clubColors.primaryColor, width: 0.5*scale),
                borderRadius: BorderRadius.only(
                    topRight: Radius.circular(4*scale), bottomLeft: Radius.circular(4*scale),
                    bottomRight: Radius.circular(4*scale)
                ),
              ),
            ),
          ),
        ),
        Padding(
          padding: EdgeInsets.only(left: 85*scale, top:108*scale),
          child: Transform.rotate(
            angle: -3.1415 * -30/ 360,
            child: Container(
              height: _heightSocksFeet*scale, width: _widthSocksFeet*scale,
              decoration: BoxDecoration(
                color: clubColors.secondColor,
                border: Border.all(color: clubColors.primaryColor, width: 0.5*scale),
                borderRadius: BorderRadius.only(
                    topRight: Radius.circular(3*scale),
                    bottomLeft: Radius.circular(3*scale),
                    bottomRight: Radius.circular(3*scale)
                ),
              ),
            ),
          ),
        ),

          //MEIA DIREITA
        Padding(
          padding: EdgeInsets.only(left: 100*scale, top:75*scale),
          child: Transform.rotate(
            angle: -3.1415 * 0/ 360,
            child: Container(
              height: _heightSocks*scale, width: _widthSocks*scale,
              decoration: BoxDecoration(
                color: clubColors.secondColor,
                border: Border.all(color: clubColors.primaryColor, width: 0.5*scale),
                borderRadius: BorderRadius.only(
                    topRight: Radius.circular(4*scale), bottomLeft: Radius.circular(4*scale),
                    bottomRight: Radius.circular(4*scale)
                ),
              ),
            ),
          ),
        ),
        Padding(
          padding: EdgeInsets.only(left: 100*scale, top:108*scale),
          child: Transform.rotate(
            angle: -3.1415 * -30/ 360,
            child: Container(
              height: _heightSocksFeet*scale, width: _widthSocksFeet*scale,
              decoration: BoxDecoration(
                color: clubColors.secondColor,
                border: Border.all(color: clubColors.primaryColor, width: 0.5*scale),
                borderRadius: BorderRadius.all(Radius.circular(3*scale)),
              ),
            ),
          ),
        ),

      ],
    );


  }
}