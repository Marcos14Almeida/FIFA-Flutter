import 'package:fifa/classes/classification.dart';
import 'package:fifa/classes/club.dart';
import 'package:fifa/classes/historic.dart';
import 'package:fifa/classes/historic_champions_league.dart';
import 'package:fifa/functions/countries_continents.dart';
import 'package:fifa/global_variables.dart';
import 'package:fifa/values/historic_champions/historic_champions.dart';
import 'package:fifa/values/league_divisions.dart';
import 'package:fifa/values/league_names.dart';

class ClassificationData {
  ClassificationData(this.year, this.position);

  final double year;
  final int position;
}

class DataGraphics{

  late String leagueName;

  int nTitulos = 0;
  int n2ndivision = 0;
  int g4Years = 0;
  int g10Years = 0;
  int g20Years = 0;
  int averagePosition5years = 0;
  int averagePosition10years = 0;
  int averagePositionTotal = 0;
  int currentPosition = 0;
  double pointsNational = 0;
  List<ClassificationData> data=[];
  //ESTADUAL
  List<ClassificationData> dataEstadual=[];
  int nTitulosEstadual = 0;
  int finalsEstadual = 0;
  double pointsEstadual = 0;

  //COPA
  List<ClassificationData> dataCups=[];
  int nTitulosCups = 0;
  int finalsCups = 0;
  double pointsCups = 0;

  //INTERNATIONAL
  List<ClassificationData> dataInternational=[];
  int nTitulosInternational = 0;
  int finalsInternational = 0;
  int semifinalsInternational = 0;
  int round8International = 0;
  int round16International = 0;
  int participationInternational = 0;
  double pointsInternational = 0;

  //MUNDIAL
  List<ClassificationData> dataMundial=[];
  int nTitulosMundial = 0;
  int finalsMundial = 0;
  double pointsmundial = 0;
  //TOTAL
  double pointsTotal = 0;

  getDataNotPlayabale(String clubName, String country, [String state = '']){
    //GET LEAGUE NAME
    Map leagueNationality = getLeagueNationalityMap();
    leagueNationality.forEach((key, value) {
      if(value==country){
        leagueName = key;
      }
    });
    //GET CONTINENT NAME
    String continent = Continents().funcCountryContinents(country);

    String internationalLeagueName = getInternationalLeagueFromContinent(continent);

    //historico de campeoes ligas
    defineHistoricClassification(clubName,leagueName);

    averagePosition10years = averagePositionCount(data.take(10).toList());
    averagePosition5years = averagePositionCount(data.take(5).toList());
    averagePositionTotal = averagePositionCount(data.toList());

    calculatePoints();
    //historico estadual
    if(state.isNotEmpty) {
      defineHistoricEstadual(clubName, state);
      participationsEstadual();
    }
    //historico copas
    defineHistoricCups(clubName);
    participationsCups();


    //historico internacional
    defineHistoricInternational(clubName,internationalLeagueName);
    participationsInternational();
    calculatePointsInternational();

    //historico mundial
    defineHistoricMundial(clubName);
    pointsTotal = pointsNational+pointsInternational+pointsmundial;
  }
  getData(Club club){
    //Posição Ano Atual
    currentPosition = Classification(leagueIndex: club.leagueID).getClubPosition(club.index);
    //novas temporadas ligas
    defineSimulationClassification(club);
    //historico de campeoes ligas
    defineHistoricClassification(club.name,club.leagueName);

    averagePosition10years = averagePositionCount(data.take(10).toList());
    averagePosition5years = averagePositionCount(data.take(5).toList());
    averagePositionTotal = averagePositionCount(data.toList());

    calculatePoints();

    //historico internacional
    defineSimulationClassificationInternational(club);
    defineHistoricInternational(club.name,club.internationalLeagueName);
    participationsInternational();
    calculatePointsInternational();

    //historico mundial
    defineHistoricMundial(club.name);
    pointsTotal = pointsNational+pointsInternational+pointsmundial;

  }


