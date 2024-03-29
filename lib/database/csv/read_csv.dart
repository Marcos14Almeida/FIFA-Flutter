import 'package:csv/csv.dart';
import 'package:fifa/classes/club.dart';
import 'package:fifa/classes/end_year_updates/update_data_year.dart';
import 'package:fifa/classes/player_basic.dart';
import 'package:fifa/classes/functions/random_players.dart';
import 'package:fifa/global_variables.dart';
import 'package:fifa/theme/custom_toast.dart';
import 'package:fifa/values/clubs_all_names_list.dart';
import 'package:flutter/services.dart';

class ReadCSV{
  int indexJog = 0;

  openCSV() async{

    customToast('Loading CSV Files...');
    resetData();
    resetOnLoadData();

    //READ CSV
    indexJog = 0;

    await readCSVfuncLine();
    customToast('Loading Custom Players');
    addRandomPlayers();
    reorganizeIndexIDs();
    customToast('Done');
  }
  readCSVfuncLine() async{
    List<List<dynamic>> _data = [];
    String filename ='assets/csv/global.csv';
    try{
      final _rawData   = await rootBundle.loadString(filename);
      List<List<dynamic>> _listData = const CsvToListConverter().convert(_rawData);
      _data = _listData;
    }catch(e){
      customToast('Arquivo Inexistente: '+filename);
    }

    List clubIDs = [];
    for(int line=1;line<_data.length;line++){
      if(_data[line].length>5) {
        String club = _data[line][0];
        String name = _data[line][1].toString();
        String position = _data[line][2].toString(); //VOLMCZAG =>VOL
        int age = int.parse(_data[line][3].toString().substring(0, 2));
        int overall = int.parse(_data[line][4].toString().substring(0, 2));
        String nationality = _data[line][5].toString();
        String imagePlayer = _data[line][6].toString();

        //REMOVE L form last character
        if (name[name.length - 1] == 'L') {
          name = name.substring(0, name.length - 1);
        }
        //CORRIGE A POSIÇÃO
        position = correctPlayerPostion(position);

        //VARIAVEIS GLOBAIS
        int clubIndex = clubsAllNameList.indexOf(club);
        if (clubIndex >= 0) { //se o clube existir e estiver cadastrado certo

          PlayerBasicInfo playerBasicInfo = PlayerBasicInfo();
          playerBasicInfo.clubID = clubIndex;
          playerBasicInfo.playerID = indexJog;
          playerBasicInfo.name = name;
          playerBasicInfo.position = position;
          playerBasicInfo.age = age;
          playerBasicInfo.overall = overall;
          playerBasicInfo.nationality = nationality;
          playerBasicInfo.imageUrl = imagePlayer;
          if (playerBasicInfo.imageUrl == "wiki/missing_player.jpg"
              || playerBasicInfo.imageUrl.contains("header/default.jpg?lm=1")) {
            playerBasicInfo.imageUrl = "/notfound_0_120.png";
          }
          playerBasicInfo.imageUrl = correctImageUrl(playerBasicInfo.imageUrl);


          limitNPlayers(clubIDs, playerBasicInfo, clubIndex);

          //test jogadores importados
          //if(club == "Boca Juniors 2003"){
          //print('JOGADOR: $indexJog ${name.padRight(22)} $position $overall ${nationality.padRight(16)} $imagePlayer       ...$club id:${clubIndex.toString()}');
          //}
        } else {
          //ERRO NA IMPORTAÇÃO DO TIME
          //Provavelmente falta adicionar o nome do clube em: clubsAllNameList
          //print('ERRO IMPORTAÇÃO JOGADOR: $name $club ${clubIndex.toString()}');
        }
      }
    }
  }

  limitNPlayers(List clubIDs,PlayerBasicInfo playerBasicInfo, int clubID){
    clubIDs.add(clubID);
    int nocurrences = clubIDs.map((element) => element == clubID ? 1 : 0).reduce((value, element) => value + element);
    if(nocurrences<34){
      playerBasicInfo.createNewPlayerToDatabase();
      indexJog++;
    }else{
      clubIDs.removeLast();
    }
  }

  reorganizeIndexIDs(){
    PlayerBasicInfo playerBasicInfo = PlayerBasicInfo();
    playerBasicInfo.reorganizeIndex(); //reorganiza IDs [0,2,3,4]-> [0,1,2,3]
  }

  addRandomPlayers(){
    List orderedList = List.from(globalJogadoresClubIndex);
    orderedList.sort();

    //Count players occurences per team
    Map map = {};
    for (var element in orderedList) {
      if(!map.containsKey(element)) {
        map[element] = 1;
      } else {
        map[element] +=1;
      }
    }
    //Cria um mapa só com times que tem menos que x jogadores
    map.removeWhere((key, value) => value>=21);

    //Acrescenta jogadores nesses times
    for (var clubID in map.keys) {
      try {
        Club club = Club(index: clubID);
        //print('TIME COM MENOS DE 21 JOGADORES: ${club.name}');
        //customToast('ADDING PLAYERS TO: ${club.name}');
        while (club.jogadores.length < 22) {
          AddRandomPlayer(club: club);
          club = Club(index: clubID);
        }
      }catch(e){
        //print(clube não existe);
      }
    }
  }

  correctImageUrl(String imagePlayer){
    if(imagePlayer.contains('wiki')){
      imagePlayer = imagePlayer.substring(5,);
      imagePlayer = 'https://cdn.soccerwiki.org/images/player/' + imagePlayer;
    }
    else if(imagePlayer.contains("header/")){
      imagePlayer = "https://img.a.transfermarkt.technology/portrait/" + imagePlayer;
    }
    else{
      imagePlayer = imagePlayer.substring(1,);
      imagePlayer = 'https://cdn.sofifa.net/players/' + imagePlayer;
    }
    return imagePlayer;
  }

  correctPlayerPostion(String position){

    //Se logo de cara aparecer uma dessas posições ja salva como prioridade
    if(position.contains('MD LD')){position='LD';return position;}
    if(position.contains('MD LE')){position='LE';return position;}
    if(position.contains('LD') && position.contains('MD')){position='LD';return position;}
    else if(position.contains('LE') && position.contains('MD')){position='LD';return position;}
    else if(position.contains('LE') && position.contains('ME')){position='LE';return position;}

    if(position.length>3){position = position.substring(0,3);}

    if(position.contains('GOL')){position='GOL';}
    else if(position.contains('LD')){position='LD';}
    else if(position.contains('ADD')){position='LD';}
    else if(position.contains('ADE')){position='LE';}
    else if(position.contains('LE')){position='LE';}
    else if(position.contains('ZAG')){position='ZAG';}
    else if(position.contains('VOL')){position='VOL';}
    else if(position.contains('MEI')){position='MEI';}
    else if(position.contains('MC')){position='MC';}
    else if(position.contains('ATA')){position='ATA';}
    else if(position.contains('SA')){position='ATA';}
    else if(position.contains('PD')){position='PD';}
    else if(position.contains('PE')){position='PE';}
    else if(position.contains('MD')){position='MD';}
    else if(position.contains('ME')){position='ME';}
    return position;
  }

}
