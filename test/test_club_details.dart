
import 'package:fifa/global_variables.dart';
import 'package:flutter_test/flutter_test.dart';

void main() {

  group('Testes', (){

    test('Club Details infos filled', () {

      globalClubDetails.forEach((key, value) {
        List values = value;
        expect(values[5].isNotEmpty, true);
      });
    });

  });
}
