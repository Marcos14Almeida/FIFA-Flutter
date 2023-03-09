import 'package:fifa/global_variables.dart';
import 'package:fifa/values/club_names.dart';

import 'league_names.dart';

class FIFAImages{

  String mundialLogo(){
    return 'assets/league_logos/mundial.png';
  }

  String campeonatoLogo(String leagueName) {
    String imageLogo = 'championship';

    if(leagueName==LeagueOfficialNames().inglaterra1) {       imageLogo = 'premierleague';}
    if(leagueName==LeagueOfficialNames().inglaterra2) {       imageLogo = 'championship';}
    if(leagueName==LeagueOfficialNames().inglaterra3) {       imageLogo = 'inglaterra3';}
    if(leagueName==LeagueOfficialNames().italia1) {      imageLogo = 'italia1';}
    if(leagueName==LeagueOfficialNames().italia2) {      imageLogo = 'italia2';}
    if(leagueName==LeagueOfficialNames().espanha1) {       imageLogo = 'laliga';}
    if(leagueName==LeagueOfficialNames().espanha2) {       imageLogo = 'laliga2';}
    if(leagueName==LeagueOfficialNames().franca1) {       imageLogo = 'ligue1';}
    if(leagueName==LeagueOfficialNames().franca2) {       imageLogo = 'ligue2'; }
    if(leagueName==LeagueOfficialNames().alemanha1) {     imageLogo = 'bundesliga';}
    if(leagueName==LeagueOfficialNames().alemanha2) {     imageLogo = 'bundesliga2';}
    if(leagueName==LeagueOfficialNames().portugal) {      imageLogo = 'portugal';}
    if(leagueName==LeagueOfficialNames().holanda) {      imageLogo = 'holanda';}
    if(leagueName==LeagueOfficialNames().turquiaGrecia) {      imageLogo = 'turquia';}
    if(leagueName==LeagueOfficialNames().ligaEuropa) {      imageLogo = 'liga1';}
    if(leagueName==LeagueOfficialNames().lesteEuropeu) {    imageLogo = 'leste';}
    if(leagueName==LeagueOfficialNames().brasil1) {      imageLogo = 'brasil a';}
    if(leagueName==LeagueOfficialNames().brasil2) {     imageLogo = 'brasil b';}
    if(leagueName==LeagueOfficialNames().brasil3) {     imageLogo = 'brasil c';}
    if(leagueName==LeagueOfficialNames().brasil4) {     imageLogo = 'brasil d';}
    if(leagueName==LeagueOfficialNames().paulistao) {     imageLogo = 'brasileirao';}
    if(leagueName==LeagueOfficialNames().argentina) {      imageLogo = 'argentina';}
    if(leagueName==LeagueOfficialNames().mercosul) {      imageLogo = 'mercosul'; }
    if(leagueName==LeagueOfficialNames().colombia) {      imageLogo = 'colombia';       }
    if(leagueName==LeagueOfficialNames().mexico) {      imageLogo = 'mexico';       }
    if(leagueName==LeagueOfficialNames().estadosUnidos) {      imageLogo = 'mls';     }
    if(leagueName==LeagueOfficialNames().asia) {      imageLogo = 'asialeague';     }
    if(leagueName==LeagueOfficialNames().africa) {      imageLogo = 'africa';       }
    if(leagueName==LeagueOfficialNames().outros) {      imageLogo = 'others';       }

    if(leagueName==LeagueOfficialNames().championsLeague) {      imageLogo = 'champions';       }
    if(leagueName==LeagueOfficialNames().libertadores) {      imageLogo = 'libertadores'; }
    if(leagueName==LeagueOfficialNames().europaLeagueOficial) {      imageLogo = 'europaleague'; }
    if(leagueName==LeagueOfficialNames().copaSulAmericana) {      imageLogo = 'sulamericana'; }
    if(leagueName==LeagueOfficialNames().concacaf) {      imageLogo = 'concacaf'; }
    if(leagueName==LeagueOfficialNames().resto) {      imageLogo = 'rest';       }
    if(leagueName==LeagueOfficialNames().mundial) {      imageLogo = 'mundial';       }


    if(leagueName==LeagueOfficialNames().englandCup) {      imageLogo = 'fa cup';       }
    if(leagueName==LeagueOfficialNames().italyCup) {      imageLogo = 'copa italia';       }
    if(leagueName==LeagueOfficialNames().spainCup) {      imageLogo = 'copa rey';       }
    if(leagueName==LeagueOfficialNames().germanyCup) {      imageLogo = 'copa alemanha';       }
    if(leagueName==LeagueOfficialNames().franceCup) {      imageLogo = 'copa franca';       }
    if(leagueName==LeagueOfficialNames().portugalCup) {      imageLogo = 'copa portugal';       }
    if(leagueName==LeagueOfficialNames().russiaCup) {      imageLogo = 'copa russia';       }
    if(leagueName==LeagueOfficialNames().brazilCup) {      imageLogo = 'copa do brasil';       }


    if(leagueName==LeagueOfficialNames().latina) {      imageLogo = 'rest';       }
    if(leagueName==LeagueOfficialNames().rioSP) {      imageLogo = 'rio sp';       }
    if(leagueName==LeagueOfficialNames().copaNordeste) {      imageLogo = 'copa nordeste';       }
    if(leagueName==LeagueOfficialNames().copaVerde) {      imageLogo = 'copa verde';       }
    if(leagueName==LeagueOfficialNames().cupwinners) {      imageLogo = 'cup winners';       }
    if(leagueName==LeagueOfficialNames().pequenaTaca) {      imageLogo = 'cup winners';       }

    if(leagueName==LeagueOfficialNames().recopaeuropa) {      imageLogo = 'recopa europa';       }
    if(leagueName==LeagueOfficialNames().recopasula) {      imageLogo = 'recopa sula';       }



    imageLogo = 'assets/league_logos/$imageLogo.png';
    return imageLogo;
  }



String imageLogo(String timeFoto) {
    ClubName _name = ClubName();

    if(globalShowRealLogos == false){
        return 'generic';
    }

    Map map = {};
    map[_name.arsenal] = 'arsenal';
    map[_name.astonvilla] = 'astonvilla';
    map[_name.crystalpalace] = 'crystalpalace';
    map[_name.chelsea] = 'chelsea';
    map[_name.everton] = 'everton';
    map[_name.leicester] = 'leicester';
    map[_name.leeds] = 'leeds';
    map[_name.liverpool] = 'liverpool';
    map[_name.mancity] = 'manchestercity';
    map[_name.manutd] = 'manchesterunited';
    map[_name.newcastle] = 'newcastle';
    map[_name.southampton] = 'southampton';
    map[_name.tottenham] = 'tottenham';
    map[_name.westbromwich] = 'westbromwich';
    map[_name.westham] = 'westham';
    map[_name.wolves] = 'wolves';

    map[_name.accrington] = 'accrington';
    map[_name.barnsley] = 'barnsley';
    map[_name.birmigham] = 'birmigham';
    map[_name.blackburn] = 'blackburn';
    map[_name.blackpool] = 'blackpool';
    map[_name.bolton] = 'bolton';
    map[_name.bournemouth] = 'bournemouth';
    map[_name.burnley] = 'burnley';
    map[_name.bradford] = 'bradford';
    map[_name.brentford] = 'brentford';  
    map[_name.brighton] = 'brighton';
    map[_name.bristol] = 'bristol city';
    map[_name.bristolrovers] = 'bristol rovers';
    map[_name.burton] = 'burton';
    map[_name.cardiffCity] = 'cardiff city';  
    map[_name.coventry] = 'coventry';  
    map[_name.charlton] = 'charlton';  
    map[_name.derbycount] = 'derby';
    map[_name.doncaster] = 'doncaster';
    map[_name.fleetwood] = 'fleetwood';
    map[_name.fulham] = 'fulham';
    map[_name.gillingham] = 'gillingham';
    map[_name.grimsby] = 'grimsby';
    map[_name.huddersfield] = 'huddersfield';
    map[_name.hullcity] = 'hullcity';  
    map[_name.ipswichTown] = 'ipswich';  
    map[_name.lincoln] = 'lincoln';  
    map[_name.luton] = 'luton';  
    map[_name.middlesbrough] = 'middlesbrough';
    map[_name.millwall] = 'millwall';  
    map[_name.mkdons] = 'mk dons';  
    map[_name.norwich] = 'norwich';
    map[_name.notts] = 'notts';  
    map[_name.nottinghamforest] = 'nottingham';
    map[_name.oldham] = 'oldham';
    map[_name.oxford] = 'oxford';  
    map[_name.peterborough] = 'peterborough';  
    map[_name.portsmouth] = 'portsmouth';
    map[_name.portvale] = 'port vale';
    map[_name.plymouth] = 'plymouth';  
    map[_name.prestonNorthEnd] = 'preston north end';  
    map[_name.qpr] = 'qpr';
    map[_name.reading] = 'reading';
    map[_name.rotherham] = 'rotherham';  
    map[_name.shrewsbury] = 'shrewsbury';  
    map[_name.sheffieldunited] = 'sheffield';
    map[_name.sheffieldWednesday] = 'sheffield wed';  
    map[_name.stoke] = 'stoke';
    map[_name.sunderland] = 'sunderland';  
    map[_name.swindon] = 'swindon';  
    map[_name.swansea] = 'swansea';
    map[_name.tranmere] = 'tranmere';
    map[_name.watford] = 'watford';
    map[_name.wigan] = 'wigan';  
    map[_name.wimbledon] = 'wimbledon';  
    map[_name.wycombe] = 'wycombe';  
    map[_name.york] = 'york';  

    map[_name.atalanta] = 'atalanta';
    map[_name.bologna] = 'bologna';
    map[_name.cagliari] = 'cagliari';
    map[_name.fiorentina] = 'fiorentina';
    map[_name.genoa] = 'genoa';
    map[_name.inter] = 'inter';
    map[_name.juventus] = 'juventus';
    map[_name.milan] = 'milan';
    map[_name.lazio] = 'lazio';
    map[_name.napoli] = 'napoli';
    map[_name.parma] = 'parma';
    map[_name.roma] = 'roma';
    map[_name.sampdoria] = 'sampdoria';
    map[_name.sassuolo] = 'sassuolo';
    map[_name.torino] = 'torino';
    map[_name.udinese] = 'udinese';

    map[_name.ascoli] = 'ascoli';
    map[_name.avellino] = 'avellino';
    map[_name.bari] = 'bari';
    map[_name.benevento] = 'benevento';
    map[_name.brescia] = 'brescia';
    map[_name.catania] = 'catania';
    map[_name.catanzaro] = 'catanzaro';
    map[_name.cesena] = 'cesena';
    map[_name.cittadella] = 'cittadella';
    map[_name.como] = 'como';
    map[_name.cremonese] = 'cremonese';
    map[_name.chievo] = 'chievo';
    map[_name.cosenza] = 'cosenza';
    map[_name.crotone] = 'crotone';
    map[_name.empoli] = 'empoli';
    map[_name.foggia] = 'foggia';
    map[_name.frosinone] = 'frosinone';
    map[_name.hellasVerona] = 'hellas';
    map[_name.lecce] = 'lecce';
    map[_name.livorno] = 'livorno';
    map[_name.messina] = 'messina';
    map[_name.modena] = 'modena';
    map[_name.monza] = 'monza';
    map[_name.padova] = 'padova';
    map[_name.palermo] = 'palermo';
    map[_name.perugia] = 'perugia';
    map[_name.pescara] = 'pescara';
    map[_name.piacenza] = 'piacenza';
    map[_name.pisa] = 'pisa';
    map[_name.pordenone] = 'pordenone';
    map[_name.reggiana] = 'reggiana';
    map[_name.reggina] = 'reggina';
    map[_name.salernitana] = 'salernitana';
    map[_name.siena] = 'siena';
    map[_name.spal] = 'spal';
    map[_name.spezia] = 'spezia';
    map[_name.ternana] = 'ternana';
    map[_name.varese] = 'varese';
    map[_name.venezia] = 'venezia';
    map[_name.vicenza] = 'vicenza';

    map[_name.athleticbilbao] = 'athleticbilbao';
    map[_name.atleticomadrid] = 'atleticomadrid';
    map[_name.barcelona] = 'barcelona';
    map[_name.celtavigo] = 'celta';
    map[_name.espanyol] = 'espanyol';
    map[_name.getafe] = 'getafe';
    map[_name.osasuna] = 'osasuna';
    map[_name.lacoruna] = 'lacoruna';
    map[_name.levante] = 'levante';
    map[_name.realbetis] = 'realbetis';
    map[_name.realmadrid] = 'realmadrid';
    map[_name.realsociedad] = 'realsociedad';
    map[_name.sevilla] = 'sevilla';
    map[_name.valladolid] = 'valladolid';
    map[_name.valencia] = 'valencia';
    map[_name.villareal] = 'villareal';

    map[_name.andorra] = 'andorra';
    map[_name.alaves] = 'alaves';
    map[_name.albacete] = 'albacete';
    map[_name.almeria] = 'almeria';
    map[_name.atleticomadridB] = 'atleticomadrid';
    map[_name.badajoz] = 'badajoz';
    map[_name.barcelonaB] = 'barcelona';
    map[_name.burgos] = 'burgos';
    map[_name.cadiz] = 'cadiz';
    map[_name.cartagena] = 'cartagena';
    map[_name.cordoba] = 'cordoba';
    map[_name.eibar] = 'eibar';
    map[_name.elche] = 'elche';
    map[_name.extremadura] = 'extremadura';
    map[_name.girona] = 'girona';
    map[_name.tarragona] = 'tarragona';
    map[_name.granada] = 'granada';
    map[_name.hercules] = 'hercules';
    map[_name.huelva] = 'huelva';
    map[_name.huesca] = 'huesca';
    map[_name.ibiza] = 'ibiza';
    map[_name.laspalmas] = 'las palmas';
    map[_name.leganes] = 'leganes';
    map[_name.lugo] = 'lugo';
    map[_name.malaga] = 'malaga';
    map[_name.mallorca] = 'mallorca';
    map[_name.merida] = 'merida';
    map[_name.mirandes] = 'mirandes';
    map[_name.numancia] = 'numancia';
    map[_name.ponferradina] = 'ponferradina';
    map[_name.racingSantander] = 'racing santander';
    map[_name.rayoVallecano] = 'rayo';
    map[_name.realmadridB] = 'realmadrid';
    map[_name.murcia] = 'real murcia';
    map[_name.realOviedo] = 'real oviedo';
    map[_name.sportingGijon] = 'sporting gijon';
    map[_name.salamanca] = 'salamanca';
    map[_name.tenerife] = 'tenerife';
    map[_name.toledo] = 'toledo';
    map[_name.xerez] = 'xerez';
    map[_name.zaragoza] = 'zaragoza';

    map[_name.moenchengladbach] = 'borussia';
    map[_name.dortmund] = 'dortmund';
    map[_name.bayernmunique] = 'bayern';
    map[_name.leverkusen] = 'leverkusen';
    map[_name.eintrachtfrankfurt] = 'frankfurt';
    map[_name.augsburg] = 'augsburg';
    map[_name.freiburg] = 'freiburg';
    map[_name.hamburgo] = 'hamburgo';
    map[_name.colonia] = 'colonia';
    map[_name.herthaberlim] = 'hertha';
    map[_name.hoffenheim] = 'hoffenheim';
    map[_name.rbleipzig] = 'leipzig';
    map[_name.schalke04] = 'schalke';
    map[_name.stuttgart] = 'stuttgart';
    map[_name.werderbremen] = 'werderbremen';
    map[_name.wolfsburg] = 'wolfsburg';

    map[_name.aachen] = 'aachen';
    map[_name.arminiaBiefeld] = 'arminia';
    map[_name.berliner] = 'berliner';
    map[_name.bochum] = 'bochum';
    map[_name.carlzeissjena] = 'carl zeiss jena';
    map[_name.chemnitzer] = 'chemnitzer';
    map[_name.darmstadt] = 'darmstadt';
    map[_name.duisburg] = 'duisburg';
    map[_name.dynamoDresden] = 'dynamo dresden';
    map[_name.braunschweiger] = 'braunschweiger';
    map[_name.energieCottbus] = 'energie cottbus';
    map[_name.erzgebirgeaue] = 'erzgebirgeaue';
    map[_name.fortunaDusseldorf] = 'fortuna';
    map[_name.greutherFurth] = 'greuther furth';
    map[_name.hannover96] = 'hannover96';
    map[_name.hansaRostock] = 'hansa';
    map[_name.heidenheim] = 'heidenheim';
    map[_name.holsteinkiel] = 'holstein kiel';
    map[_name.ingolstadt] = 'ingolstadt';
    map[_name.jahnregensburg] = 'jahn';
    map[_name.karlsruher] = 'karlsruher';
    map[_name.kaiserslautern] = 'kaiserslautern';
    map[_name.lokleipzig] = 'lok leipzig';
    map[_name.magdeburg] = 'magdeburg';
    map[_name.mainz05] = 'mainz';
    map[_name.munique1860] = 'munique1860';
    map[_name.nurnberg] = 'nurnberg';
    map[_name.paderborn] = 'paderborn';
    map[_name.rotWeissEssen] = 'rot weiss essen';
    map[_name.saarbrucken] = 'saarbrucken';
    map[_name.sachsenleipzig] = 'sachsen leipzig';
    map[_name.sandhausen] = 'sandhausen';
    map[_name.uerdigen] = 'uerdigen';
    map[_name.unionBerlin] = 'union berlin';
    map[_name.stPauli] = 'st pauli';
    map[_name.zwickau] = 'zwickau';

    map[_name.bordeaux] = 'bordeaux';
    map[_name.lille] = 'lille';
    map[_name.lyon] = 'lyon';
    map[_name.monaco] = 'monaco';
    map[_name.montpellier] = 'montpellier';
    map[_name.nantes] = 'nantes';
    map[_name.nice] = 'nice';
    map[_name.om] = 'marseille';
    map[_name.psg] = 'psg';
    map[_name.reims] = 'reims';
    map[_name.rennes] = 'rennes';
    map[_name.saintetienne] = 'stetienne';
    map[_name.metz] = 'metz';

    map[_name.ajaccio] = 'ajaccio';
    map[_name.amiens] = 'amiens';
    map[_name.angers] = 'angers';
    map[_name.auxerre] = 'auxerre';
    map[_name.bastia] = 'bastia';
    map[_name.brest] = 'brest';
    map[_name.caen] = 'caen';
    map[_name.cannes] = 'cannes';
    map[_name.chamois] = 'chamois';
    map[_name.clermont] = 'clermont';
    map[_name.dijon] = 'dijon';
    map[_name.evian] = 'evian';
    map[_name.guingamp] = 'guingamp';
    map[_name.grenoble] = 'grenoble';
    map[_name.lavallois] = 'lavallois';
    map[_name.lehavre] = 'lehavre';
    map[_name.lemans] = 'lemans';
    map[_name.lens] = 'lens';
    map[_name.lorient] = 'lorient';
    map[_name.nancy] = 'nancy';
    map[_name.nimes] = 'nimes';
    map[_name.orleans] = 'orleans';
    map[_name.pau] = 'pau';
    map[_name.parisFC] = 'paris';
    map[_name.redstar] = 'red star';
    map[_name.rodez] = 'rodez';
    map[_name.rouen] = 'rouen';
    map[_name.toulon] = 'toulon';
    map[_name.toulouse] = 'toulouse';
    map[_name.troyes] = 'troyes';
    map[_name.sedan] = 'sedan';
    map[_name.sochaux] = 'sochaux';
    map[_name.strasbourg] = 'strasbourg';
    map[_name.valenciennes] = 'valenciennes';

    map[_name.benfica] = 'benfica';
    map[_name.porto] = 'porto';
    map[_name.sporting] = 'sporting';
    map[_name.alverca] = 'alverca';
    map[_name.beiramar] = 'beiramar';
    map[_name.belenenses] = 'belenenses';
    map[_name.boavista] = 'boavista';
    map[_name.casapia] = 'casa pia';
    map[_name.chaves] = 'chaves';
    map[_name.coimbra] = 'coimbra';
    map[_name.estoril] = 'estoril';
    map[_name.braga] = 'braga';
    map[_name.covilha] = 'covilha';
    map[_name.espinho] = 'espinho';
    map[_name.estrelaamadora] = 'estrela amadora';
    map[_name.famalicao] = 'famalicao';
    map[_name.farense] = 'farense';
    map[_name.feirense] = 'feirense';
    map[_name.gilVicente] = 'gil vicente';
    map[_name.leixoes] = 'leixoes';
    map[_name.mafra] = 'mafra';
    map[_name.maritimo] = 'maritimo';
    map[_name.moreirense] = 'moreirense';
    map[_name.nacionalMadeira] = 'nacional madeira';
    map[_name.naval] = 'naval';
    map[_name.olhanense] = 'olhanense';
    map[_name.pacosDeFerreira] = 'paços de ferreira';
    map[_name.penafiel] = 'penafiel';
    map[_name.portimonense] = 'portimonense';
    map[_name.rioAve] = 'rio ave';
    map[_name.salgueiros] = 'salgueiros';
    map[_name.santaClara] = 'santa clara';
    map[_name.tondela] = 'tondela';
    map[_name.leiria] = 'leiria';
    map[_name.varzim] = 'varzim';
    map[_name.viseu] = 'viseu';
    map[_name.vizela] = 'vizela';
    map[_name.vitoriaguimaraes] = 'guimaraes';
    map[_name.setubal] = 'vitoria setubal';
    //HOLANDA
    map[_name.ajax] = 'ajax';
    map[_name.feyenoord] = 'feyenoord';
    map[_name.psv] = 'psv';
    map[_name.az] = 'az';
    map[_name.cambuur] = 'cambuur';
    map[_name.denhaag] = 'den haag';
    map[_name.emmen] = 'emmen';
    map[_name.excelsior] = 'excelsior';
    map[_name.fortunasittard] = 'fortuna sittard';
    map[_name.goaheadeagles] = 'go ahead eagles';
    map[_name.groningen] = 'groningen';
    map[_name.heracles] = 'heracles';
    map[_name.heerenveen] = 'heerenveen';
    map[_name.mvv] = 'mvv';
    map[_name.nacbreda] = 'nacbreda';
    map[_name.necnijmegen] = 'nec';
    map[_name.roda] = 'roda';
    map[_name.spartarotterdam] = 'spartarotterdam';
    map[_name.twente] = 'twente';
    map[_name.utrecht] = 'utrecht';
    map[_name.vitesse] = 'vitesse';
    map[_name.volendam] = 'volendam';
    map[_name.vvv] = 'vvv';
    map[_name.waalwijk] = 'waalwijk';
    map[_name.willem] = 'willem';
    map[_name.zwolle] = 'zwolle';
    //BELGICA
    map[_name.anderlecht] = 'anderlecht';
    map[_name.beveren] = 'beveren';
    map[_name.brugge] = 'brugge';
    map[_name.cerclebrugge] = 'cerclebrugge';
    map[_name.charleroi] = 'charleroi';
    map[_name.genk] = 'genk';
    map[_name.gent] = 'gent';
    map[_name.kaseupen] = 'kas eupen';
    map[_name.kortrijk] = 'kortrijk';
    map[_name.lierse] = 'lierse';
    map[_name.mechelen] = 'mechelen';
    map[_name.oostende] = 'oostende';
    map[_name.royalAntwerp] = 'royal';
    map[_name.standardliege] = 'liege';
    map[_name.sttruidense] = 'st truidense';
    map[_name.saintgilloise] = 'st gilloise';
    map[_name.westerlo] = 'westerlo';
    map[_name.zulteWaregem] = 'zulte waregem';

    //ESCOCIA
    map[_name.celtic] = 'celtic';
    map[_name.rangers] = 'rangers';
    map[_name.aberdeen] = 'aberdeen';
    map[_name.dundee] = 'dundee';
    map[_name.hearts] = 'hearts';
    map[_name.hibernian] = 'hibernian';
    map[_name.kilmarnock] = 'kilmarnock';
    map[_name.livingston] = 'livingston';
    map[_name.motherwell] = 'motherwell';
    map[_name.rossCounty] = 'ross county';
    map[_name.stjohnstone] = 'st johnstone';
    map[_name.stmirren] = 'st mirren';
    //IRLANDA
    map[_name.bohemian] = 'bohemian';
    map[_name.cork] = 'cork';
    map[_name.derry] = 'derry';
    map[_name.dundalk] = 'dundalk';
    map[_name.limerick] = 'limerick';
    map[_name.shamrock] = 'shamrock';
    map[_name.sligo] = 'sligo';
    map[_name.shellbourne] = 'shellbourne';
    map[_name.stpatricks] = 'st patricks';
    map[_name.waterford] = 'waterford';
    //GALES
    map[_name.balatown] = 'balatown';
    map[_name.newsaints] = 'new saints';
    map[_name.newtown] = 'newtown';
    //IRLANDA DO NORTE
    map[_name.crusaders] = 'crusaders';
    map[_name.glentoran] = 'glentoran';
    map[_name.linfield] = 'linfield';

    //NORDICOS
    //NORUEGA
    map[_name.aalesund] = 'aalesund';
    map[_name.fredrikstad] = 'fredrikstad';
    map[_name.glimt] = 'glimt';
    map[_name.lillestrom] = 'lillestrom';
    map[_name.lyn] = 'lyn';
    map[_name.odd] = 'odd';
    map[_name.molde] = 'molde';
    map[_name.rosenborg] = 'rosenborg';
    map[_name.valerenga] = 'valerenga';
    map[_name.viking] = 'viking';
    //SWEDEN
    map[_name.malmo] = 'malmo';
    map[_name.aik] = 'aik';
    map[_name.djurgarden] = 'djurgarden';
    map[_name.elfsborg] = 'elfsborg';
    map[_name.hacken] = 'hacken';
    map[_name.hammarby] = 'hammarby';
    map[_name.helsingborg] = 'helsingborg';
    map[_name.ifkgoteborg] = 'ifk';
    map[_name.kalmar] = 'kalmar';
    map[_name.mjallby] = 'mjallby';
    map[_name.norrkoping] = 'norrkoping';
    map[_name.sirius] = 'sirius';
    //DENMARK
    map[_name.aarhus] = 'aarhus';
    map[_name.ab] = 'ab';
    map[_name.aalborg] = 'aalborg';
    map[_name.brondby] = 'brondby';
    map[_name.b1903] = 'b1903';
    map[_name.b1909] = 'b1909';
    map[_name.copenhague] = 'copenhague';
    map[_name.esbjerg] = 'esbjerg';
    map[_name.horsens] = 'horsens';
    map[_name.kb] = 'kb';
    map[_name.lyngby] = 'lyngby';
    map[_name.midtjylland] = 'midtjylland';
    map[_name.nordsjaelland] = 'nordsjaelland';
    map[_name.obodense] = 'ob odense';
    map[_name.randers] = 'randers';
    map[_name.silkeborg] = 'silkeborg';
    map[_name.vejle] = 'vejle';
    map[_name.viborg] = 'viborg';
    //FINLANDIA
    map[_name.helsinki] = 'hjk helsinki';
    map[_name.haka] = 'haka';
    map[_name.ilves] = 'ilves';
    map[_name.turku] = 'inter turku';
    map[_name.kups] = 'kups';
    map[_name.kuusysi] = 'kuusysi';
    map[_name.lahti] = 'lahti';
    map[_name.tampere] = 'tampere';
    //ISLANDIA
    map[_name.akraness] = 'akraness';
    map[_name.breidablik] = 'breidablik';
    map[_name.fh] = 'hafnarfjardar';
    map[_name.reykjavik] = 'reykjavik';
    map[_name.valur] = 'valur';
    map[_name.vikingur] = 'vikingur';
    //ILHAS FAROE
    map[_name.b36] = 'b36';
    map[_name.klaksvik] = 'klaksvik';
    map[_name.hb] = 'hb';
    map[_name.vikingurFaroe] = 'vikingur faroe';

    //AUSTRIA
    map[_name.admira] = 'admira';
    map[_name.austria] = 'austria';
    map[_name.rbsalzburg] = 'rbsalzburg';
    map[_name.rapidviena] = 'rapidviena';
    map[_name.laskLinz] = 'lask';
    map[_name.ried] = 'ried';
    map[_name.tirol] = 'tirol';
    map[_name.sturmGraz] = 'sturm';
    map[_name.wolfsberger] = 'wolfsberger';
    //SUIÇA
    map[_name.aarau] = 'aarau';
    map[_name.basel] = 'basel';
    map[_name.grasshoppers] = 'grasshopper';
    map[_name.lausanne] = 'lausanne';
    map[_name.lugano] = 'lugano';
    map[_name.luzern] = 'luzern';
    map[_name.servette] = 'servette';
    map[_name.sion] = 'sion';
    map[_name.stgallen] = 'st gallen';
    map[_name.thun] = 'thun';
    map[_name.youngBoys] = 'young boys';
    map[_name.winterthur] = 'winterthur';
    map[_name.zurich] = 'zurich';
    //POLONIA
    map[_name.gornik] = 'gornik';
    map[_name.gwardia] = 'gwardia';
    map[_name.legiaWarszawa] = 'legia';
    map[_name.lechPoznan] = 'lech';
    map[_name.lechiagdansk] = 'lechia gdansk';
    map[_name.pogon] = 'pogon';
    map[_name.rakow] = 'rakow';
    map[_name.ruchchorzow] = 'ruch';
    map[_name.slaskwrocklaw] = 'slask';
    map[_name.wislaKrakow] = 'wisla krakow';
    map[_name.wislaPlock] = 'wisla plock';
    map[_name.widzew] = 'widzew';

    //TURQUIA
    map[_name.galatasaray] = 'galatasaray';
    map[_name.fenerbahce] = 'fenerbahce';
    map[_name.besiktas] = 'besiktas';
    map[_name.adanaspor] = 'adanaspor';
    map[_name.alanyaspor] = 'alanyaspor';
    map[_name.antalyaspor] = 'antalyaspor';
    map[_name.bursaspor] = 'bursaspor';
    map[_name.denizlispor] = 'denizlispor';
    map[_name.eskisehirspor] = 'eskisehirspor';
    map[_name.gaziantepspor] = 'gaziantepspor';
    map[_name.genclerbirligi] = 'genclerbirligi';
    map[_name.goztepe] = 'goztepe';
    map[_name.instanbul] = 'instanbul';
    map[_name.karagumruk] = 'karagumruk';
    map[_name.kasimpasa] = 'kasimpasa';
    map[_name.kayserispor] = 'kayserispor';
    map[_name.kocaelispor] = 'kocaelispor';
    map[_name.konyaspor] = 'konyaspor';
    map[_name.hatayspor] = 'hatayspor';
    map[_name.malatyaspor] = 'malatyaspor';
    map[_name.rizespor] = 'rizespor';
    map[_name.samsunspor] = 'samsunspor';
    map[_name.sivasspor] = 'sivasspor';
    map[_name.trabzonspor] = 'trabzonspor';
    //GRECIA-CHIPRE-ISRAEL
    map[_name.olympiacos] = 'olympiacos';
    map[_name.aek] = 'aek';
    map[_name.asteras] = 'asteras';
    map[_name.paok] = 'paok';
    map[_name.panathinaikos] = 'panathinaikos';
    map[_name.aris] = 'aris';
    map[_name.ionikos] = 'ionikos';
    map[_name.pasGiannina] = 'pas giannina';
    map[_name.ofi] = 'ofi';
    //CHIPRE
    map[_name.apoel] = 'apoel';
    map[_name.aeklarnaca] = 'aek larnaca';
    map[_name.aellimassol] = 'ael limassol';
    map[_name.anorthosis] = 'anorthosis';
    map[_name.omonia] = 'omonia';
    map[_name.apollon] = 'apollon';
    //ISRAEL
    map[_name.ashdod] = 'ashdod';
    map[_name.beitarJerusalem] = 'beitar jerusalem';
    map[_name.hapoelBerSheva] = 'hapoel ber sheva';
    map[_name.hapoelPetah] = 'hapoel petah';
    map[_name.hapoelTelAviv] = 'hapoel tel aviv';
    map[_name.maccabiHaifa] = 'maccabi haifa';
    map[_name.maccabiTelAviv] = 'maccabi tel aviv';
    map[_name.maccabiNetanya] = 'netanya';
    map[_name.ramatGan] = 'ramat gan';

    //RUSSIA
    map[_name.zenit] = 'zenit';
    map[_name.cska] = 'cska';
    map[_name.spartakmoscou] = 'spartak';
    map[_name.krasnodar] = 'krasnodar';
    map[_name.sochi] = 'sochi';
    map[_name.rubinKazan] = 'rubin kazan';
    map[_name.akhmatGrozny] = 'akhmat grozny';
    map[_name.alania] = 'alania';
    map[_name.amkar] = 'amkar';
    map[_name.anzhi] = 'anzhi';
    map[_name.khimki] = 'khimki';
    map[_name.krylyaSovetov] = 'krylya sovetov';
    map[_name.dinamoMoscou] = 'dinamo moscou';
    map[_name.lokomotivMoscou] = 'lokomotiv';
    map[_name.nizhnyNovgorod] = 'novgorod';
    map[_name.orenburg] = 'orenburg';
    map[_name.rostov] = 'rostov';
    map[_name.rotor] = 'rotor';
    map[_name.torpedo] = 'torpedo';
    map[_name.tula] = 'tula';
    map[_name.ufa] = 'ufa';
    map[_name.ural] = 'ural';

    //EX-URSS
    map[_name.shaktardonetsk] = 'shaktar';
    map[_name.dinamokiev] = 'dinamokiev';
    map[_name.desna] = 'desna';
    map[_name.dnipro] = 'dnipro';
    map[_name.lviv] = 'lviv';
    map[_name.metalist] = 'metalist';
    map[_name.odesa] = 'odesa';
    map[_name.vorskla] = 'vorskla';
    map[_name.zorya] = 'zorya';

    //MOLDOVA
    map[_name.milsami] = 'milsami';
    map[_name.sheriffTiraspol] = 'sheriff';
    map[_name.zimbru] = 'zimbru';
    //BELARUS
    map[_name.bate] = 'bate';
    map[_name.dinamoBrest] = 'dinamo brest';
    map[_name.dinamoMinsk] = 'dinamo minsk';
    map[_name.gomel] = 'gomel';
    map[_name.soligorsk] = 'soligorsk';
    //AZERBAIJAN
    map[_name.neftci] = 'neftci';
    map[_name.qabala] = 'qabala';
    map[_name.qarabag] = 'qarabag';
    map[_name.zira] = 'zira';
    //GEORGIA
    map[_name.batumi] = 'batumi';
    map[_name.dila] = 'dila';
    map[_name.tbilisi] = 'tbilisi';
    map[_name.kutaisi] = 'kutaisi';
    map[_name.saburtalo] = 'saburtalo';
    //ARMENIA
    map[_name.alashkent] = 'alashkent';
    map[_name.araratArmenia] = 'ararat armenia';
    map[_name.araratYerevan] = 'ararat yerevan';
    map[_name.pyunikyerevan] = 'pyunik yerevan';
    map[_name.shirak] = 'shirak';
    //KAZAKHSTAN
    map[_name.aktobe] = 'aktobe';
    map[_name.astana] = 'astana';
    map[_name.kairat] = 'kairat';
    map[_name.irtysh] = 'irtysh';
    map[_name.shakhter] = 'shakhter';
    map[_name.okzhetpes] = 'okzhetpes';
    map[_name.ordabasy] = 'ordabasy';
    map[_name.taraz] = 'taraz';
    map[_name.tobol] = 'tobol';
    map[_name.zhenis] = 'zhenis';

    //BALTICOS
    //ESTONIA
    map[_name.floratallinn] = 'flora talinn';
    map[_name.levadiatallinn] = 'levadia';
    map[_name.paide] = 'paide';
    //LATVIA
    map[_name.rigaRFS] = 'riga rfs';
    map[_name.rigafc] = 'riga';
    map[_name.valmiera] = 'valmiera';
    //LITUANIA
    map[_name.suduva] = 'suduva';
    map[_name.kaunu] = 'kaunu';
    map[_name.zalgiris] = 'zalgiris';

    //LESTE EUROPEU
    //SERVIA
    map[_name.estrelavermelha] = 'estrelavermelha';
    map[_name.partizan] = 'partizan';
    map[_name.cukaricki] = 'cukaricki';
    map[_name.radnik] = 'radnik';
    map[_name.radnicki] = 'radnicki';
    map[_name.vojvodina] = 'vojvodina';
    //BULGARIA
    map[_name.beroe] = 'beroe';
    map[_name.cskaSofia] = 'cska sofia';
    map[_name.levskiSofia] = 'levski sofia';
    map[_name.litexLovech] = 'litex lovech';
    map[_name.lokplovdiv] = 'lok plovdiv';
    map[_name.loksofia] = 'lok sofia';
    map[_name.ludogorets] = 'ludogorets';
    map[_name.slaviaSofia] = 'slavia sofia';
    //CROACIA
    map[_name.dinamozagreb] = 'dinamozagreb';
    map[_name.hadjuksplit] = 'hadjuk split';
    map[_name.lokZagreb] = 'lok zagreb';
    map[_name.rijeka] = 'rijeka';
    map[_name.osijek] = 'osijek';
    //ESLOVAQUIA
    map[_name.dac1904] = 'dac1904';
    map[_name.interBratislava] = 'inter bratislava';
    map[_name.slovanBratislava] = 'slovan bratislava';
    map[_name.trnava] = 'trnava';
    map[_name.zilina] = 'zilina';
    //ESLOVENIA
    map[_name.celje] = 'celje';
    map[_name.domzale] = 'domzale';
    map[_name.ljublijana] = 'ljublijana';
    map[_name.maribor] = 'maribor';
    map[_name.mura] = 'mura';
    //REPUBLICA TCHECA
    map[_name.banikostrava] = 'banik';
    map[_name.bohemians] = 'bohemians';
    map[_name.brno] = 'brno';
    map[_name.dukla] = 'dukla';
    map[_name.jablonec] = 'jablonec';
    map[_name.slaviaPraha] = 'slavia praha';
    map[_name.slovacko] = 'slovacko';
    map[_name.slovanLiberec] = 'slovan liberec';
    map[_name.spartapraga] = 'spartapraga';
    map[_name.teplice] = 'teplice';
    map[_name.viktoriaPlzen] = 'viktoria';
    //HUNGRIA
    map[_name.ferencvaros] = 'ferencvaros';
    map[_name.debreceni] = 'debreceni';
    map[_name.fehervar] = 'fehervar';
    map[_name.gyori] = 'gyori';
    map[_name.honved] = 'honved';
    map[_name.kisvarda] = 'kisvarda';
    map[_name.mtk] = 'mtk';
    map[_name.ujpest] = 'ujpest';
    map[_name.vasas] = 'vasas';
    //ROMENIA
    map[_name.argesPitesti] = 'arges pitesti';
    map[_name.cluj] = 'cluj';
    map[_name.craiova] = 'craiova';
    map[_name.dinamoBucuresti] = 'dinamo bucuresti';
    map[_name.otelul] = 'otelul';
    map[_name.rapidBucuresti] = 'rapid bucuresti';
    map[_name.steauaBucuresti] = 'steaua bucareste';
    map[_name.arad] = 'uta arad';
    //MACEDONIA
    map[_name.akaPandev] = 'pandev';
    map[_name.makedonija] = 'makedonija';
    map[_name.rabotnicki] = 'rabotnicki';
    map[_name.shkendija] = 'shkendija';
    map[_name.shkupi] = 'shkupi';
    map[_name.vardar] = 'vardar';
    //ALBANIA
    map[_name.tiranafk] = 'tirana fk';
    map[_name.laci] = 'laci';
    map[_name.partizanitirane] = 'partizani tirane';
    map[_name.skenderbeu] = 'skenderbeu';
    map[_name.vllaznia] = 'vllaznia';
    //BOSNIA
    map[_name.sarajevo] = 'sarajevo';//BOSNIA
    map[_name.zrinjski] = 'zrinjski';//BOSNIA
    //KOSOVO
    map[_name.ballkani] = 'ballkani';
    map[_name.drita] = 'drita';
    map[_name.llapi] = 'llapi';
    map[_name.prishtina] = 'prishtina';
    //MONTENEGRO
    map[_name.podgorica] = 'podgorica';
    map[_name.sutjeska] = 'sutjeska';
    //SAN MARINO
    map[_name.folgore] = 'folgore';
    map[_name.lafiorita] = 'lafiorita';
    map[_name.trefiori] = 'tre fiori';
    map[_name.trepenne] = 'tre penne';
    //MALTA
    map[_name.floriana] = 'floriana';
    map[_name.sliema] = 'sliema';
    map[_name.hiberniansMALTA] = 'hibernians malta';
    map[_name.valletta] = 'valletta';
    //ANDORRA
    map[_name.santacoloma] = 'santa coloma';
    //GIBRALTAR
    map[_name.europa] = 'europa';
    map[_name.lincolnRedImps] = 'lincoln red imps';
    //LUXEMBURGO
    map[_name.dudelange] = 'f91 dudelange';
    map[_name.jeunesseesch] = 'jeunesse esch';
    //LIECHSTEINTEIN
    map[_name.balzers] = 'balzers';
    map[_name.eschenMauren] = 'eschen mauren';
    map[_name.vaduz] = 'vaduz';




    ///////////////////////////////////////////////////////////////////////////
    ///////////////////////////////////////////////////////////////////////////
    map[_name.atleticomg] = 'atleticomg';
    map[_name.atleticopr] = 'atleticopr';
    map[_name.bahia] = 'bahia'; 
    map[_name.botafogo] = 'botafogo'; 
    map[_name.corinthians] = 'corinthians';
    map[_name.cruzeiro] = 'cruzeiro'; 
    map[_name.flamengo] = 'flamengo';
    map[_name.fluminense] = 'fluminense';
    map[_name.gremio] = 'gremio';
    map[_name.goias] = 'goias';
    map[_name.internacional] = 'internacional';
    map[_name.palmeiras] = 'palmeiras';   
    map[_name.santos] = 'santos';
    map[_name.saopaulo] = 'saopaulo';
    map[_name.sport] = 'sport';
    map[_name.vasco] = 'vasco';

    map[_name.americamg] = 'americamg';
    map[_name.atleticogo] = 'atleticogo';
    map[_name.cuiaba] = 'cuiaba';
    map[_name.chapecoense] = 'chapecoense';     
    map[_name.bragantino] = 'bragantino';      
    map[_name.ceara] = 'ceara';
    map[_name.coritiba] = 'coritiba';
    map[_name.criciuma] = 'criciuma';
    map[_name.figueirense] = 'figueirense';
    map[_name.fortaleza] = 'fortaleza'; 
    map[_name.guarani] = 'guarani'; 
    map[_name.juventude] = 'juventude';  
    map[_name.nautico] = 'nautico'; 
    map[_name.parana] = 'parana';  
    map[_name.pontepreta] = 'pontepreta';  
    map[_name.vitoria] = 'vitoria'; 

    map[_name.abc] = 'abc'; 
    map[_name.abc] = 'abc';  
    map[_name.aguiamaraba] = 'aguia maraba';  
    map[_name.anapolina] = 'anapolina';  
    map[_name.altos] = 'altos';  
    map[_name.aparecidense] = 'aparecidense';  
    map[_name.asa] = 'asa';  
    map[_name.avai] = 'avai';
    map[_name.americaRJ] = 'americarj';  
    map[_name.americaRN] = 'americarn';
    map[_name.atleticoAC] = 'atletico ac';
    map[_name.azuriz] = 'azuriz';  
    map[_name.bahiafeira] = 'bahia feira';  
    map[_name.bangu] = 'bangu';  
    map[_name.boaesporte] = 'boa esporte';  
    map[_name.boavistaRJ] = 'boavista rj';  
    map[_name.botafogoPB] = 'botafogo pb';  
    map[_name.botafogoSP] = 'botafogo sp';  
    map[_name.brasilPelotas] = 'brasil pelotas'; 
    map[_name.brasilia] = 'brasilia';  
    map[_name.brasiliense] = 'brasiliense';  
    map[_name.brusque] = 'brusque';
    map[_name.caldense] = 'caldense';
    map[_name.campinense] = 'campinense';  
    map[_name.cascavel] = 'cascavel';  
    map[_name.caxias] = 'caxias';
    map[_name.ceilandia] = 'ceilandia';
    map[_name.cene] = 'cene';
    map[_name.central] = 'central';  
    map[_name.cianorte] = 'cianorte';  
    map[_name.comercial] = 'comercial';  
    map[_name.confianca] = 'confianca';  
    map[_name.crb] = 'crb'; 
    map[_name.csa] = 'csa';
    map[_name.desportiva] = 'desportiva';
    map[_name.fast] = 'fast';
    map[_name.ferroviaria] = 'ferroviaria';
    map[_name.flamengoPI] = 'fla pi';
    map[_name.gama] = 'gama'; 
    map[_name.globo] = 'globo';
    map[_name.goianesia] = 'goianesia';
    map[_name.goytacaz] = 'goytacaz'; 
    map[_name.novorizontino] = 'gremio novorizontino';
    map[_name.ibis] = 'ibis'; 
    map[_name.icasa] = 'icasa';
    map[_name.interporto] = 'interporto';
    map[_name.ipatinga] = 'ipatinga';
    map[_name.itabaiana] = 'itabaiana'; 
    map[_name.ituano] = 'ituano'; 
    map[_name.interLimeira] = 'interlimeira';  
    map[_name.joinville] = 'joinville'; 
    map[_name.juventusMooca] = 'juventus mooca';  
    map[_name.linense] = 'linense'; 
    map[_name.londrina] = 'londrina'; 
    map[_name.luverdense] = 'luverdense'; 
    map[_name.macae] = 'macae'; 
    map[_name.madureira] = 'madureira'; 
    map[_name.manaus] = 'manaus';
    map[_name.maranhao] = 'maranhao';
    map[_name.marilia] = 'marilia'; 
    map[_name.mirassol] = 'mirassol';  
    map[_name.mixto] = 'mixto';  
    map[_name.mogimirim] = 'mogi mirim';  
    map[_name.motoclub] = 'moto club';  
    map[_name.nacionalSP] = 'nacionalsp';
    map[_name.nacionalAM] = 'nacionalam';
    map[_name.noroeste] = 'noroeste'; 
    map[_name.novaiguacu] = 'nova iguacu'; 
    map[_name.oeste] = 'oeste'; 
    map[_name.operarioms] = 'operario ms'; 
    map[_name.operarioPR] = 'operariopr'; 
    map[_name.palmas] = 'palmas';  
    map[_name.paysandu] = 'paysandu';  
    map[_name.paulista] = 'paulista';
    map[_name.piaui] = 'piaui';
    map[_name.portuguesa] = 'portuguesa';  
    map[_name.portuguesaRJ] = 'portuguesa rj';  
    map[_name.portuguesasantista] = 'portuguesa santista';  
    map[_name.remo] = 'remo'; 
    map[_name.resende] = 'resende';
    map[_name.riverPI] = 'river pi'; 
    map[_name.riobrancoAC] = 'rio branco';
    map[_name.riobrancoES] = 'rio branco es';
    map[_name.riobrancoSP] = 'rio branco sp'; 
    map[_name.rioclaro] = 'rio claro'; 
    map[_name.riopreto] = 'rio preto'; 
    map[_name.salgueiro] = 'salgueiro'; 
    map[_name.santacruz] = 'santacruz';  
    map[_name.sampaio] = 'sampaio'; 
    map[_name.santoandre] = 'santo andre';
    map[_name.santosAP] = 'santos';
    map[_name.saobento] = 'sao bento';  
    map[_name.saobernardo] = 'sao bernardo';  
    map[_name.saocaetano] = 'sao caetano';  
    map[_name.saojose] = 'sao jose';  
    map[_name.saojoseRS] = 'sao jose rs';  
    map[_name.saoraimundo] = 'sao raimundo';
    map[_name.serra] = 'serra';
    map[_name.sergipe] = 'sergipe';
    map[_name.sinop] = 'sinop';
    map[_name.sousa] = 'sousa';  
    map[_name.sobradinho] = 'sobradinho';  
    map[_name.taubate] = 'taubate';  
    map[_name.tocantinopolis] = 'tocantinopolis';  
    map[_name.tombense] = 'tombense';  
    map[_name.trem] = 'trem';  
    map[_name.treze] = 'treze';
    map[_name.tubarao] = 'tubarao';
    map[_name.tunaluso] = 'tunaluso';  
    map[_name.tupi] = 'tupi';  
    map[_name.uberlandia] = 'uberlandia';
    map[_name.uniaorondonopolis] = 'uniao rondonopolis';
    map[_name.urt] = 'urt';  
    map[_name.vilanova] = 'vila nova';  
    map[_name.voltaredonda] = 'volta redonda';  
    map[_name.xvpiracicaba] = 'xv';  
    map[_name.xvjau] = 'xv jau';  
    map[_name.ypirangaRS] = 'ypiranga';  


    ///////////////////////////////////////////////
    //ARGENTINA
    map[_name.aldosivi] = 'aldosivi';     
    map[_name.allboys] = 'allboys';     
    map[_name.almagro] = 'almagro';     
    map[_name.argentinojuniors] = 'argentinosjr';
    map[_name.atleticoTucuman] = 'atletico tucuman';
    map[_name.rafaela] = 'atl rafaela';
    map[_name.arsenalsarandi] = 'sarandi';     
    map[_name.banfield] = 'banfield';      
    map[_name.barracas] = 'barracas';      
    map[_name.belgrano] = 'belgrano';      
    map[_name.bocajuniors] = 'bocajuniors';
    map[_name.chacarita] = 'chacarita';      
    map[_name.centralCordoba] = 'central cordoba';      
    map[_name.colon] = 'colon';
    map[_name.defensayjusticia] = 'defensa';
    map[_name.estudiantes] = 'estudiantes';
    map[_name.ferro] = 'ferro';
    map[_name.godoycruz] = 'godoy cruz'; 
    map[_name.independiente] = 'independiente';
    map[_name.instituto] = 'instituto';
    map[_name.huracan] = 'huracan'; 
    map[_name.lanus] = 'lanus'; 
    map[_name.newells] = 'newells';
    map[_name.nuevachicago] = 'nueva chicago';
    map[_name.olimpo] = 'olimpo';
    map[_name.patronato] = 'patronato'; 
    map[_name.platense] = 'platense'; 
    map[_name.quilmes] = 'quilmes'; 
    map[_name.racing] = 'racing'; 
    map[_name.riverplate] = 'riverplate';  
    map[_name.rosario] = 'rosariocentral';
    map[_name.sanlorenzo] = 'sanlorenzo';  
    map[_name.sarmiento] = 'sarmiento';  
    map[_name.talleres] = 'talleres';  
    map[_name.temperley] = 'temperley';  
    map[_name.gimnasia] = 'gimnasia'; 
    map[_name.sanmartin] = 'san martin'; 
    map[_name.tigre] = 'tigre'; 
    map[_name.unionSantaFe] = 'union santa fe'; 
    map[_name.velez] = 'velez'; 

    //AMÉRICA DO SUL
    map[_name.penarol] = 'penarol';
    map[_name.nacional] = 'nacional';
    map[_name.bostonriver] = 'boston river';
    map[_name.cerrouru] = 'cerro uru';
    map[_name.danubio] = 'danubio';  
    map[_name.defensor] = 'defensor';
    map[_name.fenix] = 'fenix';
    map[_name.liverpoolURU] = 'liverpool uru';
    map[_name.montevideoCity] = 'montevideo';
    map[_name.plazacolonia] = 'plaza colonia';  
    map[_name.rentistas] = 'rentistas';  
    map[_name.riverURU] = 'river uru';  
    map[_name.montWanderers] = 'wanderers';

    map[_name.olimpia] = 'olimpia';      
    map[_name.cerroporteno] = 'cerro';
    map[_name.libertad] = 'libertad';
    map[_name.guaraniPAR] = 'guarani paraguai';  
    map[_name.nacionalPAR] = 'nacional paraguai';  
    map[_name.colegiales] = 'colegiales';
    map[_name.octubre12] = '12 de octubre';
    map[_name.soldeamerica] = 'sol de america';  
    map[_name.luqueno] = 'luqueno';
    map[_name.tacuary] = 'tacuary';

    map[_name.colocolo] = 'colocolo';
    map[_name.lau] = 'lau';
    map[_name.audaxItaliano] = 'audax';  
    map[_name.cobreloa] = 'cobreloa';
    map[_name.cobresal] = 'cobresal';
    map[_name.coquimbo] = 'coquimbo';  
    map[_name.curico] = 'curico';  
    map[_name.evertonchi] = 'everton chile';  
    map[_name.huachipato] = 'huachipato';  
    map[_name.iquique] = 'iquique';  
    map[_name.laCalera] = 'la calera';  
    map[_name.laserena] = 'la serena';  
    map[_name.nublense] = 'nublense';  
    map[_name.ohiggins] = 'ohiggins';  
    map[_name.palestino] = 'palestino';  
    map[_name.santiagowanderers] = 'santiago wanderers';  
    map[_name.unionespanola] = 'union';  
    map[_name.univcatolica] = 'universidadcatolica'; 
    //BOLIVIA
    map[_name.aurora] = 'aurora';  
    map[_name.blooming] = 'blooming'; 
    map[_name.bolivar] = 'bolivar'; 
    map[_name.alwaysReady] = 'always ready';  
    map[_name.guabira] = 'guabira';  
    map[_name.indPetrolero] = 'ind petrolero';  
    map[_name.nacionalpotosi] = 'nacional potosi';  
    map[_name.palmaflor] = 'palmaflor';  
    map[_name.orientePetrolero] = 'oriente';  
    map[_name.realsantacruz] = 'real santa cruz';  
    map[_name.royalpari] = 'royal pari';  
    map[_name.sanJoseBOL] = 'san jose';  
    map[_name.theStrongest] = 'the strongest';  
    map[_name.sucre] = 'sucre';  
    //PERU
    map[_name.alianzalima] = 'alianzalima';  
    map[_name.binacional] = 'binacional';  
    map[_name.cesarvallejo] = 'cesar vallejo';  
    map[_name.carlosmanucci] = 'carlos manucci';  
    map[_name.cienciano] = 'cienciano';  
    map[_name.cusco] = 'cusco';  
    map[_name.depmunicipal] = 'depmunicipal';  
    map[_name.jorge] = 'jorge';
    map[_name.juanaurich] = 'juan aurich';
    map[_name.melgar] = 'melgar';  
    map[_name.universitario] = 'universitario';  
    map[_name.sportingcristal] = 'sportingcristal'; 
    map[_name.sportboys] = 'sport boys';  
    //EQUADOR
    map[_name.aucas] = 'aucas';  
    map[_name.barcelonaequ] = 'barcelonaequ';  
    map[_name.delfin] = 'delfin';
    map[_name.idelvalle] = 'delvalle';  
    map[_name.depcuenca] = 'depcuenca';
    map[_name.depquito] = 'depquito';
    map[_name.elnacional] = 'el nacional';
    map[_name.emelec] = 'emelec';  
    map[_name.guayaquil] = 'guayaquil';  
    map[_name.ldu] = 'ldu';  
    map[_name.macara] = 'macara';  
    map[_name.mushucruna] = 'mushuc runa';  
    map[_name.olmedo] = 'olmedo';  
    map[_name.uniequ] = 'uniequ';
    //COLOMBIA
    map[_name.huila] = 'huila';
    map[_name.rioNegroAguilas] = 'aguilas';
    map[_name.alianzaPetrolera] = 'alianza petrolera';
    map[_name.americadecali] = 'americacali';
    map[_name.atleticonacional] = 'atleticonacional';
    map[_name.boyaca] = 'boyaca chico';
    map[_name.bucaramanga] = 'bucaramanga';
    map[_name.cucuta] = 'cucuta';  
    map[_name.deportivocali] = 'deportivocali';      
    map[_name.depPasto] = 'dep pasto';
    map[_name.envigado] = 'envigado';
    map[_name.imedellin] = 'medellin';
    map[_name.junior] = 'junior';
    map[_name.laequidad] = 'la equidad';  
    map[_name.millonarios] = 'millonarios';
    map[_name.oncecaldas] = 'oncecaldas';
    map[_name.patriotas] = 'patriotas';
    map[_name.pereira] = 'pereira';
    map[_name.santafe] = 'santafe'; 
    map[_name.tolima] = 'tolima';  
    //VENEZUELA
    map[_name.carabobo] = 'carabobo'; 
    map[_name.caracas] = 'caracas'; 
    map[_name.laGuaira] = 'la guaira';  
    map[_name.tachira] = 'deportivo tachira';  
    map[_name.estudiantesmerida] = 'estudiantes merida';  
    map[_name.deplara] = 'deplara';
    map[_name.metropolitanos] = 'metropolitanos';
    map[_name.mineros] = 'mineros'; 
    map[_name.minerven] = 'minerven'; 
    map[_name.monagas] = 'monagas'; 
    map[_name.portuguesaven] = 'portuguesa ven'; 
    map[_name.trujillanos] = 'trujillanos'; 
    map[_name.zamora] = 'zamora'; 
    map[_name.zulia] = 'zulia'; 

    ///////////////////////////////////////////////////////////////////////////
    //MÉXICO
    map[_name.atlante] = 'atlante'; 
    map[_name.atlas] = 'atlas'; 
    map[_name.americamex] = 'americamx';
    map[_name.celaya] = 'celaya';
    map[_name.correcaminos] = 'correcaminos';
    map[_name.chivas] = 'chivas';  
    map[_name.cruzazul] = 'cruzazul';
    map[_name.dorados] = 'dorados';
    map[_name.jaguares] = 'jaguares'; 
    map[_name.juarez] = 'juarez';
    map[_name.irapuato] = 'irapuato';
    map[_name.leon] = 'leon'; 
    map[_name.leonesNegros] = 'leones negros'; 
    map[_name.mazatlan] = 'mazatlan';  
    map[_name.monterrey] = 'monterrey';  
    map[_name.morelia] = 'morelia'; 
    map[_name.necaxa] = 'necaxa'; 
    map[_name.pachuca] = 'pachuca';  
    map[_name.puebla] = 'puebla'; 
    map[_name.pumas] = 'pumas';  
    map[_name.queretaro] = 'queretaro';
    map[_name.sanluis] = 'san luis'; 
    map[_name.santosLaguna] = 'santos laguna';
    map[_name.tecos] = 'tecos';
    map[_name.tigres] = 'tigres';
    map[_name.tijuana] = 'tijuana';
    map[_name.toluca] = 'toluca';
    map[_name.torosNeza] = 'toros neza';
    map[_name.veracruz] = 'veracruz';

    map[_name.atlanta] = 'atlanta';
    map[_name.austin] = 'austin';
    map[_name.cincinnati] = 'cincinnati';
    map[_name.charlotte] = 'charlotte';
    map[_name.chicago] = 'chicago';
    map[_name.columbuscrew] = 'columbus';
    map[_name.coloradorapids] = 'colorado';
    map[_name.dcunited] = 'dcunited';
    map[_name.fcdallas] = 'dallas';
    map[_name.houston] = 'houston';
    map[_name.lagalaxy] = 'la';  
    map[_name.losangelesfc] = 'lafc';  
    map[_name.minnesota] = 'minnesota';     
    map[_name.montreal] = 'montreal';  
    map[_name.nashville] = 'nashville';  
    map[_name.nerevolution] = 'nerevolution'; 
    map[_name.nycity] = 'nycity';  
    map[_name.nyredbulls] = 'nyredbull';      
    map[_name.orlando] = 'orlando'; 
    map[_name.portland] = 'portland'; 
    map[_name.seattle] = 'seattle'; 
    map[_name.intermiami] = 'miami';  
    map[_name.philadelphia] = 'philadelphia';  
    map[_name.toronto] = 'toronto';  
    map[_name.realSaltLake] = 'real salt lake';  
    map[_name.sanJoseEarthquakes] = 'san jose earthquakes';  
    map[_name.kansas] = 'sporting kansas';  
    map[_name.vancouver] = 'vancouver';  

    //CANADA
    map[_name.cavalry] = 'cavalry';  
    map[_name.forge] = 'forge';  

    //COSTA RICA
    map[_name.saprissa] = 'saprissa';  
    map[_name.alajuelense] = 'alajuelense';  
    map[_name.herediano] = 'herediano';  
    map[_name.cartagines] = 'cartagines';  
    map[_name.sanCarlos] = 'san carlos';  
    map[_name.sptSanJose] = 'spt san jose';  
    //EL SALVADOR
    map[_name.alianzaELS] = 'alianza el salvador';  
    map[_name.atleticomarte] = 'atletico marte';  
    map[_name.aguila] = 'aguila';
    map[_name.fas] = 'fas';
    map[_name.firpo] = 'firpo';
    map[_name.isidro] = 'isidro metapan';
    map[_name.santaTecla] = 'santa tecla';
    //GUATEMALA
    map[_name.antiguaGuatemala] = 'antigua';
    map[_name.comunicaciones] = 'comunicaciones';
    map[_name.municipal] = 'municipal';
    map[_name.xelaju] = 'xelaju';
    //HONDURAS
    map[_name.olimpiaHON] = 'olimpia honduras';  
    map[_name.rcdespana] = 'rcd espana';  
    map[_name.motagua] = 'motagua';  
    map[_name.marathon] = 'marathon';
    //NICARAGUA
    map[_name.realEsteli] = 'real esteli';  
    map[_name.managua] = 'managua';  
    map[_name.diriangen] = 'diriangen';  
    //PANAMA
    map[_name.alianzaPAN] = 'alianza panama';  
    map[_name.arabeunido] = 'arabe unido';  
    map[_name.independienteChorrera] = 'independiente chorrera';  
    map[_name.plazaAmador] = 'plaza amador';  
    map[_name.tauro] = 'tauro';

    //CARIBE
    //CUBA
    map[_name.pinardelrio] = 'pinar del rio';  
    map[_name.santiagoCuba] = 'santiago cuba';  
    map[_name.villaclara] = 'villa clara';  
    //JAMAICA
    map[_name.arnettGardens] = 'arnett gardens';  
    map[_name.harbourView] = 'harbour view';  
    map[_name.portmore] = 'portmore';  
    map[_name.tivoliGardens] = 'tivoli gardens';  
    map[_name.waterhouse] = 'waterhouse';  
    //HAITI
    map[_name.arcahaie] = 'arcahaie';  
    map[_name.donbosco] = 'don bosco';
    map[_name.fica] = 'fica';  
    map[_name.violette] = 'violette haiti';
    //REP. DOMINICANA
    //SURINAME
    map[_name.robinhood] = 'robinhood';  
    map[_name.transvaal] = 'transvaal';  
    //TRINIDAD TOBAGO
    map[_name.defenseforce] = 'defense force';  
    map[_name.police] = 'police';  

    //////////////////////////////////////////////////////////////////////////////////
    //CHINA
    map[_name.ghuangzhou] = 'ghuangzhou';
    map[_name.ghuangzhouCity] = 'ghuangzhou city';
    map[_name.beijingguoan] = 'beijing';
    map[_name.changchun] = 'changchun';
    map[_name.chongqing] = 'chongqing';
    map[_name.dalian] = 'dalian';
    map[_name.hebei] = 'hebei';
    map[_name.henan] = 'henan';
    map[_name.liaoning] = 'liaoning';
    map[_name.nantong] = 'nantong';
    map[_name.qingdao] = 'qingdao';
    map[_name.shandong] = 'shandong_luneng';      
    map[_name.shanghaisipg] = 'shanghai';
    map[_name.shanghaishenhua] = 'shanghai shenhua';
    map[_name.tianjin] = 'tianjin';     
    map[_name.wuhan] = 'wuhan';
    map[_name.wuhan3towns] = 'wuhan three towns';
    map[_name.zhejiang] = 'zhejiang';
    //HONG KONG
    map[_name.kitchee] = 'kitchee';

    //JAPAN
    map[_name.albirex] = 'albirex';
    map[_name.avispa] = 'avispa';
    map[_name.cerezoOsaka] = 'cerezo osaka';
    map[_name.gambaOsaka] = 'gamba osaka';
    map[_name.fcTokyo] = 'fc tokyo';
    map[_name.hiroshima] = 'hiroshima';
    map[_name.jefUnited] = 'jef united';
    map[_name.jubiloiwata] = 'jubilo iwata';
    map[_name.kashimaantlers] = 'kashima';
    map[_name.kashiwaReysol] = 'kashiwa reysol';
    map[_name.kyoto] = 'kyoto';
    map[_name.kawasakifrontale] = 'kawasaki_frontale'; 
    map[_name.nagoya] = 'nagoya';
    map[_name.omiyaardija] = 'omiya ardija';
    map[_name.oitatrinita] = 'oita trinita';
    map[_name.sagantosu] = 'sagan';
    map[_name.sapporo] = 'sapporo';
    map[_name.shimizuSPulse] = 'shimizu';
    map[_name.shonanbellmare] = 'shonan';
    map[_name.tokyoVerdy] = 'tokyo verdy';
    map[_name.urawareddiamonds] = 'urawa';
    map[_name.vegaltaSendai] = 'vegalta'; 
    map[_name.visselkobe] = 'vissel_kobe'; 
    map[_name.yokohamaFC] = 'yokohama fc';
    map[_name.yokohamamarinos] = 'yokohama';
    //SOUTH KOREA
    map[_name.busan] = 'busan'; 
    map[_name.daegu] = 'daegu';
    map[_name.daejeon] = 'daejeon';
    map[_name.jeonbuk] = 'jeonbuk'; 
    map[_name.jeju] = 'jeju';
    map[_name.gimcheon] = 'gimcheon';
    map[_name.gyeongnam] = 'gyeongnam';
    map[_name.incheon] = 'incheon';
    map[_name.fcseoul] = 'fc seoul';
    map[_name.gangwon] = 'gangwon';
    map[_name.pohang] = 'pohang';  
    map[_name.seongnam] = 'seongnam';  
    map[_name.suwonsamsung] = 'suwon samsung';
    map[_name.ulsan] = 'ulsan';

    //SOUTH ARABIA
    map[_name.alahly] = 'al_ahly';  
    map[_name.alettifaq] = 'al ettifaq';
    map[_name.alhilal] = 'al_hilal';  
    map[_name.alfateh] = 'al fateh';
    map[_name.alIttihad] = 'al ittihad';
    map[_name.alnassr] = 'al_nassr';  
    map[_name.alraed] = 'al raed';
    map[_name.alShabab] = 'al shabab';
    map[_name.altaawoun] = 'al taawoun';
    map[_name.damac] = 'damac';
    //QATAR
    map[_name.alarabi] = 'al arabi';
    map[_name.alduhail] = 'duhail';
    map[_name.algharafa] = 'al gharafa';
    map[_name.alrayyan] = 'al rayyan';  
    map[_name.alsadd] = 'sadd';
    map[_name.eljaish] = 'el jaish';
    //EAU
    map[_name.ajman] = 'ajman';  
    map[_name.alain] = 'al_ain';  
    map[_name.aljazira] = 'al_jazira';  
    map[_name.alnasrEAU] = 'al nasr';  
    map[_name.alsharjah] = 'al sharjah';
    map[_name.alWahda] = 'al wahda';
    map[_name.alwasl] = 'al wasl';
    map[_name.baniyas] = 'baniyas';
    map[_name.shababalahli] = 'shabab al ahli';
    //BAHREIN
    map[_name.alhidd] = 'al hidd';
    map[_name.alMuharraq] = 'al muharraq';
    map[_name.alRiffa] = 'al riffa';
    map[_name.manama] = 'manama';
    //PHILLIPINES
    map[_name.maharlikaManila] = 'manila';
    map[_name.unitedCity] = 'united city';
    //TAILANDIA
    map[_name.buriram] = 'buriram united';
    map[_name.bangkok] = 'bangkok';
    map[_name.bangkokBank] = 'bangkok bank';
    map[_name.chiangrai] = 'chiangrai';
    map[_name.chonburi] = 'chonburi';
    map[_name.muangthong] = 'muangthong';
    map[_name.pathum] = 'pathum';
    map[_name.becToroSasana] = 'police tero';
    map[_name.portFC] = 'portfc';
    map[_name.ratchaburi] = 'ratchaburi';
    //INDIA
    map[_name.bengaluru] = 'bengaluru';
    map[_name.chennaiyin] = 'chennaiyin';
    map[_name.eastBengal] = 'east bengal';
    map[_name.hyderabad] = 'hyderabad';
    map[_name.goa] = 'goa';
    map[_name.kerala] = 'kerala blasters';
    map[_name.mohunBagan] = 'mohun bagan';
    map[_name.mumbai] = 'mumbai';
    map[_name.northeast] = 'northeast';
    map[_name.odisha] = 'odisha';

    //BANGLADESH
    map[_name.bashundhara] = 'bashundhara';
    map[_name.dhakaAbahani] = 'dhaka';
    map[_name.saif] = 'saif';
    //map[_name.sheikhJamal] = 'sheikh jamal';
    //BRUNEI
    map[_name.bruneidpmm] = 'brunei';
    //SINGAPORE
    map[_name.albirexSINGAPORE] = 'albirex';
    map[_name.warriors] = 'warriors';
    map[_name.tampines] = 'tampines';
    //INDONESIA
    map[_name.bali] = 'bali';
    map[_name.persipura] = 'persipura';
    map[_name.persib] = 'persib';
    map[_name.persebaya] = 'persebaya';
    //IRA
    map[_name.persepolis] = 'persepolis';  
    map[_name.esteghlal] = 'esteghlal';
    map[_name.saipa] = 'saipa';
    map[_name.sepahan] = 'sepahan';
    map[_name.zobahan] = 'zob ahan';
    //IRAQUE
    map[_name.alRasheed] = 'al rasheed';
    map[_name.alQuwaAlJawiya] = 'al quwa';
    map[_name.alTalaba] = 'al talaba';
    map[_name.alzawraa] = 'al zawraa';
    map[_name.alShortaIRAQ] = 'al shorta iraq';
    //OUTROS
    //UZBEQUISTAO
    map[_name.agmk] = 'agmk';
    map[_name.bunyodkor] = 'bunyodkor';
    map[_name.nasafQarshi] = 'nasaf';
    map[_name.pakhtakor] = 'pakhtakor';
    map[_name.loktashkent] = 'tashkent';
    //CAMBOJA
    map[_name.phnomPenhCrown] = 'phnom penh';
    //JORDANIA
    map[_name.alFaisalyJORD] = 'al faisaly';
    map[_name.alRamtha] = 'al ramtha';
    map[_name.alWehdat] = 'al wehdat';
    //KUWAIT
    map[_name.alArabiKUW] = 'al arabi kuwait';
    map[_name.alKuwait] = 'al kuwait';
    map[_name.alQadsia] = 'al qadsia';
    map[_name.kazma] = 'kazma';
    //NEPAL
    map[_name.machhindra] = 'machhindra';
    map[_name.manangMarshyangdi] = 'manang';
    //VIETNA
    map[_name.hanoi] = 'hanoi';
    //LEBANON
    map[_name.alahed] = 'al ahed';
    map[_name.alAnsar] = 'al ansar';
    map[_name.nejmeh] = 'nejmeh';
    //MALASYA
    map[_name.johorDarul] = 'johor';
    map[_name.kedah] = 'kedah';
    map[_name.kualaLumpur] = 'kuala lumpur';
    map[_name.penang] = 'penang';
    map[_name.sabah] = 'sabah';
    map[_name.sripahang] = 'sri pahang';
    map[_name.selangor] = 'selangor';
    //MONGOLIA
    map[_name.athletic220] = 'athletic 220';
    map[_name.erchim] = 'erchim';
    map[_name.khoromkhon] = 'khoromkhon';
    map[_name.ulaanbaatar] = 'ulaanbaatar city';
    //SIRIA
    map[_name.alkaramah] = 'al karamah';
    map[_name.alJaish] = 'al jaish';
    map[_name.alShortaDamascus] = 'al shorta';
    map[_name.tishreen] = 'tishreen';
    //TAJIKISTAN
    map[_name.istiklol] = 'istiklol';
    map[_name.khujand] = 'khujand';
    map[_name.pamirDushanbe] = 'cska pamir';



    //OCENIA
    map[_name.auckland] = 'auckland';
    map[_name.wellingtonphoenix] = 'wellington phoenix';

    map[_name.adelaide] = 'adelaide';
    map[_name.brisbane] = 'brisbane';
    map[_name.centralcoast] = 'central coast';
    map[_name.melbournecity] = 'melbournecity';
    map[_name.newcastlejets] = 'newcastlejets';
    map[_name.melbournevictory] = 'melbourne victory';
    map[_name.perth] = 'perth';
    map[_name.sydneyFC] = 'sydney';
    map[_name.sydneywanderers] = 'sydney wanderers';
    map[_name.westernunited] = 'western';

    //AFRICA
    //EGITO
    map[_name.alahli] = 'al_ahli';  
    map[_name.almasry] = 'al masry';
    map[_name.cleopatra] = 'cleopatra';
    map[_name.future] = 'future fc';
    map[_name.ismaily] = 'ismaily';
    map[_name.pyramids] = 'pyramids';
    map[_name.zamalek] = 'zamalek';
    //ALGERIA
    map[_name.belouizdad] = 'belouizdad';
    map[_name.constantine] = 'constantine';
    map[_name.essetif] = 'es setif';
    map[_name.kabylie] = 'kabylie';
    map[_name.mcalger] = 'mc alger';
    map[_name.mcOran] = 'mc oran';
    map[_name.usmAlger] = 'usm alger';
    //LYBIA
    map[_name.alIttihadLIB] = 'al ittihad libya';
    map[_name.benghazi] = 'benghazi';
    //MARROCOS
    map[_name.rajacasablanca] = 'raja';  
    map[_name.wydad] = 'wydad';
    map[_name.farRabat] = 'far rabat';
    map[_name.maghreb] = 'maghreb';
    //SUDAN
    map[_name.omdurman] = 'omdurman';
    map[_name.almerrikh] = 'al merrikh';
    //TUNISIA
    map[_name.clubAfricain] = 'club africain';
    map[_name.esperance] = 'esperance';
    map[_name.etoilesahel] = 'etoile sahel';
    map[_name.sfaxien] = 'sfaxien';

    /////////////////////////////////////////
    //AFRICA DO SUL
    map[_name.amazulu] = 'amazulu';
    map[_name.capetown] = 'cape town';
    map[_name.goldenarrows] = 'golden arrows';
    map[_name.kaizer] = 'kaizer chiefs';
    map[_name.mamelodi] = 'mamelodi sundowns';
    map[_name.maritzburg] = 'maritzburg';
    map[_name.orlandopirates] = 'orlando pirates';
    //ANGOLA
    map[_name.agosto] = '1 de agosto';
    map[_name.petroluanda] = 'petro luanda';
    map[_name.sagradaesperanca] = 'sagrada esperanca';
    map[_name.sptCabinda] = 'sporting';
    //BOTSWANA
    map[_name.gaborone] = 'gaborone';
    //CAMEROON
    map[_name.canonYaounde] = 'canon yaounde';
    map[_name.cotonsport] = 'cotonsport';
    map[_name.douala] = 'douala';
    //CAPE VERDE
    map[_name.mindelense] = 'mindelense';
    map[_name.sptClubePraia] = 'spt clube praia';
    //CONGO
    map[_name.diablesNoirs] = 'diables noirs';
    map[_name.otoho] = 'otoho';
    map[_name.talangai] = 'talangai';
    //RD CONGO
    map[_name.dragons] = 'dragons';
    map[_name.maniema] = 'maniema';
    map[_name.mazembe] = 'mazembe';
    map[_name.vita] = 'vita';
    //ETHIOPIA
    map[_name.fasil] = 'fasil kenema';
    map[_name.stGeorge] = 'st george';
    //GHANA
    map[_name.asantekotoko] = 'asante kotoko';
    map[_name.heartsoak] = 'hearts oak';
    //GUINEA
    map[_name.hafia] = 'hafia guinea';
    map[_name.horoya] = 'horoya';
    //IVORY COAST
    map[_name.africaSports] = 'africa sports';
    map[_name.asecmimosas] = 'asec mimosas';
    map[_name.gagnoa] = 'gagnoa';
    map[_name.omnisport] = 'omnisport';
    map[_name.sanPedro] = 'san pedro';
    //KENYA
    map[_name.kakamega] = 'kakamega';
    map[_name.gorMahia] = 'gor mahia';
    map[_name.mathare] = 'mathare';
    map[_name.tusker] = 'tusker';
    map[_name.ulinzi] = 'ulinzi';
    //MADAGASCAR
    map[_name.adema] = 'adema';
    map[_name.cnapsSport] = 'cnaps sport';
    //MALI
    map[_name.djoliba] = 'djoliba';
    map[_name.realBamako] = 'real bamako';
    map[_name.stadeMalien] = 'stade malien';
    //MOZAMBIQUE
    map[_name.costasol] = 'costa do sol';
    map[_name.libolo] = 'ferroviario libolo';
    //NAMIBIA
    map[_name.blackAfrica] = 'black africa';
    map[_name.africanStars] = 'african stars';
    //NIGERIA
    map[_name.enyimba] = 'enyimba';
    map[_name.heartland] = 'heartland';
    map[_name.kano] = 'kano';
    map[_name.rangersInt] = 'rangers international';
    map[_name.riversUtd] = 'rivers united';
    map[_name.shootingstars] = 'shooting stars';
    map[_name.sunshinestars] = 'sunshine stars';
    //SENEGAL
    map[_name.douanes] = 'douanes';
    map[_name.jaraaf] = 'jaraaf';
    map[_name.jeannedarc] = 'jeanne';
    //UGANDA
    map[_name.express] = 'express';
    map[_name.kampala] = 'kampala';
    map[_name.villa] = 'villa';
    map[_name.vipers] = 'vipers';
    //TANZANIA
    map[_name.yanga] = 'yanga';
    map[_name.simba] = 'simba';
    //ZAMBIA
    map[_name.greenEagles] = 'green eagles';
    map[_name.nkana] = 'nkana';
    map[_name.zesco] = 'zesco';
    //ZIMBABWE
    map[_name.dynamos] = 'dynamos';
    map[_name.manicaDiamonds] = 'manica';
    map[_name.platinum] = 'platinum';

    if(map.containsKey(timeFoto)){
      return map[timeFoto];
    }else{
      //Se o time não tiver uma imagem
      return 'generic';
    }
 }


}
