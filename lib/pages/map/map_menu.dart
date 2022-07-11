import 'package:fifa/classes/geral/size.dart';
import 'package:fifa/classes/image_class.dart';
import 'package:fifa/global_variables.dart';
import 'package:fifa/pages/map/map.dart';
import 'package:fifa/pages/map/map_config.dart';
import 'package:fifa/pages/map/map_gameplay.dart';
import 'package:fifa/pages/map/map_list_all_clubs.dart';
import 'package:fifa/pages/map/map_ranking.dart';
import 'package:fifa/theme/colors.dart';
import 'package:fifa/theme/decoration/black_decoration.dart';
import 'package:fifa/theme/textstyle.dart';
import 'package:fifa/widgets/back_button.dart';
import 'package:flutter/material.dart';

class MapMenu extends StatefulWidget {
  const MapMenu({Key? key}) : super(key: key);

  @override
  State<MapMenu> createState() => _MapMenuState();
}

class _MapMenuState extends State<MapMenu> {


////////////////////////////////////////////////////////////////////////////
//                               INIT                                     //
////////////////////////////////////////////////////////////////////////////
  @override
  void initState() {
    super.initState();
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
                backButtonText(context, 'Mapa'),

                Text('MAP GAME',style: EstiloTextoBranco.text40),
                Container(
                  width: Sized(context).width,
                  margin: const EdgeInsets.all(12),
                  padding: const EdgeInsets.all(12),
                  decoration: const BoxDecoration(
                      gradient: LinearGradient(
                        begin: Alignment.topCenter,
                        end: Alignment.bottomCenter,
                        stops: [0.6,1],
                        colors: [
                          Colors.white24,
                          Colors.transparent,
                        ],
                      ),
                    borderRadius: BorderRadius.all(Radius.circular(5)),
                  ),
                  child: Column(
                    children: [
                      gameButton('Gameplay',(){Navigator.push(context,MaterialPageRoute(builder: (context) => const MapConfig()));}),
                      const SizedBox(height: 8),
                      gameButton('Exploração Livre',(){Navigator.push(context,MaterialPageRoute(builder: (context) => const MapPage()));}),
                      const SizedBox(height: 8),
                      gameButton('Ranking',(){Navigator.push(context,MaterialPageRoute(builder: (context) => const MapRanking()));}),
                      const SizedBox(height: 8),
                      gameButton('Lista de Clubes',(){Navigator.push(context,MaterialPageRoute(builder: (context) => const MapListAllClubs()));}),

                    ],
                  ),
                ),

                const Spacer(),
                myProfile(),
              ],
            ),
          ],
        ),
    );
  }
////////////////////////////////////////////////////////////////////////////
//                               WIDGETS                                  //
////////////////////////////////////////////////////////////////////////////
Widget gameButton(String text, Function function){
    return GestureDetector(
      onTap: (){
        function();
      },
    child: Container(
      width: 200,
      padding: const EdgeInsets.all(8),
      decoration: decorations(),
      child: Text(text,textAlign:TextAlign.center,style: EstiloTextoBranco.text20,),
    ),
    );
}


  BoxDecoration decorations(){
    return BoxDecoration(
        color: AppColors().greyTransparent,
  borderRadius: const BorderRadius.all(Radius.circular(5)),
  border: Border.all(
  width: 2.0,
  color: Colors.greenAccent,
  )
    );
}

Widget myProfile(){
    String clubName = 'Barcelona';
    return Container(
      margin: const EdgeInsets.all(16),
      decoration: blackDecoration(),
      child: Stack(
        children: [

          Container(
            height: 80,width: 150,
            child: Opacity(
              opacity: 0.2,
              child: AspectRatio(
                aspectRatio: 300 / 451,
                child: Container(
                  decoration: BoxDecoration(
                      image: DecorationImage(
                        fit: BoxFit.fitWidth,
                        alignment: FractionalOffset.center,
                        image: AssetImage(Images().getEscudo(clubName)),
                      )
                  ),
                ),
              ),
            ),
          ),
          Container(
            padding: const EdgeInsets.symmetric(horizontal: 8),
            child: Row(
              children: [
                Image.asset(Images().getEscudo(clubName),height: 40,width: 40),
                SizedBox(width: 12),
                Expanded(
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text(globalCoachName,style: EstiloTextoBranco.negrito18),
                      Text(clubName,style: EstiloTextoBranco.text20),
                    ],
                  ),
                ),
                Image.asset(Images().getStadium(clubName),height: 80,width: 100)
              ],
            ),
          ),
        ],
      ),
    );
}

}