  defineSimulationClassification(Club club){
    //Posição anos simulados
    for(double year=ano-1; year>=anoInicial; year--){
      try {
        int position = HistoricFunctions().funcHistoricListFromClubID(year.toInt(), club.leagueName, club.index);
        data.add(ClassificationData(year, position));
        addTitlesCount(position);
        addGxCount(position);
        add2ndDivisionCount(position);
      }catch(e){
        data.add(ClassificationData(year, 21));
        add2ndDivisionCount(21);
      }
    }
  }
  defineHistoricClassification(String clubName, String leagueName){

    //NOME DAS DIVISÕES
    List<String> divisionLeagueNames = Divisions().leagueDivisionsStructure(leagueName);
    //MAPA COM O HISTÓRICO DE CLASSIFICAÇÃO DE CADA DIVISÃO
    List<Map<double,dynamic>> listDivisionsHistoricResults = [];
    for( String division in divisionLeagueNames){
        listDivisionsHistoricResults.add(mapChampions(division));
    }

    //PARA CADA ANO VERIFICA SE O TIME PERTENCE A AQUELA DIVISÃO
    for(double year in listDivisionsHistoricResults.first.keys) {
      bool yearSet = false;
      int divisionNumber = 0;
      for (Map<double,dynamic> divisionMapResults in listDivisionsHistoricResults) {
        if (!yearSet) {
          divisionNumber++;
          try {
            if (divisionMapResults[year].contains(clubName)) {
              int position = divisionMapResults[year].indexOf(clubName) + 1 + (divisionNumber - 1) * 20;
              data.add(ClassificationData(year, position));
              addTitlesCount(position);
              addGxCount(position);
              add2ndDivisionCount(position);
              yearSet = true;
            }
        }catch(e){
            //print('divisão sem informações do campeonato naquele ano');
        }
      }
        //Se após checar todas as divisões ele ainda nao tem classificação
        if(!yearSet && listDivisionsHistoricResults.last == divisionMapResults){
          //SE A ÚLTIMA DIVISÃO TIVER UM MAPA COM O HISTÓRICO DE RESULTADOS
          if(listDivisionsHistoricResults.last.isNotEmpty){
            data.add(ClassificationData(year, listDivisionsHistoricResults.length*20+1));
            add2ndDivisionCount(listDivisionsHistoricResults.length*20+1);
            yearSet = true;
          }else{
            data.add(ClassificationData(year, (listDivisionsHistoricResults.length-1)*20+1));
            add2ndDivisionCount((listDivisionsHistoricResults.length-1)*20+1);
            yearSet = true;
          }
        }
    }
    }


    //SE NÃO TEM DADOS
    ifHistoricDataDontExist(data);
  }

  ifHistoricDataDontExist(List<ClassificationData> data){
    //CRIA UM ARRAY COM VALORES NEUTROS PARA MOSTRAR ALGUM GRAFICO
    if(data.isEmpty){
      for(double year=1; year<10; year++) {
        data.add(ClassificationData(anoInicial - year, 21));
      }
    }
  }

  addTitlesCount(int position){
    if(position == 1){
      nTitulos ++;
    }
  }

  add2ndDivisionCount(int position){
    if(position >= 21){
      n2ndivision ++;
    }
  }

  addGxCount(int position){
    if(position <= 4){
      g4Years ++;
    }
    if(position <= 10){
      g10Years ++;
    }
    if(position <= 20){
      g20Years ++;
    }
  }

  int averagePositionCount(List<ClassificationData> dataLastxYears){
    int averagePosition = 0;
    for(ClassificationData data in dataLastxYears){
      averagePosition += data.position;
    }
    averagePosition = (averagePosition/dataLastxYears.length).round();

    return averagePosition;
  }

  calculatePoints(){
    for(ClassificationData classificationData in data){
      pointsNational += classificationData.position;
    }
    //Compensa anos sem data
    if(data.length<60){
      int yearsWithoutData = 60- data.length ;
      pointsNational += 25 * yearsWithoutData;
    }

    pointsNational = 3000 - pointsNational;
  }

  /////////////////////////////////////////////////////////////////////////////
  // ESTADUAL
  ////////////////////////////////////////////////////////////////////////////
  void defineHistoricEstadual(String clubName, String state){
    String stateLeague = getLeagueNationalityMap().keys.firstWhere((k) => getLeagueNationalityMap()[k] == state, orElse: () => null);

    //para cada ano
    for(var keyYear in mapChampions(stateLeague).keys) {
      List classificationNames = mapChampions(stateLeague)[keyYear];
      //verifica se naquele ano tem o time
      int position = 10;
      if(classificationNames.contains(clubName)){
        position = classificationNames.indexOf(clubName) + 1;
      }
      dataEstadual.add(ClassificationData(keyYear, position));
    }

  }

