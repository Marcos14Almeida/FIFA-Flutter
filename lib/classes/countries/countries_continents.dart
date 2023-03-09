import 'package:fifa/classes/countries/words.dart';

class Continents{

  String americaSul = 'América do Sul';
  String americaNorte = 'América do Norte';
  String europa = 'Europa';
  String asia = 'Ásia';
  String africa = 'África';
  String oceania = 'Oceania';

  funcCountryContinents(String country){

    String code = oceania;
    if(country == Words.country.afghanistan){code = asia;}
    else if(country == Words.country.albania){code = europa;}
    else if(country == Words.country.angola){code = africa;}
    else if(country == Words.country.algeria){code = africa;}
    else if(country == Words.country.andorra){code = europa;}
    else if(country == Words.country.antiguaBarbuda){code = americaNorte;}
    else if(country == Words.country.argentina){code = americaSul;}
    else if(country == Words.country.armenia){code = europa;}
    else if(country == Words.country.aruba){code = americaNorte;}
    else if(country == Words.country.australia){code = oceania;}
    else if(country == Words.country.austria){code = europa;}
    else if(country == Words.country.azerbaijan){code = europa;}
    else if(country == Words.country.bahrein){code = asia;}
    else if(country == Words.country.bahamas){code = americaNorte;}
    else if(country == Words.country.bangladesh){code = asia;}
    else if(country == Words.country.barbados){code = americaNorte;}
    else if(country == Words.country.belgium){code = europa;}
    else if(country == Words.country.belarus){code = europa;}
    else if(country == Words.country.belize){code = americaNorte;}
    else if(country == Words.country.benin){code = africa;}
    else if(country == Words.country.bolivia){code = americaSul;}
    else if(country == Words.country.bosnia){code = europa;}
    else if(country == Words.country.botswana){code = africa;}
    else if(country == Words.country.bulgaria){code = europa;}
    else if(country == Words.country.burkina){code = africa;}
    else if(country == Words.country.burundi){code = africa;}
    else if(country == Words.country.bhoutan){code = asia;}
    else if(country == Words.country.brunei){code = asia;}
    else if(country == Words.country.brazil){code = americaSul;}
    else if(country == Words.country.cameroon){code = africa;}
    else if(country == Words.country.cambodia){code = asia;}
    else if(country == Words.country.canada){code = americaNorte;}
    else if(country == Words.country.capeVerde){code = africa;}
    else if(country == Words.country.centralAfrica){code = africa;}
    else if(country == Words.country.chad){code = africa;}
    else if(country == Words.country.china){code = asia;}
    else if(country == Words.country.chile){code = americaSul;}
    else if(country == Words.country.colombia){code = americaSul;}
    else if(country == Words.country.comoros){code = africa;}
    else if(country == Words.country.congo){code = africa;}
    else if(country == Words.country.congoRD){code = africa;}
    else if(country == Words.country.costaRica){code = americaNorte;}
    else if(country == Words.country.cuba){code = americaNorte;}
    else if(country == Words.country.croatia){code = europa;}
    else if(country == Words.country.cyprus){code = europa;}
    else if(country == Words.country.czechRepublic){code = europa;}
    else if(country == Words.country.denmark){code = europa;}
    else if(country == Words.country.djibouti){code = africa;}
    else if(country == Words.country.dominica){code = americaNorte;}
    else if(country == Words.country.dominicanRepublic){code = americaNorte;}
    else if(country == Words.country.ecuador){code = americaSul;}
    else if(country == Words.country.egypt){code = africa;}
    else if(country == Words.country.elsalvador){code = americaNorte;}
    else if(country == Words.country.england){code = europa;}
    else if(country == Words.country.ethiopia){code = africa;}
    else if(country == Words.country.eritrea){code = africa;}
    else if(country == Words.country.estonia){code = europa;}
    else if(country == Words.country.faroe){code = europa;}
    else if(country == Words.country.finland){code = europa;}
    else if(country == Words.country.france){code = europa;}
    else if(country == Words.country.gambia){code = africa;}
    else if(country == Words.country.gabon){code = africa;}
    else if(country == Words.country.georgia){code = europa;}
    else if(country == Words.country.gibraltar){code = europa;}
    else if(country == Words.country.ghana){code = africa;}
    else if(country == Words.country.germany){code = europa;}
    else if(country == Words.country.grenada){code = americaNorte;}
    else if(country == Words.country.greece){code = europa;}
    else if(country == Words.country.guatemala){code = americaNorte;}
    else if(country == Words.country.guyana){code = americaNorte;}
    else if(country == Words.country.guinea){code = africa;}
    else if(country == Words.country.guineaEquatorial){code = africa;}
    else if(country == Words.country.guineaBissau){code = africa;}
    else if(country == Words.country.haiti){code = americaNorte;}
    else if(country == Words.country.honduras){code = americaNorte;}
    else if(country == Words.country.hongkong){code = asia;}
    else if(country == Words.country.hungary){code = europa;}
    else if(country == Words.country.iceland){code = europa;}
    else if(country == Words.country.italy){code = europa;}
    else if(country == Words.country.india){code = asia;}
    else if(country == Words.country.indonesia){code = asia;}
    else if(country == Words.country.iraq){code = asia;}
    else if(country == Words.country.iran){code = asia;}
    else if(country == Words.country.ireland){code = europa;}
    else if(country == Words.country.israel){code = europa;}
    else if(country == Words.country.ivorycoast){code = africa;}
    else if(country == Words.country.japan){code = asia;}
    else if(country == Words.country.jamaica){code = americaNorte;}
    else if(country == Words.country.jordan){code = asia;}
    else if(country == Words.country.kazakhstan){code = europa;}
    else if(country == Words.country.kenya){code = africa;}
    else if(country == Words.country.kiribati){code = oceania;}
    else if(country == Words.country.kosovo){code = europa;}
    else if(country == Words.country.kuwait){code = asia;}
    else if(country == Words.country.kyrgyzstan){code = asia;}
    else if(country == Words.country.laos){code = asia;}
    else if(country == Words.country.latvia){code = europa;}
    else if(country == Words.country.lebanon){code = asia;}
    else if(country == Words.country.lesoto){code = africa;}
    else if(country == Words.country.libya){code = africa;}
    else if(country == Words.country.liechtenstein){code = europa;}
    else if(country == Words.country.lithuania){code = europa;}
    else if(country == Words.country.liberia){code = africa;}
    else if(country == Words.country.luxembourg){code = europa;}
    else if(country == Words.country.macedonia){code = europa;}
    else if(country == Words.country.madagascar){code = africa;}
    else if(country == Words.country.malaysia){code = asia;}
    else if(country == Words.country.maldives){code = asia;}
    else if(country == Words.country.mali){code = africa;}
    else if(country == Words.country.malawi){code = africa;}
    else if(country == Words.country.malta){code = europa;}
    else if(country == Words.country.mauritania){code = africa;}
    else if(country == Words.country.mauritius){code = africa;}
    else if(country == Words.country.mexico){code = americaNorte;}
    else if(country == Words.country.micronesia){code = oceania;}
    else if(country == Words.country.moldova){code = europa;}
    else if(country == Words.country.monaco){code = europa;}
    else if(country == Words.country.montenegro){code = europa;}
    else if(country == Words.country.mongolia){code = asia;}
    else if(country == Words.country.morocco){code = africa;}
    else if(country == Words.country.mozambique){code = africa;}
    else if(country == Words.country.myanmar){code = asia;}
    else if(country == Words.country.namibia){code = africa;}
    else if(country == Words.country.nauru){code = oceania;}
    else if(country == Words.country.netherlands){code = europa;}
    else if(country == Words.country.nepal){code = asia;}
    else if(country == Words.country.nicaragua){code = americaNorte;}
    else if(country == Words.country.niger){code = africa;}
    else if(country == Words.country.nigeria){code = africa;}
    else if(country == Words.country.newZealand){code = oceania;}
    else if(country == Words.country.norway){code = europa;}
    else if(country == Words.country.northKorea){code = asia;}
    else if(country == Words.country.northernIreland){code = europa;}
    else if(country == Words.country.oman){code = asia;}
    else if(country == Words.country.pakistan){code = asia;}
    else if(country == Words.country.palestine){code = asia;}
    else if(country == Words.country.panama){code = americaNorte;}
    else if(country == Words.country.papua){code = oceania;}
    else if(country == Words.country.paraguay){code = americaSul;}
    else if(country == Words.country.peru){code = americaSul;}
    else if(country == Words.country.poland){code = europa;}
    else if(country == Words.country.portugal){code = europa;}
    else if(country == Words.country.puertoRico){code = americaNorte;}
    else if(country == Words.country.philippines){code = asia;}
    else if(country == Words.country.qatar){code = asia;}
    else if(country == Words.country.romania){code = europa;}
    else if(country == Words.country.russia){code = europa;}
    else if(country == Words.country.rwanda){code = africa;}
    else if(country == Words.country.sanMarino){code = europa;}
    else if(country == Words.country.samoa){code = oceania;}
    else if(country == Words.country.senegal){code = africa;}
    else if(country == Words.country.serbia){code = europa;}
    else if(country == Words.country.scotland){code = europa;}
    else if(country == Words.country.seychelles){code = africa;}
    else if(country == Words.country.sierraLeone){code = africa;}
    else if(country == Words.country.singapore){code = asia;}
    else if(country == Words.country.slovakia){code = europa;}
    else if(country == Words.country.slovenia){code = europa;}
    else if(country == Words.country.somalia){code = africa;}
    else if(country == Words.country.southArabia){code = asia;}
    else if(country == Words.country.southAfrica){code = africa;}
    else if(country == Words.country.southKorea){code = asia;}
    else if(country == Words.country.spain){code = europa;}
    else if(country == Words.country.sweden){code = europa;}
    else if(country == Words.country.switzerland){code = europa;}
    else if(country == Words.country.syria){code = asia;}
    else if(country == Words.country.stKitts){code = americaNorte;}
    else if(country == Words.country.stLucia){code = americaNorte;}
    else if(country == Words.country.srilanka){code = asia;}
    else if(country == Words.country.sudan){code = africa;}
    else if(country == Words.country.suriname){code = americaNorte;}
    else if(country == Words.country.taiwan){code = asia;}
    else if(country == Words.country.timor){code = oceania;}
    else if(country == Words.country.tajikistan){code = asia;}
    else if(country == Words.country.tanzania){code = africa;}
    else if(country == Words.country.thailand){code = asia;}
    else if(country == Words.country.trinidadTobago){code = americaNorte;}
    else if(country == Words.country.togo){code = africa;}
    else if(country == Words.country.tonga){code = oceania;}
    else if(country == Words.country.tunisia){code = africa;}
    else if(country == Words.country.turkey){code = europa;}
    else if(country == Words.country.turkmenistan){code = asia;}
    else if(country == Words.country.uganda){code = africa;}
    else if(country == Words.country.ukraine){code = europa;}
    else if(country == Words.country.uae){code = asia;}
    else if(country == Words.country.unitedStates){code = americaNorte;}
    else if(country == Words.country.uruguay){code = americaSul;}
    else if(country == Words.country.uzbekistan){code = asia;}
    else if(country == Words.country.venezuela){code = americaSul;}
    else if(country == Words.country.vietnam){code = asia;}
    else if(country == Words.country.wales){code = europa;}
    else if(country == Words.country.yemen){code = asia;}
    else if(country == Words.country.zambia){code = africa;}
    else if(country == Words.country.zimbabwe){code = africa;}

    return code;
  }


}
