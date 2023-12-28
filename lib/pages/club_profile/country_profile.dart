import 'package:fifa/classes/image_class.dart';
import 'package:fifa/widgets/button/back_button.dart';
import 'package:flutter/material.dart';

class CountryProfile extends StatefulWidget {
  final String nationalTeam;
  const CountryProfile({Key? key,required this.nationalTeam}) : super(key: key);

  @override
  State<CountryProfile> createState() => _CountryProfileState();
}

class _CountryProfileState extends State<CountryProfile> with TickerProviderStateMixin {

  late TabController _tabController;

  ////////////////////////////////////////////////////////////////////////////
//                               INIT                                     //
////////////////////////////////////////////////////////////////////////////
  @override
  void initState() {
    _tabController = TabController(vsync: this, length: 3);
    super.initState();
  }
  @override
  void dispose() {
    _tabController.dispose();
    super.dispose();
  }

////////////////////////////////////////////////////////////////////////////
//                               BUILD                                    //
////////////////////////////////////////////////////////////////////////////
  @override
  Widget build(BuildContext context) {

    return DefaultTabController(
      length: 3,
      child: Scaffold(
        body: Stack(
          children: [

            Images().getWallpaper(),


            Column(
              children: [

                backButtonText(context, widget.nationalTeam),

                Images().getNationalCrest(widget.nationalTeam),
                SizedBox(
                  height: 30,
                  child: TabBar(
                    controller: _tabController,
                    unselectedLabelColor: Colors.white54,
                    tabs: const [
                      Tab(text: "Gráfico"),
                      Tab(text: "Histórico"),
                      Tab(text: "Jogadores Históricos"),
                    ],
                  ),
                ),
                Expanded(
                  child: TabBarView(
                    controller: _tabController,
                    children: [
                      Container(),
                      Container(),
                      Container(),
                    ],
                  ),
                ),
              ],
            ),


          ],
        ),
      ),
    );
  }

////////////////////////////////////////////////////////////////////////////
//                               WIDGETS                                  //
////////////////////////////////////////////////////////////////////////////
Widget header(){
    return Row(
      children: [
        Container(),
      ],
    );
}
  Widget titles(){
    return Container();
  }
}
