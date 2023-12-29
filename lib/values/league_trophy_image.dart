import 'package:fifa/values/league_names.dart';

String getTrophyImage(String leagueName){

  String trophyName = 'trophyliga';
  LeagueOfficialNames l = LeagueOfficialNames();

  Map trophiesMap = {
    l.inglaterra1: 'trophy_premier',
    l.inglaterra2: 'trophy_2division',
    l.inglaterra3: 'trophy_2division',
    l.italia1: 'trophy_italia',
    l.italia2: 'trophy_italia',
    l.espanha1: 'trophy_laliga',
    l.espanha2: 'trophy_laliga',
    l.alemanha1: 'trophy_bundesliga',
    l.alemanha2: 'trophy_bundesliga',
    l.franca1: 'trophy_ligue1',
    l.franca2: 'trophy_ligue1',
    l.portugal: 'trophy_portugal',
    l.holanda: 'trophy_netherlands',
    l.turquia: 'trophy_turquia',
    l.ligaEuropa: 'trophy_europaleague',
    l.lesteEuropeu: 'trophy_russia',
    l.brasil1: 'trophy_brasileirao',
    l.brasil2: 'trophy_brasilb',
    l.brasil3: 'trophy_brasilb',
    l.brasil4: 'trophy_brasilb',
    l.argentina: 'trophy_argentina',
    l.mercosul: 'trophy_sulamericana',
    l.colombia: 'trophy_liga',
    l.mexico: 'trophy_mexico',
    l.estadosUnidos: 'trophy_mls',
    l.asia: 'trophy_asia',
    l.africa: 'trophy_africa',
    l.outros: 'trophy_chile',
  };

  if(trophiesMap.containsKey(leagueName)){
    trophyName = trophiesMap[leagueName];
  }

  Map trophiesMap2 = {
    l.libertadores: 'trophy_libertadores',
    l.championsLeague: 'trophy_champions',
    l.europaLeagueOficial: 'trophy_europaleague',
    l.copaSulAmericana: 'trophy_sulamericana',
    l.resto: 'trophy_champions',

    l.mundial: 'trophy_mundial',

    l.englandCup: 'fa_cup',
    l.italyCup: 'italia_cup',
    l.germanyCup: 'germany_cup',
    l.brazilCup: 'brasil_cup',
  };
  if(trophiesMap2.containsKey(leagueName)){
    trophyName = trophiesMap2[leagueName];
  }

  return trophyName;
}