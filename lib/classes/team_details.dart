import 'package:csv/csv.dart';
import 'package:fifa/classes/countries/countries_continents.dart';
import 'package:fifa/global_variables.dart';
import 'package:fifa/widgets/kits_crests/patterns.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';

class DataFrame {
  late List<String> columns;
  late List<List<dynamic>> data;

  DataFrame({required this.columns, required this.data});

  // Factory method to create a DataFrame from a list of lists
  factory DataFrame.fromList(List<List<dynamic>> dataList, List<String> columnNames) {
    return DataFrame(columns: columnNames, data: dataList);
  }

  // Method to filter rows based on a condition in a specific column
  DataFrame filterByColumn(String columnName, dynamic value) {
    List<List<dynamic>> filteredData = data.where((row) => row[columns.indexOf(columnName)] == value).toList();
    return DataFrame(columns: columns, data: filteredData);
  }

// Other methods for data manipulation can be added here
}

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


    final String raw2 = await rootBundle.loadString('assets/csv/leagues.csv');
    List<List<dynamic>> listLeagues = const CsvToListConverter().convert(raw2);

    // Column names for the DataFrame
    List<String> columnNames = ['continent', 'country', 'league', 'division', 'type'];
    // Creating a DataFrame instance from the list of lists
    globalLeagues = DataFrame.fromList(listLeagues, columnNames);

    final String rawCountries = await rootBundle.loadString('assets/csv/national_countries_details.csv');
    List listRowsCountries = const CsvToListConverter().convert(rawCountries);
    for(int i=1; i < listRowsCountries.length; i++){
      String name = listRowsCountries[i][1];
      globalNationalTeamsDetails[name] = listRowsCountries[i];
      globalNationalTeamsDetails[name].insert(0, "");
    }

    final String rawFIFA = await rootBundle.loadString('assets/csv/fifaranking.csv');
    List listRowsFIFA = const CsvToListConverter().convert(rawFIFA);

    for(int i=1; i < listRowsFIFA.length; i++){
      String name = listRowsFIFA[i][1];
      if (globalNationalTeamsDetails.containsKey(name)){
        globalNationalTeamsDetails[name].insert(17, listRowsFIFA[i][2]);
      }
    }

    final String raw = await rootBundle.loadString('assets/csv/clubs_details.csv');
    List listRows = const CsvToListConverter().convert(raw);

    for(int i=1; i < listRows.length; i++){
      String name = listRows[i][2];
      globalClubDetails[name] = listRows[i];
    }



  }
  double _getOverall(var ovr){
    try{
      return ovr;
    }catch(e){
      return 50.0;
    }
  }
  Coordinates _getCoordinates(var lat, var lon){
    try{
      return Coordinates(lat, lon);
    }catch(e){
      return Coordinates(0, 0);
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
    tempMap["Colors.gold"] = Colors.amber;
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
      return ClubColors(Colors.grey, Colors.cyanAccent, Colors.white);
    }

  }

  getClass(String name){
    if (globalNationalTeamsDetails.containsKey(name)){
      return NationalTeam(name: name);
    }else{
      return ClubBasics(name: name);
    }
  }

}

////////////////////////////////////////////////////////////////////////////////
////////////////////////////////////////////////////////////////////////////////
class ClubBasics extends TeamBasics {
  late List row;
  late String league;
  late String cup;
  late List international;

  ClubBasics({required String name}){
    this.name = filterLegendsClubs(name);

    if (globalClubDetails.containsKey(name)) {
      row = globalClubDetails[name];

      country = row[0];
      continent = Continents().funcCountryContinents(country);
      state = row[1];
      overall = _getOverall(row[3]);
      foundationYear = row[4];
      extinctYear = row[5];
      stadium = row[6];
      stadiumSize = row[7];
      coordinates = _getCoordinates(row[8], row[9]);
      pattern = patternMapping(row[10]);
      clubColors = getColors(row[11], row[12], row[13]);
      shorts = getColorsShortsOrSocks(name, row[14]);
      socks = getColorsShortsOrSocks(name, row[15]);
      rivals = row[16].split(",");

      DataFrame filteredDf = globalLeagues.filterByColumn('country', country);
      try{
        DataFrame filteredDf2 = filteredDf.filterByColumn('type', 'League');
        filteredDf2 = filteredDf2.filterByColumn('division', 1);
        league = filteredDf2.data[0][4];
      }catch(e){
        league = "";
      }
      try{
        DataFrame filteredDf3 = filteredDf.filterByColumn('type', 'Cup');
        cup = filteredDf3.data[0][4];
      }catch(e){
        cup = "";
      }
      try{
        DataFrame filteredDf4 = globalLeagues.filterByColumn('type', 'Continental');
        filteredDf4 = filteredDf4.filterByColumn('continent', continent);
        international = [];
        for (List row in filteredDf4.data) {
          international.add(row[4]);
        }
      }catch(e){
        international = [];
      }
    }else{
      print("ERROR in Team Details:");
      print(name);
    }
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
  late String capital;
  int fifaranking = 0;

  NationalTeam({required String name}){
    this.name = name;
    if (globalNationalTeamsDetails.containsKey(name)) {
      row = globalNationalTeamsDetails[name];
      country = name;
      continent = Continents().funcCountryContinents(country);
      capital = row[1];
      overall = _getOverall(row[3]);
      foundationYear = row[4];
      extinctYear = row[5];
      stadium = row[6];
      stadiumSize = row[7];
      coordinates = _getCoordinates(row[8], row[9]);
      pattern = patternMapping(row[10]);
      clubColors = getColors(row[11], row[12], row[13]);
      shorts = getColorsShortsOrSocks(name, row[14]);
      socks = getColorsShortsOrSocks(name, row[15]);
      rivals = row[16].split(",");
      if (row.length>=18) {
        fifaranking = _getFIFARanking(row[17]);
      }
    }
  }

  int _getFIFARanking(value){
    try{
      return value;
    }catch(e){
      return 0;
    }
  }
}