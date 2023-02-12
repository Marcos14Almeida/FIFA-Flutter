import 'package:fifa/classes/club.dart';
import 'package:fifa/classes/functions/name.dart';
import 'package:fifa/classes/image_class.dart';
import 'package:fifa/classes/my.dart';
import 'package:fifa/global_variables.dart';
import 'package:fifa/pages/historic/international/widgets/column.dart';
import 'package:fifa/pages/historic/international/widgets/list_clubs_view.dart';
import 'package:fifa/theme/custom_toast.dart';
import 'package:fifa/theme/textstyle.dart';
import 'package:fifa/theme/translation.dart';
import 'package:fifa/values/historic_champions/historic_champions.dart';
import 'package:fifa/values/images.dart';
import 'package:fifa/values/league_names.dart';
import 'package:fifa/widgets/back_button.dart';
import 'package:flutter/material.dart';


class InternationalHistoric extends StatefulWidget {
  //NECESSARY VARIABLES WHEN CALLING THIS CLASS
  const InternationalHistoric({Key? key}) : super(key: key);
  @override
  _InternationalHistoricState createState() => _InternationalHistoricState();
}

class _InternationalHistoricState extends State<InternationalHistoric> {

  List<String> possibleYears = [];
  String selectedYear = anoInicial.toString();
  String leagueInternational = LeagueOfficialNames().championsLeague;
  bool isLoaded = false;
  bool isMataMata = true;
  bool isList = false;

////////////////////////////////////////////////////////////////////////////
//                               INIT                                     //
////////////////////////////////////////////////////////////////////////////
  @override
  void initState() {
    initialSelectedYear();
    super.initState();
  }

  initialSelectedYear() {
    if (ano <= anoInicial) {
      selectedYear = (anoInicial - 1).toString();
    }
    isLoaded = true;
    setState(() {});
  }

////////////////////////////////////////////////////////////////////////////
//                               BUILD                                    //
////////////////////////////////////////////////////////////////////////////
  @override
  Widget build(BuildContext context) {
    possibleYears = [];
    Iterable<double> yearsKeys = mapChampions(leagueInternational).keys;
    for (int year = 0; year <mapChampions(leagueInternational).length; year++) {
      possibleYears.add((year + yearsKeys.last.toInt()).toString());
    }
    for (int year = anoInicial; year < ano; year++) {
      possibleYears.add(year.toString());
    }
    if (!possibleYears.contains(selectedYear)) {
      selectedYear = possibleYears.first;
    }
    return Scaffold(
        body: Container(
          decoration: Images().getWallpaperContainerDecoration(),
          child: isLoaded ? Column(
            children: [
              backButtonText(context, leagueInternational),

              !isList ?
              int.parse(selectedYear) >= anoInicial ?
              Expanded(
                child: SingleChildScrollView(
                  child: Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: Column(
                      children: [
                        isMataMata
                            ? internationalHistoricColumnSimulation(
                            int.parse(selectedYear), leagueInternational)
                            : groupsClassificationColumnSimulation(
                            int.parse(selectedYear), leagueInternational)

                      ],
                    ),
                  ),
                ),
              ) : wInternationalHistoricColumn(context, leagueInternational, int.parse(selectedYear))
                  : wListViewChampions(context, leagueInternational),


              Padding(
                padding: const EdgeInsets.symmetric(horizontal: 8.0),
                child: Row(
                  children: [
                    internationalLogoSelection(),
                    const SizedBox(width: 6),
                    !isList ? dropDownButton() : Container(),
                    const SizedBox(width: 6),
                    !isList && int.parse(selectedYear) >= anoInicial
                        ? phaseSelection()
                        : Container(),
                    inListForm(),
                  ],
                ),
              ),
              const SizedBox(height: 10),

            ],
          ) : Container(),

        )
    );
  }

