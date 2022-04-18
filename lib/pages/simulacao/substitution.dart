import 'package:fifa/classes/club.dart';
import 'package:fifa/classes/image_class.dart';
import 'package:fifa/classes/jogador.dart';
import 'package:fifa/classes/match.dart';
import 'package:fifa/classes/my.dart';
import 'package:fifa/global_variables.dart';
import 'package:fifa/theme/colors.dart';
import 'package:fifa/theme/custom_toast.dart';
import 'package:fifa/widgets/button/button_continue.dart';
import 'package:fifa/widgets/field_size.dart';
import 'package:fifa/theme/textstyle.dart';
import 'package:flutter/material.dart';

import '../../classes/geral/esquemas_taticos.dart';

class Substitution extends StatefulWidget {
  //NECESSARY VARIABLES WHEN CALLING THIS CLASS
  const Substitution({Key? key}) : super(key: key);
  @override
  _SubstitutionState createState() => _SubstitutionState();
}

class _SubstitutionState extends State<Substitution> {

  My my = My();
  int dragPlayer = -1;
  Club myClub = Club(index: My().clubID);
  List originalStartingPlayers = [];
////////////////////////////////////////////////////////////////////////////
//                               INIT                                     //
////////////////////////////////////////////////////////////////////////////
  @override
  void initState() {
    doThisOnLaunch();
    super.initState();
  }
  doThisOnLaunch() {
    originalStartingPlayers =  my.jogadores.take(11).toList();
  }
////////////////////////////////////////////////////////////////////////////
//                               BUILD                                    //
////////////////////////////////////////////////////////////////////////////
  @override
  Widget build(BuildContext context) {

    return Scaffold(
        body:  Stack(
            children: [

              Images().getWallpaper(),

              Column(
                children: [

                  const SizedBox(height: 40),
                  const Text('Substituição',style: EstiloTextoBranco.text30),
                  Text('${globalMatchSubstitutionsLeft.toString()} restantes',style: EstiloTextoBranco.text16),
                  //MUDAR ESQUEMA TATICO
                  customButtonContinue(
                      title: my.esquemaTatico,
                      function: (){
                        EsquemaTatico().changeMyEsquema();
                        my = My();
                        setState(() {});
                      }
                  ),

                  const SizedBox(height: 8),
                  fieldSizeWidget(
                    fieldWidgetSelection(),
                  ),

                  const Text('Reservas',style: EstiloTextoBranco.text20),
                  Container(
                    height: 90,
                    color: AppColors().greyTransparent,
                    child: ListView.builder(
                        shrinkWrap: true,
                        scrollDirection: Axis.horizontal,
                        itemCount:  myClub.nJogadores>11 ? myClub.nJogadores> 18 ? 7 : myClub.nJogadores -11 : 0,
                        itemBuilder: (BuildContext context, int index) {
                          index = index+11;
                          return dragPlayer<0
                                  ? draggable(my.jogadores[index])
                                  : draggableTarget(my.jogadores[index]);
                        }
                    ),
                  ),

                  const Spacer(),
                  //VOLTAR
                  Padding(
                    padding: const EdgeInsets.all(6),
                    child:  customButtonContinue(
                        title: 'VOLTAR',
                        function: (){
                          Navigator.pop(context);
                        }
                    ),
                  ),


                ],
              ),

            ]
        )
    );
  }
////////////////////////////////////////////////////////////////////////////
//                               WIDGETS                                  //
////////////////////////////////////////////////////////////////////////////
  Widget draggable(int playerIndex){
    return LongPressDraggable (
      data: playerIndex,
      child: playerWidgetOVR(playerIndex),
      feedback: playerWidgetOVR(playerIndex),
      childWhenDragging: Container(height:60, width: 60,color:AppColors().greyTransparent),
      onDragStarted: (){
        dragPlayer=playerIndex;
        setState(() {});
      },
      onDragCompleted: (){dragPlayer=-1;},
    );
  }
  Widget draggableTarget(int playerTargetID){
    return DragTarget(
      builder: (BuildContext context,
          List<dynamic> accepted,
          List<dynamic> rejected,){
        return playerWidgetOVR(playerTargetID);
      },
      onAccept: (data){
        if(globalMatchSubstitutionsLeft>0){
          int playerIDData = int.parse(data.toString());

          int finalPosition1 = my.jogadores.indexOf(playerIDData);
          int finalPosition2 = my.jogadores.indexOf(playerTargetID);


          Match matchClass1 = Match(playerID: playerIDData);
          Match matchClass2 = Match(playerID: playerTargetID);
          if(matchClass1.redCard==0 && matchClass2.redCard == 0) {
            //Troca Jogadores
            globalMyJogadores[finalPosition1] = playerTargetID;
            globalMyJogadores[finalPosition2] = playerIDData;

            //SUBSTITUIÇÕES RESTANTES
            List actualPlayers = my.jogadores.take(11).toList();
            int totalDifferentPlayers = 0;
            for (int originalID in originalStartingPlayers){
              if (!actualPlayers.contains(originalID)) {
                totalDifferentPlayers += 1;
              }
            }
            globalMatchSubstitutionsLeft = 3-totalDifferentPlayers;

          }else {
            customToast('Jogadores expulsos não podem ser substítuidos');
            dragPlayer=-1;
          }
        }else{
          customToast('Sem substituições restantes');
          dragPlayer=-1;
        }
        setState(() {});
      },
    );
  }

