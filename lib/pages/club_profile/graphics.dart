import 'package:fifa/classes/club.dart';
import 'package:fifa/classes/geral/size.dart';
import 'package:fifa/classes/image_class.dart';
import 'package:fifa/classes/jogador.dart';
import 'package:fifa/page_controller/club_profile/data_graphics.dart';
import 'package:fifa/theme/colors.dart';
import 'package:fifa/theme/textstyle.dart';
import 'package:fifa/theme/translation.dart';
import 'package:fifa/values/league_trophy_image.dart';
import 'package:fifa/widgets/best_player_box/best_player_box.dart';
import 'package:flutter/material.dart';
import 'package:syncfusion_flutter_charts/charts.dart';

import '../../classes/club.dart';

class ClubGraphics extends StatefulWidget {
  final Club club;
  const ClubGraphics({Key? key,required this.club}) : super(key: key);

  @override
  State<ClubGraphics> createState() => _ClubGraphicsState();
}

class _ClubGraphicsState extends State<ClubGraphics> {

  late TooltipBehavior _tooltipBehavior;

  DataGraphics dataGraphics = DataGraphics();

  ///////////////////////////////////////////////////////////////////////////
//                               INIT                                     //
////////////////////////////////////////////////////////////////////////////
  @override
  void initState() {
    dataGraphics.getData(widget.club);
    super.initState();
  }

////////////////////////////////////////////////////////////////////////////
//                               BUILD                                    //
////////////////////////////////////////////////////////////////////////////
  @override
  Widget build(BuildContext context) {
    _tooltipBehavior = TooltipBehavior(enable: true);

    return Scaffold(
      body: Stack(
        children: [
          Images().getWallpaper(),

          Padding(
            padding: const EdgeInsets.all(8.0),
            child: SingleChildScrollView(
              child: Column(
                children: [
                  bestPlayers(),

                  graphics(dataGraphics),

                  currentPosition(widget.club, dataGraphics),

                  totalTrophyWidget(widget.club, dataGraphics),

                ],
              ),
            ),
          ),

        ],
      ),
    );
  }

////////////////////////////////////////////////////////////////////////////
//                               WIDGETS                                  //
////////////////////////////////////////////////////////////////////////////

  Widget graphics(DataGraphics dataGraphics) {
    return SingleChildScrollView(
      scrollDirection: Axis.horizontal,
      child: Container(
        height: 260,
        width: dataGraphics.dataInternational.length > dataGraphics.data.length
            ? dataGraphics.dataInternational.length * 23 + 50
            : dataGraphics.data.length * 23 + 50,
        color: AppColors().greyTransparent,
        child: SfCartesianChart(
          tooltipBehavior: _tooltipBehavior,
          //https://pub.dev/documentation/syncfusion_flutter_charts/latest/charts/SfCartesianChart-class.html?utm_source=pubdev&utm_medium=listing&utm_campaign=flutter-charts-pubdev
          // Initialize category axis
          primaryXAxis: CategoryAxis(),
          series: <ChartSeries>[
            // Initialize line series
            LineSeries<ClassificationData, String>(
              xAxisName: Translation(context).text.years,
              yAxisName: Translation(context).text.position,
              name: widget.club.name,
              dataSource: dataGraphics.data,
              enableTooltip: true,
              xValueMapper: (ClassificationData data, _) =>
              //Para mostrar apertura e clausura
              data.year.toString().substring(5) == '5'
                  ? data.year.toString() //ano.5 -> ano.5
                  : data.year.toInt().toString(),
              //ano.0 -> ano
              yValueMapper: (ClassificationData data, _) => data.position,
              dataLabelSettings: const DataLabelSettings(
                  isVisible: true, color: Colors.white),
              markerSettings: const MarkerSettings(
                  isVisible: true,
                  height: 4,
                  width: 4,
                  borderWidth: 3,
                  borderColor: Colors.white
              ),
            ),

            LineSeries<ClassificationData, String>(
              color: Colors.red,
              xAxisName: Translation(context).text.years,
              yAxisName: Translation(context).text.position,
              name: widget.club.name,
              dataSource: dataGraphics.dataInternational,
              enableTooltip: true,
              xValueMapper: (ClassificationData data, _) => data.year.toInt().toString(), //ano.0 -> ano
              yValueMapper: (ClassificationData data, _) => data.position,
              //dataLabelSettings:const DataLabelSettings(isVisible : true,color: Colors.white),
              markerSettings: const MarkerSettings(
                  isVisible: true,
                  height: 4,
                  width: 4,
                  borderWidth: 3,
                  borderColor: Colors.white
              ),
            ),


          ],
        ),
      ),
    );
  }


