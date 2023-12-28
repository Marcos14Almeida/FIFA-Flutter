import 'package:csv/csv.dart';
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
    tempMap["Colors.cyanAccent"] = Colors.cyanAccent;
    tempMap["Colors.lightblue"] = Colors.lightBlueAccent;
    tempMap["Colors.blue"] = Colors.blueAccent;
    tempMap["Colors.bluestrong"] = const Color(0xFF1A41E2);
    tempMap["Colors.darkblue"] = const Color(0xFF001050);
    tempMap["Colors.lightgreen"] = Colors.lightGreenAccent;
    tempMap["Colors.green"] = Colors.green;
    tempMap["Colors.darkgreen"] = const Color(0xFF0B5700);
    tempMap["Colors.pink"] = const Color(0xFFFF8EF2);
    tempMap["Colors.purple"] = Colors.purple;
    tempMap["Colors.darkpurple"] = const Color(0xff4a054e);
    tempMap["Colors.grena"] = const Color(0xFF760025);
    tempMap["Colors.vinho"] = const Color(0xFF870000);
    tempMap["Colors.red"] = Colors.red;
    tempMap["Colors.orange"] = Colors.orange;
    tempMap["Colors.yellow"] = Colors.yellow;
    tempMap["Colors.gold"] = const Color(0xFF876A00);
    tempMap["Colors.brown"] = Colors.brown;
    tempMap["Colors.black"] = Colors.black;
    tempMap["Colors.grey"] = Colors.grey;
    tempMap["Colors.white"] = Colors.white;

    tempMap["Colors.transparent"] = Colors.transparent;

    tempMap["Colors.neutral1"] = Colors.grey;
    tempMap["Colors.neutral2"] = Colors.cyanAccent;

    try {
      return tempMap[color];
    }catch(e){
      return Colors.purple;
    }
  }

  ClubColors getColors(String clubName){

    try {

      Color primary = convertColors(globalClubDetails[clubName][11]);
      Color secondary = convertColors(globalClubDetails[clubName][12]);
      Color third = convertColors(globalClubDetails[clubName][13]);

      return ClubColors(primary, secondary, third);
    }catch(e) {
      return ClubColors(Colors.grey, Colors.cyanAccent, Colors.purple);
    }

    }

  ClubColors getColorsShortsSocks(String clubName){

    ClubColors officialColors = getColors(clubName);

    Color primary = officialColors.secondColor;
    Color secondary = officialColors.primaryColor;
    try {
      if(globalClubDetails[clubName][14]=='Colors.primary'){
        primary = officialColors.primaryColor;
      }
      if(globalClubDetails[clubName][14]=='Colors.secondary'){
        primary = officialColors.secondColor;
      }
      if(globalClubDetails[clubName][14]=='Colors.third'){
        primary = officialColors.thirdColor;
      }

      if(globalClubDetails[clubName][15]=='Colors.primary'){
        secondary = officialColors.primaryColor;
      }
      if(globalClubDetails[clubName][15]=='Colors.secondary'){
        secondary = officialColors.secondColor;
      }
      if(globalClubDetails[clubName][15]=='Colors.third'){
        secondary = officialColors.thirdColor;
      }

      return ClubColors(primary, secondary);
    }catch(e) {
      return ClubColors(Colors.grey, Colors.cyanAccent);
    }

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

  String getStadiumCapacityPointFormat(String clubName){
    int capacity = globalClubDetails[clubName][7];
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

  static Coordinates getCoordinate(String clubName, double lat, double long){

    try {
      return Coordinates(lat, long);
    }catch(e){
      return Coordinates(0, 0);
    }
  }
  static String getState(String clubName, String value){
    try {
      return value;
    }catch (e) {
      //print('ERROR GETSTATE: $clubName');
      return '';
    }
  }



  static double getOverall(String clubName, double value) {
    try {
      return value; // Some logic to retrieve rivals based on clubName
    } catch (e) {
      return 50.0;
    }
  }

  static List<String> getRivals(String clubName, List<String> value) {
    try {
      return value; // Some logic to retrieve rivals based on clubName
    } catch (e) {
      return [];
    }
  }

}