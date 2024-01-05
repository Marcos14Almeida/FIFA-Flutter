import 'package:fifa/classes/click_navigator/click_club.dart';
import 'package:fifa/classes/countries/countries_continents.dart';
import 'package:fifa/classes/countries/flags_list.dart';
import 'package:fifa/classes/countries/words.dart';
import 'package:fifa/classes/data_graphics.dart';
import 'package:fifa/classes/image_class.dart';
import 'package:fifa/classes/team_details.dart';
import 'package:fifa/global_variables.dart';
import 'package:fifa/pages/club_profile/all_infos_club_not_playable.dart';
import 'package:fifa/pages/historic/leagues_historic.dart';
import 'package:fifa/pages/historic/real_classification.dart';
import 'package:fifa/theme/decoration/black_decoration.dart';
import 'package:fifa/theme/textstyle.dart';
import 'package:fifa/values/league_names.dart';
import 'package:fifa/widgets/button/back_button.dart';
import 'package:fifa/widgets/button/pressable_button.dart';
import 'package:fifa/widgets/league_selection_row.dart';
import 'package:fifa/widgets/stars.dart';
import 'package:flutter/material.dart';

class MapListAllClubs extends StatefulWidget {
  final String continent;
  const MapListAllClubs({Key? key, required this.continent}) : super(key: key);

  @override
  State<MapListAllClubs> createState() => _MapListAllClubsState();
}

class _MapListAllClubsState extends State<MapListAllClubs> {

  List<String> countryOptions = [];
  Iterable showList = [];
  List<ClubBasics> clubBasicsList = [];
  String selectedCountry = Words.country.brazil;

////////////////////////////////////////////////////////////////////////////
//                               INIT                                     //
////////////////////////////////////////////////////////////////////////////
  @override
  void initState() {
    getFlagsList();
    filterClubs();
    super.initState();
  }
  getFlagsList(){
    Continents continents = Continents();
    globalClubDetails.forEach((clubName, value) {
      String countryName = ClubBasics(name: clubName).country;

      if(!countryOptions.contains(countryName)){
        if(continents.funcCountryContinents(countryName) == widget.continent){
          countryOptions.add(countryName);
        }
      }
    });
    countryOptions.sort();
    selectedCountry = countryOptions.first;
    setState((){});

  }

  Future<DataGraphics> loadClubData(String clubName) async{
    DataGraphics dataGraphics = DataGraphics();
    await dataGraphics.getDataNotPlayabale(clubName);
    return dataGraphics;
  }
  filterClubs(){
    //Filtra os clubes do país
    Iterable keysIterable = globalClubDetails.keys;
    Iterable showList = keysIterable.where((clubName) => selectedCountry == ClubBasics(name: clubName).country);
    showList = showList.where((clubName) => ClubBasics(name: clubName).foundationYear > 0);

    clubBasicsList = [];
    for (String clubName in showList) {
      clubBasicsList.add(ClubBasics(name: clubName));
    }
    setState((){});
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

              //APPBAR
              Container(
                color: appBarMyClubColor(),
                child: appBarButtons(clubBasicsList),
              ),

              Expanded(
                child: Scrollbar(
                  child: FutureBuilder<List<DataGraphics>>(
                    future: Future.wait(clubBasicsList.map((club) => loadClubData(club.name))),
                    builder: (context, snapshot) {
                      if (snapshot.connectionState == ConnectionState.waiting) {
                        return const Center(child: CircularProgressIndicator());
                      } else if (snapshot.hasError) {
                        return Text('Error: ${snapshot.error}');
                      } else {
                        List<DataGraphics> dataGraphicsList = snapshot.data!;
                        return ListView.builder(
                          padding: EdgeInsets.zero,
                          itemCount: dataGraphicsList.length,
                          itemBuilder: (context, index) {
                            DataGraphics dataGraphics = dataGraphicsList[index];
                            // Create your custom widget to display the club data
                            return clubRow(clubBasicsList.elementAt(index), dataGraphics);
                          },
                        );
                      }
                    },
                  ),
                ),
              ),

              selectCountryRow(),

            ],
          ),
        ],
      ),
    );
  }