  Widget playerWidgetOVR(int playerIndex){
    Jogador player = Jogador(index: playerIndex);

    Match matchClass = Match(playerID: playerIndex);

    String name = player.name;
    String position = player.position;
    double imageSize = 50;
    bool yellowCard = matchClass.yellowCard>0;
    bool redCard = matchClass.redCard>0;
    bool injury = matchClass.injury>0;
    bool goal = matchClass.goals>0;
    double healthBar = matchClass.health;

    String circleShow = player.overallDynamic.toStringAsFixed(0);

    if(injury || redCard){healthBar=0;}

    return GestureDetector(
      onTap:(){
        //PLAYER INFOS
      },
      child: Center(
        child: Column(
          children: [

            //OVR
            SizedBox(
              height: imageSize-5,
              width: imageSize,
              child: Stack(
                children: [

                  //Uniforme
                  (player.injury >0 || player.redCard >0)
                      ? Opacity(
                      opacity: 0.4,
                      child: Image.asset(Images().getUniform(player.clubName))
                  )
                      : Image.asset(Images().getUniform(player.clubName)),

                  //GOL
                  Container(
                    alignment: Alignment.topRight,
                    child: Container(
                      height: 12,
                      width: 12,
                      margin: const EdgeInsets.all(4),
                      color: yellowCard ? Colors.yellow : redCard ? Colors.red : Colors.transparent,
                    ),
                  ),

                  //BOLA
                  goal ? Container(
                      alignment: Alignment.bottomRight,
                      child: Image.asset('assets/icons/bola.png',height: 20,width: 20)
                  )
                      : Container(),

                  //CIRCULO
                  Container(
                    alignment: Alignment.bottomRight,
                    child: Image.asset('assets/icons/circulo.png',height: 22),
                  ),

                  //OVR
                  Container(
                    alignment: Alignment.bottomRight,
                    child: Padding(
                      padding: const EdgeInsets.all(3.0),
                      child: Text(circleShow,style: EstiloTextoPreto.text14),
                    ),
                  ),

                  //POSIÇÃO
                  Container(
                    alignment: Alignment.bottomLeft,
                    child: Padding(
                      padding: const EdgeInsets.all(3.0),
                      child: Text(position,style: EstiloTextoBranco.text14),
                    ),
                  ),

                ],
              ),
            ),
            //Barra de saúde
            SizedBox(
              width: imageSize+7,
              child: LinearProgressIndicator(
                value: healthBar,
                color: Colors.teal,
                backgroundColor: Colors.grey,
              ),
            ),
            //Nome do jogador
            Container(
                color: AppColors().greyTransparent,
                width: 80,
                child: Text(name,textAlign: TextAlign.center,style: EstiloTextoBranco.text10)
            ),

          ],
        ),
      ),
    );
  }

  Widget fieldWidgetSelection(){
    if(My().esquemaTatico == EsquemaTatico().e442) return fieldGameplay442();
    if(My().esquemaTatico == EsquemaTatico().e433) return fieldGameplay433();

    return fieldGameplay442();
  }

  Widget fieldGameplay442(){
    return fieldSizeWidget(
        Column(
          children: [
            //ATACANTES
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceAround,
              children: [
                playerWidget(my.jogadores[9]),
                playerWidget(my.jogadores[10]),
              ],
            ),
            //MEIAS
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                playerWidget(my.jogadores[7]),
                playerWidget(my.jogadores[8]),
              ],
            ),
            //VOLANTES
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [
                playerWidget(my.jogadores[5]),
                playerWidget(my.jogadores[6]),
              ],
            ),
            //ZAGUEIROS
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceAround,
              children: [
                playerWidget(my.jogadores[1]),
                playerWidget(my.jogadores[2]),
                playerWidget(my.jogadores[3]),
                playerWidget(my.jogadores[4]),
              ],
            ),

            //GOLEIRO
            playerWidget(my.jogadores[0]),

          ],
        )
    );

  }

  Widget fieldGameplay433(){
    return fieldSizeWidget(
        Column(
          children: [
            //ATACANTES
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceAround,
              children: [
                playerWidget(my.jogadores[8]),
                playerWidget(my.jogadores[9]),
                playerWidget(my.jogadores[10]),
              ],
            ),
            //MEIAS
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                playerWidget(my.jogadores[7]),
              ],
            ),
            //VOLANTES
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [
                playerWidget(my.jogadores[5]),
                playerWidget(my.jogadores[6]),
              ],
            ),
            //ZAGUEIROS
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceAround,
              children: [
                playerWidget(my.jogadores[1]),
                playerWidget(my.jogadores[2]),
                playerWidget(my.jogadores[3]),
                playerWidget(my.jogadores[4]),
              ],
            ),

            //GOLEIRO
            playerWidget(my.jogadores[0]),

          ],
        )
    );

  }


  Widget playerWidget(int playerID){
    return dragPlayer<0 ? draggable(playerID): draggableTarget(playerID);
  }
}