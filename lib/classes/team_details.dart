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

////////////////////////////////////////////////////////////////////////////////
////////////////////////////////////////////////////////////////////////////////
class TeamBasics{

  late String name;
  late String continent;
  late String country;
  late String state;
  late double overall;
  late String stadium;
  late int stadiumSize;
  late int foundationYear;
  late int extinctYear;
  late Color shorts;
  late Color socks;
  late List rivals;
  Coordinates coordinates = Coordinates(0, 0);
  String pattern = ClubPattern().solid;
  ClubColors clubColors = ClubColors(Colors.grey, Colors.cyanAccent, Colors.purple);


  getDataset() async{
    final String rawCountries = await rootBundle.loadString('assets/csv/national_countries_details.csv');
    List listRowsCountries = const CsvToListConverter().convert(rawCountries);
    for(int i=0; i < listRowsCountries.length; i++){
      String name = listRowsCountries[i][0];
      globalNationalTeamsDetails[name] = listRowsCountries[i];
      globalNationalTeamsDetails[name].insert(0, "");
      globalNationalTeamsDetails[name].insert(1, "");
    }

    final String raw = await rootBundle.loadString('assets/csv/clubs_details.csv');
    List listRows = const CsvToListConverter().convert(raw);

    for(int i=0; i < listRows.length; i++){
      String name = listRows[i][2];
      globalClubDetails[name] = listRows[i];
    }

  }

  String getStadiumstadiumSizePointFormat(){
    if(stadiumSize>=100000){
      return stadiumSize.toString()[0]+stadiumSize.toString()[1]+stadiumSize.toString()[2]+'.'+stadiumSize.toString()[3]+stadiumSize.toString()[4]+stadiumSize.toString()[5];
    }
    if(stadiumSize>=10000){
      return stadiumSize.toString()[0]+stadiumSize.toString()[1]+'.'+stadiumSize.toString()[2]+stadiumSize.toString()[3]+stadiumSize.toString()[4];
    }
    if(stadiumSize>=1000){
      return stadiumSize.toString()[0]+'.'+stadiumSize.toString()[1]+stadiumSize.toString()[2]+stadiumSize.toString()[3];
    }
    return stadiumSize.toString();
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

  String patternMapping(String patternName){
    ClubPattern pattern = ClubPattern();

    Map tempMap = {};
    tempMap[patternName] = pattern.solid;
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

    return tempMap[patternName];
  }

  Color getColorsShortsOrSocks(String clubName, String value){
    Map map = {};
    map['Colors.primary'] = clubColors.primaryColor;
    map['Colors.secondary'] = clubColors.secondColor;
    map['Colors.third'] = clubColors.thirdColor;

    return map[value];
  }

  ClubColors getColors(String primaryStr, String secondaryStr, String thirdStr){

    try {

      Color primary = convertColors(primaryStr);
      Color secondary = convertColors(secondaryStr);
      Color third = convertColors(secondaryStr);

      return ClubColors(primary, secondary, third);
    }catch(e) {
      return ClubColors(Colors.grey, Colors.cyanAccent, Colors.purple);
    }

  }

}

////////////////////////////////////////////////////////////////////////////////
////////////////////////////////////////////////////////////////////////////////
class ClubBasics extends TeamBasics {
  late List row;

  ClubBasics({required String name}){
    name = filterLegendsClubs(name);

    row = globalClubDetails[name];

    overall = row[3];
    rivals = row[15];
    country = row[0];
    continent = Continents().funcCountryContinents(country);
    state = row[1];
    foundationYear = row[4];
    extinctYear = row[5];
    stadium = row[6];
    stadiumSize = row[7];
    coordinates = Coordinates(row[8], row[9]);
    pattern = patternMapping(row[10]);
    clubColors = getColors(row[11], row[12], row[13]);
    shorts = getColorsShortsOrSocks(name, row[14]);
    socks = getColorsShortsOrSocks(name, row[15]);
  }

  String filterLegendsClubs(String clubName){
    //Flamengo 1981 -> same clubdetails as Flamengo
    RegExp regex = RegExp(r' \d{4}$');
    if (regex.hasMatch(clubName)){
      clubName = clubName.substring(0, clubName.length - 5);
    }

    // Rename some clubs
    if (clubName == "Dortmund"){
      clubName = "Borussia Dortmund";
    } if (clubName == "Man Utd"){
      clubName = "Manchester United";
    } if (clubName == "Bochum"){
      clubName = "Bochum";
    } if (clubName == "Be Quick"){
      clubName = "Be Quick 1887";
    } if (clubName == "PAS Lamia"){
      clubName = "PAS Lamia 1964";
    } if (clubName == "Radnicki"){
      clubName = "Radnicki 1923";
    }if (clubName == "Istra"){
      clubName = "Istra 1961";
    }if (clubName == "DAC"){
      clubName = "DAC 1904";
    }if (clubName == "Petrzalka"){
      clubName = "Petrzalka 1898";
    }if (clubName == "Kokand"){
      clubName = "Kokand 1912";
    }if (clubName == "Port-Louis"){
      clubName = "Port-Louis 2000";
    }

    return clubName;
  }


}

////////////////////////////////////////////////////////////////////////////////
////////////////////////////////////////////////////////////////////////////////
class NationalTeam extends TeamBasics {

  late List row;

  NationalTeam({required String name}){
    country = name;
    row = globalNationalTeamsDetails[name];
    overall = row[3];
    rivals = row[15];
    continent = Continents().funcCountryContinents(country);
    foundationYear = row[4];
    extinctYear = row[5];
    stadium = row[6];
    stadiumSize = row[7];
    coordinates = Coordinates(row[8], row[9]);
    pattern = patternMapping(row[10]);
    clubColors = getColors(row[11], row[12], row[13]);
    shorts = getColorsShortsOrSocks(name, row[14]);
    socks = getColorsShortsOrSocks(name, row[15]);
  }

}