  Widget totalTrophyWidget(Club club, DataGraphics dataGraphics) {
    return Container(
      width: Sized(context).width,
      color: AppColors().greyTransparent,
      margin: const EdgeInsets.all(4),
      padding: const EdgeInsets.all(4),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceAround,
        children: [

          Column(
            children: [
              Text(Translation(context).text.average,
                  style: EstiloTextoBranco.text14),
              Text(Translation(context).text.last10Years,
                  style: EstiloTextoBranco.text14),
              const SizedBox(height: 6),
              Text(dataGraphics.averagePosition10years.toString() + 'º',
                  style: EstiloTextoBranco.text20),
            ],
          ),
          Column(
            children: [
              const Text('G-4', style: EstiloTextoBranco.text14),
              Text(Translation(context).text.years,
                  style: EstiloTextoBranco.text14),
              const SizedBox(height: 6),
              Text(dataGraphics.g4Years.toString(),
                  style: EstiloTextoBranco.text20),
            ],
          ),

          Column(
            children: [
              Text(Translation(context).text.division2,
                  style: EstiloTextoBranco.text14),
              Text(Translation(context).text.years,
                  style: EstiloTextoBranco.text14),
              const SizedBox(height: 6),
              Text(dataGraphics.n2ndivision.toString(),
                  style: EstiloTextoBranco.text20),
            ],
          ),

        ],
      ),
    );
  }

  Widget currentPosition(Club club, DataGraphics dataGraphics) {
    return Container(
      width: Sized(context).width,
      color: AppColors().greyTransparent,
      margin: const EdgeInsets.all(4),
      padding: const EdgeInsets.all(4),
      child: Row(
        children: [

          //TITULOS
          Column(
            children: [
              Text(Translation(context).text.titles,
                  style: EstiloTextoBranco.text16),
              Image.asset('assets/trophy/${getTrophyImage(club.leagueName)}.png',
                  height: 50, width: 50),
              Text(dataGraphics.nTitulos.toString(),
                  style: EstiloTextoBranco.text20),
            ],
          ),

          Column(
            children: [
              Text(Translation(context).text.position,
                  style: EstiloTextoBranco.text16),
              Text(widget.club.leagueName, style: EstiloTextoBranco.text16),
              Text(dataGraphics.currentPosition.toString() + 'º',
                  style: EstiloTextoBranco.text20),
            ],
          ),
        ],
      ),
    );
  }

  Widget bestPlayers() {
    List jogadores = widget.club.getJogadores();
    List<Jogador> jogadoresClass = [];
    List craqueValue=[],artilheiroValue=[],assistenteValue=[],mvpValue=[];

    for(int jogadorID in jogadores){
      jogadoresClass.add(Jogador(index: jogadorID));
      craqueValue.add(jogadoresClass.last.overall);
      mvpValue.add(jogadoresClass.last.price.floor());
      artilheiroValue.add(jogadoresClass.last.goalsLeague);
      assistenteValue.add(jogadoresClass.last.assistsLeague);
    }

    return SingleChildScrollView(
      scrollDirection: Axis.horizontal,
      child: Row(
        children: [
          bestPlayerBox('Craque', jogadoresClass.elementAt(getMaxIndex(craqueValue)),"${getValue(craqueValue).toString()} OVR"),
          bestPlayerBox('MVP', jogadoresClass.elementAt(getMaxIndex(mvpValue)),"\$ ${getValue(mvpValue).toString()}"),
          bestPlayerBox('Artilheiro', jogadoresClass.elementAt(getMaxIndex(artilheiroValue)),"${getValue(artilheiroValue).toString()} G"),
          bestPlayerBox('Assistente', jogadoresClass.elementAt(getMaxIndex(assistenteValue)),"${getValue(assistenteValue).toString()} A"),
        ],
      ),
    );
  }

  getValue(List lista){
    return lista.elementAt(getMaxIndex(lista));
  }
  getMaxIndex(List lista){
    //pega o index na lista com o valor máximo
    int maxValue = lista.reduce((curr, next) => curr > next? curr: next);
    int index = lista.indexOf(maxValue);
    return index;
  }


}



/*

//GRAPH PARAMETERS
                    //Enable the trackball
                    trackball: const SparkChartTrackball(
                        activationMode: SparkChartActivationMode.tap),
                    //Enable marker
                    marker: const SparkChartMarker(
                        displayMode: SparkChartMarkerDisplayMode.all),
                    //Enable data label
                    labelDisplayMode: SparkChartLabelDisplayMode.all,
                    xValueMapper: (int index) => data[index].year,
                    yValueMapper: (int index) => data[index].position,
                    dataCount: data.length,
                    axisLineColor: Colors.white,
                    color: Colors.red,
                    labelStyle: EstiloTextoBranco.text16,
 */