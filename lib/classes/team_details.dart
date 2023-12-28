import 'package:csv/csv.dart';
import 'package:fifa/classes/countries/countries_continents.dart';
import 'package:fifa/global_variables.dart';
import 'package:fifa/values/club_details.dart';
import 'package:fifa/widgets/kits_crests/patterns.dart';
import 'package:flutter/services.dart';

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
  late Color primary;
  late Color secondary;
  late Color third;
  late List rivals;
  Coordinates coordinates = Coordinates(0, 0);

  ClubPattern pattern = ClubPattern();

  TeamBasics({required this.name});

}

////////////////////////////////////////////////////////////////////////////////
////////////////////////////////////////////////////////////////////////////////
class ClubBasics extends TeamBasics {
  late List row;

  ClubBasics({required String name}) : super(name: name){
    name = filterLegendsClubs(name);

    row = globalClubDetails[name];

    overall = _getOverall();
    rivals = _getRivals();
    country = row[0];
    continent = Continents().funcCountryContinents(country);
    state = _getState();
    coordinates = ClubDetails.getCoordinate(name, row[8], row[9]);
    foundationYear = row[4];
    extinctYear = row[5];
    stadium = row[6];
    stadiumSize = row[7];

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

  getDataset() async{

    final String raw = await rootBundle.loadString('assets/csv/clubs_details.csv');
    List listRows = const CsvToListConverter().convert(raw);

    for(int i=0; i < listRows.length; i++){
      String name = listRows[i][2];
      globalClubDetails[name] = listRows[i];
    }

  }
  String _getState() {
    return ClubDetails.getState(name, row[1]); // Use helper method
  }
  double _getOverall() {
    return ClubDetails.getOverall(name, row[3]); // Use helper method
  }
  List<String> _getRivals() {
    return ClubDetails.getRivals(name, row[15]); // Use helper method
  }

}

////////////////////////////////////////////////////////////////////////////////
////////////////////////////////////////////////////////////////////////////////
class NationalTeam extends TeamBasics {

  late List row;
  NationalTeam({required String name}) : super(name: name){
    country = name;
    row = globalNationalTeamsDetails[name];
    overall = _getOverall();
    rivals = _getRivals();
    continent = Continents().funcCountryContinents(country);
    foundationYear = row[4];
    extinctYear = row[5];
    stadium = row[6];
    stadiumSize = row[7];
  }


  getDataset() async{
    final String rawCountries = await rootBundle.loadString('assets/csv/national_countries_details.csv');
    List listRowsCountries = const CsvToListConverter().convert(rawCountries);
    for(int i=0; i < listRowsCountries.length; i++){
      String name = listRowsCountries[i][0];
      globalNationalTeamsDetails[name] = listRowsCountries[i];
      globalNationalTeamsDetails[name].insert(0, "");
      globalNationalTeamsDetails[name].insert(1, "");
    }
  }

  double _getOverall() {
    return ClubDetails.getOverall(name, row[3]); // Use helper method
  }
  List<String> _getRivals() {
    return ClubDetails.getRivals(name, row[15]); // Use helper method
  }
}