////////////////////////////////////////////////////////////////////////////
//                               WIDGETS                                  //
////////////////////////////////////////////////////////////////////////////
  Widget appBarButtons(Iterable showList){
    return Row(
      children: [

        backButtonText(context, 'Lista de Clubes'),

        const Spacer(),

        Padding(
          padding: const EdgeInsets.only(top: 20),
          child: GestureDetector(
            onTap:(){
              navigatorPush(context, RealClassificationPage(chosenCountryName: selectedCountry));
            },
            child: const Icon(Icons.table_chart_outlined,color:Colors.white,size: 32),
          ),
        ),
        Padding(
          padding: const EdgeInsets.only(top:20.0),
          child: IconButton(onPressed: (){
            Map map = getLeagueNationalityMap();
            String chosenLeagueName = map.keys.firstWhere((k) => map[k] == selectedCountry, orElse: () => null);
            navigatorPush(context, HistoricLeague(chosenLeagueName: chosenLeagueName));
          }, icon: const Icon(Icons.history,color: Colors.white,size: 32,)),
        ),
        Padding(padding:const EdgeInsets.only(top:18),
            child: Text(showList.length.toString(),style: EstiloTextoBranco.text20)),
        const SizedBox(width: 8),
      ],
    );
  }
  Widget clubRow(ClubBasics clubBasics, DataGraphics dataGraphics){


    return PressableButton(
      onTap: (){
        navigatorPush(context, ClubProfileNotPlayable(clubName: clubBasics.name));
        },
      child: Container(
        padding: const EdgeInsets.symmetric(horizontal: 8),
        margin: const EdgeInsets.symmetric(vertical: 4),
        color: clubBasics.clubColors.primaryColor.withOpacity(0.2),
        child: Stack(
              children: [

                //LOGO DE FUNDO OPACA
                SizedBox(
                  height: 108,width: 300,
                  child: Opacity(
                    opacity: 0.1,
                    child: AspectRatio(
                      aspectRatio: 350 / 451,
                      child: Container(
                        decoration: BoxDecoration(
                            image: DecorationImage(
                              fit: BoxFit.fitWidth,
                              alignment: FractionalOffset.center,
                              image: AssetImage(Images().getEscudo(clubBasics.name)),
                            )
                        ),
                      ),
                    ),
                  ),
                ),


                Padding(
                  padding: const EdgeInsets.symmetric(vertical: 4),
                  child: Row(
                    children: [
                      Expanded(
                        child: Column(
                          children: [
                            Container(
                              padding: const EdgeInsets.only(left: 16.0),
                              child: Row(
                                children: [
                                  Column(
                                    children: [
                                      Images().getEscudoWidget(clubBasics.name,70,70),
                                      const SizedBox(height: 4),
                                      Padding(
                                        padding: const EdgeInsets.only(left: 0.0),
                                        child: starsWidgetFromOverall(clubBasics.overall,18.0),
                                      ),
                                    ],
                                  ),

                                  const SizedBox(width: 8),
                                  Expanded(
                                    child: Column(
                                      crossAxisAlignment: CrossAxisAlignment.start,
                                      children: [
                                        Row(
                                          children: [
                                            Expanded(child: Text(clubBasics.name,overflow: TextOverflow.ellipsis,style: EstiloTextoBranco.negrito18)),
                                          ],
                                        ),
                                        const SizedBox(height: 4),
                                        Text(clubBasics.foundationYear.toString(),style: EstiloTextoBranco.text16),
                                        Text(clubBasics.stadium,maxLines: 2,overflow: TextOverflow.ellipsis,style: EstiloTextoBranco.text14),
                                        Text('(${clubBasics.getStadiumstadiumSizePointFormat()}) ',style: EstiloTextoBranco.text16),

                                      ],
                                    ),
                                  ),
                                ],
                              ),
                            ),


                          ],
                        ),
                      ),

                    ],
                  ),
                ),

                //UNIFORME
                Padding(
                    padding: const EdgeInsets.only(left:285,top: 10),
                    child: Images().getUniformWidget(clubBasics.name, 85, 100)
                ),
                Padding(
                    padding: const EdgeInsets.only(left:340,top: 75),
                    child: funcFlagsList(clubBasics.country, 15, 25),
                ),

                SizedBox(
                  height: 32,
                  width: 30,
                  child: dataGraphics.nTitulos > 0 ? Stack(
                    children: [
                      const Opacity(opacity:0.7, child: Icon(Icons.star,color: Colors.amber,size: 32)),
                      Center(child: Text(dataGraphics.nTitulos.toString(),style: EstiloTextoBranco.negrito14)),
                    ],
                  ) : Container(),
                ),

              ],
            ),
      ),
    );
  }

  Widget selectCountryRow(){
    return Container(
      height: 55,
      decoration: blackDecoration(),
      child: ListView.builder(
          scrollDirection: Axis.horizontal,
          itemCount: countryOptions.length,
          itemBuilder: (c, i) {
            return countryFlagsSelectionBottomWidget(
              country: countryOptions[i],
              chosenCountryName: selectedCountry,
              onTap: () {
                selectedCountry = countryOptions[i];
                filterClubs();
                setState(() {});
              },
            );
          }
      ),
    );
  }

}
