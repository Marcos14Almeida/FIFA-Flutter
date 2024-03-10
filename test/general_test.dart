
import 'dart:convert';

import 'package:fifa/values/historic_champions/historic_champions.dart';
import 'package:fifa/values/league_names.dart';
import 'package:flutter_test/flutter_test.dart';

void main() {

  group('Testes', (){

    test('Json Encode', () {
      List<int> myPlayers = [1,3,52,5,23,54,76];
      List list = json.decode(myPlayers.toString());
      expect(list, myPlayers);
    });

    test('Teste Mundial Map', () {
      Map global = {'Mundial':{}};
      global['Mundial'][2012] = ['oi','boi'];
      global['Mundial'][2013] = ['oi','boi'];
    });

    test('Teste map Names', () {
      void printQuotedMap(String leagueName, [int indentation = 0]) {
        Map map = {leagueName: mapChampions(leagueName)};

        String indent = '    ' * indentation; // Adjust the indentation as needed

        map.forEach((key, value) {
          print('$indent"$key": {');
          value.forEach((innerKey, innerValue) {
            print('$indent  "$innerKey": [');
            innerValue.forEach((item) {
              bool isLast = item == innerValue.last;
              print('$indent    "$item"${isLast ? '' : ','}');
            });
            print('$indent  ],');
          });
          print('$indent},');
        });
      }
      LeagueOfficialNames l = LeagueOfficialNames();

      printQuotedMap(l.belgica);

    });

  });
}
