import 'package:csv/csv.dart';
import 'package:fifa/classes/countries/countries_continents.dart';
import 'package:fifa/global_variables.dart';
import 'package:fifa/widgets/kits_crests/patterns.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';


class ClubColors{

  late Color primaryColor;
  late Color secondColor;
  Color thirdColor = Colors.transparent;

  ClubColors(this.primaryColor,this.secondColor,[this.thirdColor = Colors.transparent]);

}

class Coordinates{

  late double latitude;
  late double longitude;

  Coordinates(this.latitude,this.longitude);

}

class ClubImage{
  //FUTURO
  late String clubImage;
  ClubImage(this.clubImage){
    if(clubImage.isNotEmpty){
      clubImage = 'assets/clubs/$clubImage.png';
    }else{
      //print('CLUBE NÃO TEM IMAGEM');
      clubImage = 'assets/clubs/generic.png';
    }
  }
}

class ClubDetails{


  getDataset() async{
    final String raw = await rootBundle.loadString('assets/csv/clubs_details.csv');
    List listRows = const CsvToListConverter().convert(raw);

    for(int i=0; i < listRows.length; i++){
      String name = listRows[i][2];
      globalClubDetails[name] = listRows[i];
    }

  }

  Color convertColors(String color){

    Map tempMap = {};
    tempMap["Colors.blue"] = const Color(0xFF1D41E2);
    tempMap["Colors.blueAccent"] = Colors.blueAccent;
    tempMap["Colors.darkblue"] = const Color(0xFF001050);
    tempMap["Colors.red"] = Colors.red;
    tempMap["Colors.grena"] = const Color(0xFF760025);
    tempMap["Colors.vinho"] = const Color(0xFF870000);
    tempMap["Colors.green"] = Colors.green;
    tempMap["Colors.darkgreen"] = const Color(0xFF0B5700);
    tempMap["Colors.darkpurple"] = const Color(0xff4a054e);
    tempMap["Colors.purple"] = Colors.purple;
    tempMap["Colors.pink"] = const Color(0xFFFF8EF2);
    tempMap["Colors.yellow"] = Colors.yellow;
    tempMap["Colors.orange"] = Colors.orange;
    tempMap["Colors.lightBlueAccent"] = Colors.lightBlueAccent;
    tempMap["Colors.lightGreenAccent"] = Colors.lightGreenAccent;
    tempMap["Colors.gold"] = const Color(0xFF876A00);
    tempMap["Colors.brown"] = Colors.brown;
    tempMap["Colors.black"] = Colors.black;
    tempMap["Colors.grey"] = Colors.grey;
    tempMap["Colors.white"] = Colors.white;
    tempMap["Colors.cyanAccent"] = Colors.cyanAccent;
    tempMap["Colors.transparent"] = Colors.transparent;
    tempMap["Colors.neutral1"] = Colors.green;
    tempMap["Colors.neutral2"] = Colors.cyanAccent;

    try {
      return tempMap[color];
    }catch(e){
      return Colors.purple;
    }
  }

  ClubColors getColors(String clubName){
    Color primary = convertColors(globalClubDetails[clubName][11]);
    Color secondary = convertColors(globalClubDetails[clubName][12]);
    Color third = convertColors(globalClubDetails[clubName][13]);

    return ClubColors(primary, secondary, third);

    }

  String getPattern(String clubName){
    ClubPattern pattern = ClubPattern();

    Map tempMap = {};
    tempMap["Patterns.solid"] = pattern.solid;
    tempMap["Patterns.solid2"] = pattern.solid2;
    tempMap["Patterns.solid3"] = pattern.solid3;
    tempMap["Patterns.monaco"] = pattern.monaco;
    tempMap["Patterns.sp"] = pattern.sp;
    tempMap["Patterns.divided"] = pattern.divided;
    tempMap["Patterns.dividedHor"] = pattern.dividedHor;
    tempMap["Patterns.stripesThin"] = pattern.stripesThin;
    tempMap["Patterns.stripes2"] = pattern.stripes2;
    tempMap["Patterns.stripes3"] = pattern.stripes3;
    tempMap["Patterns.stripes4"] = pattern.stripes4;
    tempMap["Patterns.stripes4"] = pattern.stripes4;
    tempMap["Patterns.horStripes2"] = pattern.horStripes2;
    tempMap["Patterns.horStripes3"] = pattern.horStripes3;
    tempMap["Patterns.horStripes4"] = pattern.horStripes4;
    tempMap["Patterns.stripesTricolor"] = pattern.stripesTricolor;
    tempMap["Patterns.diagonal"] = pattern.diagonal;
    tempMap["Patterns.diagonalInv"] = pattern.diagonalInv;
    tempMap["Patterns.sleeves"] = pattern.sleeves;
    tempMap["Patterns.horStripesThin"] = pattern.horStripesThin;
    tempMap["Patterns.oneVertStripe"] = pattern.oneVertStripe;
    tempMap["Patterns.oneHorStripe"] = pattern.oneHorStripe;

    return tempMap[globalClubDetails[clubName][10]] ?? pattern.solid;
  }
  Coordinates getCoordinate(String clubName){
    return Coordinates(globalClubDetails[clubName][8], globalClubDetails[clubName][9]);
  }
  String getStadium(String clubName){
    return globalClubDetails[clubName][6] ?? "";
  }
  int getStadiumCapacity(String clubName){
    return globalClubDetails[clubName][7] ?? 0;
  }
  String getStadiumCapacityPointFormat(String clubName){
    int capacity = getStadiumCapacity(clubName);
    if(capacity>=100000){
      return capacity.toString()[0]+capacity.toString()[1]+capacity.toString()[2]+'.'+capacity.toString()[3]+capacity.toString()[4]+capacity.toString()[5];
    }
    if(capacity>=10000){
      return capacity.toString()[0]+capacity.toString()[1]+'.'+capacity.toString()[2]+capacity.toString()[3]+capacity.toString()[4];
    }
    if(capacity>=1000){
      return capacity.toString()[0]+'.'+capacity.toString()[1]+capacity.toString()[2]+capacity.toString()[3];
    }
    return capacity.toString();
  }
  int getFoundationYear(String clubName){
    return globalClubDetails[clubName][4];
  }
  int getExtinto(String clubName){
    return globalClubDetails[clubName][5];
  }
  String getCountry(String clubName){
    return globalClubDetails[clubName][0];
  }
  String getState(String clubName){
    try {
      return globalClubDetails[clubName][1];
    }catch (e) {
      //print('ERROR GETSTATE: $clubName');
      return '';
    }
  }

  String getContinent(String clubName){
    return Continents().funcCountryContinents(getCountry(clubName));
  }

  double getOverall(String clubName){
    try {
      return globalClubDetails[clubName][3];
    }catch(e){
      return 50.0;
    }
  }
  List getRivals(String clubName){
    try {
      return globalClubDetails[clubName][15];
    }catch(e){
      return [];
    }
  }

}