

import 'package:csv/csv.dart';
import 'package:fifa/global_variables.dart';
import 'package:flutter/services.dart';

class PlayerPastClubs{

  saveList() async{
    final String raw = await rootBundle.loadString('assets/csv/famous_players.csv');
    List listRows = const CsvToListConverter().convert(raw);

      for(int i=1; i < listRows.length; i++){
        String name = listRows[i][0];
        globalFamousPlayersHistory[name] = {};

        int minyear = 1947;
        for(int year=minyear; year <= anoInicial; year++){
          if(listRows[i][year-minyear+1] != 'retired'){
            globalFamousPlayersHistory[name][year] = listRows[i][year-minyear+1];
          }

      }
    }

  }

}