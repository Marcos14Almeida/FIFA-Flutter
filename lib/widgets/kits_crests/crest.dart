import 'package:fifa/values/club_details.dart';
import 'package:fifa/widgets/kits_crests/patterns.dart';
import 'package:flutter/material.dart';

class CrestWidgets{

  ClubDetails clubDetails = ClubDetails();
  ClubPattern clubPattern = ClubPattern();
  late ClubColors clubColors;

  late double _height;
  late double _width;

  CrestWidgets({required double size}){
    _height = size;
    _width = size;
  }

  getGradient(String clubName){
    String patternStr = clubDetails.getPattern(clubName);
    clubColors = clubDetails.getColors(clubName);
    LinearGradient pattern = clubPattern.getGradient(patternStr, clubColors);
    return pattern;
  }

  Widget getCrest(String clubName){
    try {
      LinearGradient pattern = getGradient(clubName);

      return crestCircular(clubName, pattern);
    }catch(e){
      clubColors = ClubColors(Colors.grey,Colors.white);
      LinearGradient pattern = clubPattern.getGradient(ClubPattern().solid, clubColors);
      return crestCircular(clubName, pattern);
    }
  }


  Widget crestRetangular(String clubName, LinearGradient pattern){
    return Container(
        height: _height,width: _width,
        decoration: BoxDecoration(
          gradient: pattern,
          borderRadius: BorderRadius.only(
            bottomLeft: Radius.circular(_height),
            bottomRight: Radius.circular(_height),
          ),
        ),
      child: Center(
          child: Text(clubName[0],
              style: TextStyle(
                fontFamily: 'Rajdhani',
                color: clubColors.secondColor,
                fontSize: _height*0.7,
              ))),
      );
  }

  Widget crestCircular(String clubName, LinearGradient pattern){

    //Text
    String name = clubName[0];
    if (clubName.contains(" ")){
      List split = clubName.split(" ");
      name = split[0][0] + split[1][0];
    }
    if (clubName.contains("Al-")){
      name = "A" + clubName.split("Al-")[1][0];
    }
    // Text Color
    Color textColor = clubColors.thirdColor;
    if(clubColors.thirdColor == Colors.transparent){
      textColor = Colors.white;
    }
    if(clubColors.primaryColor == Colors.white || clubColors.primaryColor == Colors.yellow){
      textColor = Colors.black;
    }
    if(clubColors.primaryColor == Colors.black){
      textColor = Colors.white;
    }

    return outborder(
      Container(
          height: _height, width: _width,
          decoration: BoxDecoration(
            shape: BoxShape.circle,
            gradient: pattern,
          ),
          child: Center(
              child: Text(name,
              style: TextStyle(
                fontFamily: 'Rajdhani',
                color: textColor,
                fontWeight: FontWeight.bold,
                fontSize: _height*0.7,
              ))),
        )
    );
  }

  Widget outborder(Widget childWidget){
    return Container(
        height: _height*1.1, width: _width*1.1,
        decoration: BoxDecoration(
          shape: BoxShape.circle,
          color: clubColors.secondColor,
        ),
        child: Align(
            alignment: Alignment.center,
            child: childWidget
        )
    );
  }


}