////////////////////////////////////////////////////////////////////////////
//                               WIDGETS                                  //
////////////////////////////////////////////////////////////////////////////
  Widget dropDownButton() {
    return Container(
      decoration: BoxDecoration(
        color: Colors.white,
        //background_color color of dropdown button
        border: Border.all(color: Colors.black38, width: 2),
        //border of dropdown button
        borderRadius: BorderRadius.circular(10),
      ),
      child: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 10.0, vertical: 4),
        child: DropdownButton<String>(
          value: selectedYear,
          style: const TextStyle(fontSize: 18, color: Colors.white),
          iconEnabledColor: Colors.black,
          //Icon color
          underline: Container(),
          //empty line
          dropdownColor: Colors.white,
          items: possibleYears.map((value) {
            return DropdownMenuItem(
              child: Text(value, style: EstiloTextoPreto.text16),
              value: value,
            );
          }).toList(),
          onChanged: (value) {
            setState(() {});
            selectedYear = value.toString();
          },
        ),
      ),
    );
  }

  Widget phaseSelection() {
    return GestureDetector(
      onTap: () {
        isMataMata = !isMataMata;
        setState(() {});
      },
      child: Container(
        height: 60,
        decoration: BoxDecoration(
          color: Colors.white,
          //background_color color of dropdown button
          border: Border.all(color: Colors.black38, width: 2),
          //border of dropdown button
          borderRadius: BorderRadius.circular(10),
        ),
        padding: const EdgeInsets.all(4.0),
        alignment: Alignment.center,
        child: isMataMata ? Text(
            Translation(context).text.knockoutStage.toUpperCase(),
            style: EstiloTextoPreto.text16)
            : Text(Translation(context).text.groupStage.toUpperCase(),
            style: EstiloTextoPreto.text16),
      ),
    );
  }

  Widget internationalLogoSelection() {
    return Container(
      height: 60,
      decoration: BoxDecoration(
        color: Colors.white,
        //background_color color of dropdown button
        border: Border.all(color: Colors.black38, width: 2),
        //border of dropdown button
        borderRadius: BorderRadius.circular(10),
      ),
      padding: const EdgeInsets.all(3.0),
      child: Column(
        children: [
          //LIBERTADORES OU CHAMPIONS LEAGUE
          for(int i=0; i<internationalLeagueNames.length;i++)
           leagueInternational == internationalLeagueNames[i]
          ? GestureDetector(
              onTap: () {
                if(i==internationalLeagueNames.length-1){
                  changeLeague(internationalLeagueNames[0]);
                }else{
                  changeLeague(internationalLeagueNames[i+1]);
                }
              },
              child: Image.asset(FIFAImages().campeonatoLogo(internationalLeagueNames[i]), width: 50, height: 50)
          ) : Container(),
        ],
      ),
    );
  }

  changeLeague(String newLeagueInternational){
    leagueInternational = newLeagueInternational;
    if (isList) {
      customToast(Translation(context).text.loading);
    }
    setState(() {});
  }

  Widget inListForm() {
    return Container(
      height: 60,
      decoration: BoxDecoration(
        color: Colors.white,
        //background_color color of dropdown button
        border: Border.all(color: Colors.black38, width: 2),
        //border of dropdown button
        borderRadius: BorderRadius.circular(10),
      ),
      padding: const EdgeInsets.symmetric(horizontal: 10.0, vertical: 4),
      child: GestureDetector(
          onTap: () {
            customToast(Translation(context).text.loading);
            isList = !isList;
            setState(() {});
          },
          child: Center(child: Text(
              Translation(context).text.lista.toUpperCase(),
              textAlign: TextAlign.center, style: EstiloTextoPreto.text16))
      ),
    );
  }

  Widget internationalHistoricColumnSimulation(int ano,
      String internationalLeagueName) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.center,
      children: [

        Text(Name().showTranslated(context, Name().finale).toUpperCase(),
            style: EstiloTextoBranco.negrito14),
        for(int idaVolta = 0; idaVolta < 1; idaVolta++)
          for(int i = 0; i < 2; i += 2)
            internationalHistoricRow(
                internationalLeagueName, Name().finale, i, idaVolta, ano),

        const Text('', style: EstiloTextoBranco.text16),
        Text(Name().showTranslated(context, Name().semifinal).toUpperCase(),
            style: EstiloTextoBranco.negrito14),
        iteratePhase(ano, Name().semifinal, 4, internationalLeagueName),

        const Text('', style: EstiloTextoBranco.text16),
        Text(Name().showTranslated(context, Name().quartas).toUpperCase(),
            style: EstiloTextoBranco.negrito14),
        iteratePhase(ano, Name().quartas, 8, internationalLeagueName),

        const Text('', style: EstiloTextoBranco.text16),
        Text(Name().showTranslated(context, Name().oitavas).toUpperCase(),
            style: EstiloTextoBranco.negrito14),
        iteratePhase(ano, Name().oitavas, 16, internationalLeagueName),

        const Text('', style: EstiloTextoBranco.text16),
        const Text('', style: EstiloTextoBranco.text16),
      ],
    );
  }
  Widget iteratePhase(int ano, String phase, int iterations, String internationalLeagueName){
    return Column(
      children: [
        for(int idaVolta = 0; idaVolta < 2; idaVolta++)
          for(int i = 0; i < iterations; i += 2)
            internationalHistoricRow(
                internationalLeagueName, phase, i, idaVolta, ano
            ),
      ],
    );
  }

  Widget internationalHistoricRow(String internationalLeague, String phase,
      int position, int idaVolta, int ano) {
    Map map = globalHistoricInternationalGoalsAll[ano][internationalLeague][phase];

    int clubID1 = map.keys.elementAt(position);
    if (idaVolta == 1) {
      clubID1 = map.keys.elementAt(position + 1);
    }
    String clubName1 = Club(index: clubID1).name;
    String goal1 = globalHistoricInternationalGoalsAll[ano][internationalLeague][phase][clubID1][idaVolta]
        .toString();

    int clubID2 = map.keys.elementAt(position + 1);
    if (idaVolta == 1) {
      clubID2 = map.keys.elementAt(position);
    }
    String clubName2 = Club(index: clubID2).name;
    String goal2 = globalHistoricInternationalGoalsAll[ano][internationalLeague][phase][clubID2][idaVolta]
        .toString();

    return Padding(
      padding: const EdgeInsets.all(1.0),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Images().getEscudoWidget(clubName1, 25, 25),
          Expanded(
            child: Row(
              mainAxisAlignment: MainAxisAlignment.end,
              children: [
                Text(clubName1, style: EstiloTextoBranco.text14),
              ],
            ),
          ),
          Text(' $goal1 x $goal2 ', style: EstiloTextoBranco.text14),
          Expanded(
            child: Row(
              mainAxisAlignment: MainAxisAlignment.start,
              children: [
                Text('$clubName2 ', style: EstiloTextoBranco.text14),
              ],
            ),
          ),
          Images().getEscudoWidget(clubName2, 25, 25),
        ],
      ),
    );
  }

  Widget groupsClassificationColumnSimulation(int ano,
      String internationalLeagueName) {
    List clubsID = globalHistoricInternationalClassification[ano][internationalLeagueName];
    return Row(
      mainAxisAlignment: MainAxisAlignment.start,
      children: [
        Flexible(
          child: Column(
            children: [
              for(int i = 0; i < clubsID.length / 2; i++)
                Padding(
                  padding: EdgeInsets.only(top: i % 4 == 0 ? 16.0 : 0),
                  child: Column(
                    children: [
                      i % 4 == 0
                          ? Text(
                          '${Translation(context).text.group} ${(i / 4 + 1)
                              .floor()}', style: EstiloTextoBranco.text16)
                          : Container(),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.start,
                        children: [
                          Images().getEscudoWidget(
                              Club(index: clubsID[i]).name, 25, 25),
                          Container(
                            width: 140,
                            color: Club(index: clubsID[i]).name == My().clubName
                                ? Colors.teal
                                : i % 4 == 0 || i % 4 == 1 ? Colors.deepPurple
                                : Colors.transparent,
                            child: Text(Club(index: clubsID[i]).name,
                                style: EstiloTextoBranco.text16),
                          ),
                        ],
                      ),
                    ],
                  ),
                )

            ],
          ),
        ),

        Flexible(
          child: Column(
            children: [
              for(int i = (clubsID.length / 2).round(); i < clubsID.length; i++)
                Padding(
                  padding: EdgeInsets.only(top: i % 4 == 0 ? 16.0 : 0),
                  child: Column(
                    children: [
                      i % 4 == 0
                          ? Text(
                          '${Translation(context).text.group} ${(i / 4 + 1)
                              .floor()}', style: EstiloTextoBranco.text16)
                          : Container(),
                      Row(
                        children: [
                          Images().getEscudoWidget(
                              Club(index: clubsID[i]).name, 25, 25),
                          Container(
                            width: 140,
                            color: Club(index: clubsID[i]).name == My().clubName
                                ? Colors.teal
                                : i % 4 == 0 || i % 4 == 1 ? Colors.deepPurple
                                : Colors.transparent,
                            child: Text(Club(index: clubsID[i]).name,
                                style: EstiloTextoBranco.text16),
                          ),
                        ],
                      ),
                    ],
                  ),
                )

            ],
          ),
        ),
      ],
    );
  }





}