  void participationsEstadual(){
    for(ClassificationData classificationData in dataEstadual) {
      if (classificationData.position == 1) {
        nTitulosEstadual++;
      }
      if (classificationData.position <= 2) {
        finalsEstadual++;
      }
    }
  }
  /////////////////////////////////////////////////////////////////////////////
  // COPAS
  ////////////////////////////////////////////////////////////////////////////
  void defineHistoricCups(String clubName){
    String cup = getCup(leagueName);

    //para cada ano
    for(var keyYear in mapChampions(cup).keys) {
      List classificationNames = mapChampions(cup)[keyYear];
      //verifica se naquele ano tem o time
      int position = 10;
      if(classificationNames.contains(clubName)){
        position = classificationNames.indexOf(clubName) + 1;
      }
      dataCups.add(ClassificationData(keyYear, position));
    }

  }
  void participationsCups(){
    for(ClassificationData classificationData in dataCups) {
      if (classificationData.position == 1) {
        nTitulosCups++;
      }
      if (classificationData.position <= 2) {
        finalsCups++;
      }
    }
  }
  /////////////////////////////////////////////////////////////////////////////
  // INTERNATIONAL
  ////////////////////////////////////////////////////////////////////////////
  defineSimulationClassificationInternational(Club club){
    for(int i=ano-1; i>=anoInicial; i--){
      String internationalLeague = club.internationalLeagueName;
      List finalClassificationIDs = HistoricChampionsLeague().get32finalClassificationIDs(i, internationalLeague);

      //verifica se naquele ano tem o time
      int position = 32;
      if(finalClassificationIDs.contains(club.index)){
        position = finalClassificationIDs.indexOf(club.index) + 1;
      }
      dataInternational.add(ClassificationData(i.toDouble(), position));
    }
  }

  defineHistoricInternational(String clubName, String internationalLeagueName){

    //para cada ano
    for(var keyYear in mapChampions(internationalLeagueName).keys) {
      List classificationNames = mapChampions(internationalLeagueName)[keyYear];
      //verifica se naquele ano tem o time
      int position = 32;
      if(classificationNames.contains(clubName)){
        position = classificationNames.indexOf(clubName) + 1;
      }
      dataInternational.add(ClassificationData(keyYear, position));
    }

  }

  participationsInternational(){
    for(ClassificationData classificationData in dataInternational){
      if(classificationData.position<32){
        participationInternational++;
      }
      if(classificationData.position==1){
        nTitulosInternational++;
      }
      if(classificationData.position<=2){
        finalsInternational++;
      }
      if(classificationData.position<=4){
        semifinalsInternational++;
      }
      if(classificationData.position<=8){
        round8International++;
      }
      if(classificationData.position<=16){
        round16International++;
      }
    }
  }

  calculatePointsInternational(){
    pointsInternational = 0;
      for(ClassificationData classificationData in dataInternational){
        pointsInternational += classificationData.position*2;
        pointsInternational = addWeight(pointsInternational,classificationData.position, 1, 25);
        pointsInternational = addWeight(pointsInternational,classificationData.position, 4, 10);
        pointsInternational = addWeight(pointsInternational,classificationData.position, 8, 5);
        pointsInternational = addWeight(pointsInternational,classificationData.position, 16, 2);
      }
      //Compensa anos sem data
      if(data.length<65){
        int yearsWithoutData = 65 - dataInternational.length ;
        pointsInternational += 65 * yearsWithoutData;
      }

      pointsInternational = 9000 - pointsInternational;
  }
  double addWeight(double points, int positionData, int position, int weight){
    if(positionData<=position){
      return points - weight;
    }
    return points;
  }


/////////////////////////////////////////////////////////////////////////////
// MUNDIAL
////////////////////////////////////////////////////////////////////////////
  defineHistoricMundial(String clubName){
    pointsmundial = 0;
    //para cada ano
    for(var keyYear in mapChampions(LeagueOfficialNames().mundial).keys) {
      List classificationNames = mapChampions(LeagueOfficialNames().mundial)[keyYear];
      //verifica se naquele ano tem o time

      int position = 8;
      if(classificationNames.contains(clubName)){
        position = classificationNames.indexOf(clubName) + 1;
        if(position==1){
          nTitulosMundial +=1;
          pointsmundial += 200;
        }
        if(position<=2){
          finalsMundial +=1;
          pointsmundial += 50;
        }
      }
      dataMundial.add(ClassificationData(keyYear, position));
    }

  }
}
