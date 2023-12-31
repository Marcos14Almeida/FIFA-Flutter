import 'package:fifa/classes/click_navigator/click_club.dart';
import 'package:fifa/classes/countries/countries_continents.dart';
import 'package:fifa/classes/image_class.dart';
import 'package:fifa/classes/team_details.dart';
import 'package:fifa/global_variables.dart';
import 'package:fifa/pages/club_profile/country_profile.dart';
import 'package:fifa/theme/colors.dart';
import 'package:fifa/theme/textstyle.dart';
import 'package:fifa/widgets/button/back_button.dart';
import 'package:flutter/material.dart';

class RankingFIFA extends StatefulWidget {
  const RankingFIFA({Key? key}) : super(key: key);

  @override
  State<RankingFIFA> createState() => _RankingFIFAState();
}

class _RankingFIFAState extends State<RankingFIFA> {

  List<NationalTeam> countries = [];
  List<NationalTeam> countriesAll = [];
  String continentChoosen = Continents().notExist;

  ////////////////////////////////////////////////////////////////////////////
//                               INIT                                     //
////////////////////////////////////////////////////////////////////////////
  @override
  void initState() {
    globalNationalTeamsDetails.forEach((key, value) {
      if(NationalTeam(name: key).fifaranking > 0){
        countriesAll.add(NationalTeam(name: key));
      }
    });
    for (int i=1; i<countriesAll.length; i++) {
      for (int k = 0; k < countriesAll.length - 1; k++) {
        if (countriesAll[i].fifaranking < countriesAll[k].fifaranking) {
          NationalTeam aux = countriesAll[i];
          countriesAll[i] = countriesAll[k];
          countriesAll[k] = aux;
        }
      }
    }

    countries = List.from(countriesAll);
    super.initState();
  }

  filterContinents(){
    countries = List.from(countriesAll);
    if(continentChoosen != Continents().notExist){
      countries.removeWhere((element) => element.continent != continentChoosen);
    }
  }
////////////////////////////////////////////////////////////////////////////
//                               BUILD                                    //
////////////////////////////////////////////////////////////////////////////
  @override
  Widget build(BuildContext context) {

    return Scaffold(
      body: Stack(
        children: [

          Images().getWallpaper(),

          Column(
            children: [
              backButtonText(context,'FIFA Ranking'),
              Expanded(
                  child: SingleChildScrollView(
                  child: countries.isNotEmpty
                      ? Column(
                    children: [
                      for(int i=0; i < countries.length; i++)
                        row(countries[i])

                    ],
                  )
                      : Container(),
                )
              ),

              selectContinent(),

            ],
          ),


        ],
      ),
    );
  }

////////////////////////////////////////////////////////////////////////////
//                               WIDGETS                                  //
////////////////////////////////////////////////////////////////////////////
Widget row(NationalTeam nationalTeam){
    return InkWell(
      onTap: (){
        navigatorPush(context, CountryProfile(nationalTeam: nationalTeam.name));
      },
      child: Container(
        padding: const EdgeInsets.all(8.0),
        color: AppColors().greyTransparent,
        child: Row(
          children: [
            SizedBox(width:30, child: Text(nationalTeam.fifaranking.toString() + "º",style: EstiloTextoBranco.text16)),
            const SizedBox(width: 16),
            Text(nationalTeam.overall.toString(),style: EstiloTextoBranco.text16),
            const SizedBox(width: 16),
            Images().getNationalCrest(nationalTeam.name, 30, 30),
            const SizedBox(width: 16),
            Text(nationalTeam.name,style: EstiloTextoBranco.text16),
          ],
        ),
      ),
    );
}
  Widget selectContinent(){
    return Container(
      color: AppColors().greyTransparent,
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
        children: [
          continentSelection(Continents().europa),
          continentSelection(Continents().americaSul),
          continentSelection(Continents().americaNorte),
          continentSelection(Continents().asia),
          continentSelection(Continents().africa),
          continentSelection(Continents().oceania),
        ],
      ),
    );
  }
  Widget continentSelection(String continentName){
    return GestureDetector(
      onTap: (){
        if (continentName == continentChoosen){
          continentChoosen = Continents().notExist;
        }else{
          continentChoosen = continentName;
        }
        filterContinents();
        setState((){});
      },
      child: Container(
        color: continentName == continentChoosen ? AppColors().green : Colors.transparent,
        child: Padding(
          padding: const EdgeInsets.all(4.0),
          child: Images().getContinentLogo(continentName),
        ),
      ),
    );
  }
}
