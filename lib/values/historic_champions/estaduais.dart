import 'package:fifa/values/club_names.dart';
import 'package:fifa/values/league_names.dart';

ClubName _name = ClubName();
LeagueOfficialNames leagueName = LeagueOfficialNames();

Map<String,dynamic> mapEstaduais = {

  leagueName.paulistao : {
    2022.0: [_name.palmeiras,_name.saopaulo,_name.corinthians,_name.bragantino,  ],
    2021.0: [_name.saopaulo,_name.palmeiras,_name.corinthians,_name.mirassol,],
    2020.0: [_name.palmeiras,_name.corinthians,_name.mirassol,_name.pontepreta,],
    2019.0: [_name.corinthians,_name.saopaulo,_name.palmeiras,_name.santos,],
    2018.0: [_name.corinthians,_name.palmeiras,_name.saopaulo,_name.santos,],
    2017.0: [_name.corinthians,_name.pontepreta,_name.palmeiras,_name.saopaulo,],
    2016.0: [_name.santos,_name.audaxSP,_name.corinthians,_name.palmeiras],
    2015.0: [_name.santos,_name.palmeiras,_name.corinthians,_name.saopaulo,],
    2014.0: [_name.ituano,_name.santos,_name.palmeiras,_name.penapolense,],
    2013.0: [_name.corinthians,_name.santos,_name.saopaulo,_name.mogimirim,],
    2012.0: [_name.santos,_name.guarani,_name.saopaulo,_name.pontepreta,],
    2011.0: [_name.santos,_name.corinthians,_name.palmeiras,_name.saopaulo,],
    2010.0: [_name.santos,_name.santoandre,_name.gremioBarueri,_name.saopaulo,],
    2009.0: [_name.corinthians,_name.santos,_name.palmeiras,_name.saopaulo,],
    2008.0: [_name.palmeiras,_name.pontepreta,_name.saopaulo,_name.guaratingueta,],
    2007.0: [_name.santos,_name.saocaetano,_name.saopaulo,_name.bragantino,],
    2006.0: [_name.santos,_name.saopaulo,_name.palmeiras,_name.noroeste,],
    2005.0: [_name.saopaulo,_name.corinthians,_name.santos,_name.santoandre],
    2004.0: [_name.saocaetano,_name.paulista,_name.santos,_name.palmeiras,],
    2003.0: [_name.corinthians,_name.saopaulo,_name.portuguesasantista,_name.palmeiras,],
    2002.0: [],
    2001.0: [_name.corinthians,_name.botafogoSP,_name.pontepreta,_name.santos,],
    2000.0: [_name.saopaulo,_name.santos,_name.corinthians,_name.palmeiras,],
    1999.0: [_name.corinthians,_name.palmeiras,_name.saopaulo,_name.santos,],
    1998.0: [_name.saopaulo,_name.corinthians,_name.portuguesa,_name.palmeiras,],
    1997.0: [_name.corinthians,_name.saopaulo,_name.santos,_name.palmeiras,],
    1996.0: [_name.palmeiras,_name.saopaulo,_name.portuguesa,_name.corinthians,],
    1995.0: [_name.corinthians,_name.palmeiras,_name.portuguesa,_name.saopaulo,],
    1994.0: [_name.palmeiras,_name.saopaulo,_name.corinthians,_name.santos,],
    1993.0: [_name.palmeiras,_name.corinthians,_name.saopaulo,_name.santos,],
    1992.0: [_name.saopaulo,_name.palmeiras,_name.mogimirim,_name.pontepreta,],
    1991.0: [_name.saopaulo,_name.corinthians,_name.palmeiras,_name.portuguesa,],
    1990.0: [_name.bragantino,_name.gremioNovorizontino,_name.corinthians,_name.palmeiras,],
    1989.0: [_name.saopaulo,_name.saojose,_name.corinthians,_name.bragantino,],
    1988.0: [_name.corinthians,_name.guarani,_name.saopaulo,_name.saojose,],
    1987.0: [_name.saopaulo,_name.corinthians,_name.santos,_name.palmeiras,],
    1986.0: [_name.interLimeira,_name.palmeiras,_name.corinthians,_name.santos,],
    1985.0: [_name.saopaulo,_name.portuguesa,_name.guarani,_name.ferroviaria,],
    1984.0: [_name.santos,_name.corinthians,_name.saopaulo,_name.palmeiras,],
    1983.0: [_name.corinthians,_name.saopaulo,_name.santos,_name.palmeiras,],
    1982.0: [_name.corinthians,_name.saopaulo,_name.palmeiras,_name.pontepreta,],
    1981.0: [_name.saopaulo,_name.pontepreta,_name.guarani,_name.palmeiras,],
    1980.0: [_name.saopaulo,_name.santos,_name.pontepreta,_name.guarani,],
    1979.0: [_name.corinthians,_name.pontepreta,_name.palmeiras,_name.guarani,],
    1978.0: [_name.santos,_name.saopaulo,_name.guarani,_name.palmeiras,],
    1977.0: [_name.corinthians,_name.pontepreta,_name.palmeiras,_name.saopaulo,],
    1976.0: [_name.palmeiras,_name.xvpiracicaba,_name.guarani,_name.botafogoSP,],
    1975.0: [_name.saopaulo,_name.portuguesa,_name.palmeiras,_name.corinthians,],
    1974.0: [_name.palmeiras,_name.corinthians,_name.santos,_name.portuguesa,],
    1973.0: [_name.portuguesa,_name.santos,_name.palmeiras,_name.corinthians,],
    1972.0: [_name.palmeiras,_name.saopaulo,_name.santos,_name.corinthians,],
    1971.0: [_name.saopaulo,_name.palmeiras,_name.corinthians,_name.santos,],
    1970.0: [_name.saopaulo,_name.palmeiras,_name.pontepreta,_name.santos,],
    1969.0: [_name.santos,_name.palmeiras,_name.saopaulo,_name.corinthians,],
    1968.0: [_name.santos,_name.corinthians,_name.ferroviaria,_name.portuguesa,],
    1967.0: [_name.santos,_name.saopaulo,_name.corinthians,_name.palmeiras,],
    1966.0: [_name.palmeiras,_name.corinthians,_name.santos,_name.comercial,],
    1965.0: [_name.santos,_name.palmeiras,_name.corinthians,_name.portuguesa,],
    1964.0: [_name.santos,_name.palmeiras,_name.portuguesa,_name.corinthians,],
    1963.0: [_name.palmeiras,_name.saopaulo,_name.santos,_name.saobento,],
    1962.0: [_name.santos,_name.corinthians,_name.saopaulo,_name.palmeiras,],
    1961.0: [_name.santos,_name.palmeiras,_name.saopaulo,_name.portuguesa,],
    1960.0: [_name.santos,_name.portuguesa,_name.corinthians,_name.palmeiras,],
    1959.0: [_name.palmeiras,_name.santos,_name.saopaulo,_name.ferroviaria,],
  },
  leagueName.carioca : {
    2022.0: [_name.fluminense,_name.flamengo,_name.vasco,_name.botafogo,],
    2021.0: [_name.flamengo,_name.fluminense,_name.portuguesaRJ,_name.voltaredonda,],
    2020.0: [_name.flamengo,_name.fluminense,_name.voltaredonda,_name.boavistaRJ,],
    2019.0: [_name.flamengo,_name.vasco,_name.bangu,_name.fluminense,],
    2018.0: [_name.botafogo,_name.vasco,_name.flamengo,_name.fluminense,],
    2017.0: [_name.flamengo,_name.fluminense,_name.vasco,_name.botafogo,],
    2016.0: [_name.vasco,_name.botafogo,_name.fluminense,_name.flamengo,],
    2015.0: [_name.vasco,_name.botafogo,_name.flamengo,_name.fluminense,],
    2014.0: [_name.flamengo,_name.vasco,_name.fluminense,_name.cabofriense,],
    2013.0: [_name.botafogo,_name.flamengo,_name.fluminense,_name.vasco,],
    2012.0: [_name.fluminense,_name.botafogo,_name.flamengo,_name.vasco,],
    2011.0: [_name.flamengo,_name.fluminense,_name.botafogo,_name.boavistaRJ,],
    2010.0: [_name.botafogo,_name.flamengo,_name.fluminense,_name.vasco,],
    2009.0: [_name.flamengo,_name.botafogo,_name.vasco,_name.fluminense,],
    2008.0: [_name.flamengo,_name.botafogo,_name.fluminense,_name.vasco,],
    2007.0: [_name.flamengo,_name.botafogo,_name.madureira,_name.vasco,],
    2006.0: [_name.botafogo,_name.madureira,_name.americaRJ,_name.cabofriense,],
    2005.0: [_name.fluminense,_name.voltaredonda,_name.botafogo,_name.americanoRJ,],
    2004.0: [_name.flamengo,_name.vasco,_name.fluminense,_name.americanoRJ,],
    2003.0: [_name.vasco,_name.fluminense,_name.flamengo,_name.americanoRJ,],
    2002.0: [_name.fluminense,_name.americanoRJ,_name.bangu,_name.friburguense,],
    2001.0: [_name.flamengo,_name.vasco,_name.americanoRJ,_name.fluminense,],
    2000.0: [_name.flamengo,_name.vasco,_name.botafogo,_name.fluminense,],
    1999.0: [_name.flamengo,_name.vasco,_name.fluminense,_name.friburguense,],
    1998.0: [_name.vasco,_name.flamengo,_name.fluminense,_name.bangu,],
    1997.0: [_name.botafogo,_name.vasco,_name.flamengo,_name.fluminense,],
    1996.0: [_name.flamengo,_name.vasco,_name.botafogo,_name.fluminense,],
    1995.0: [_name.fluminense,_name.flamengo,_name.botafogo,_name.vasco,],
    1994.0: [_name.vasco,_name.flamengo,_name.fluminense,_name.botafogo,],
    1993.0: [_name.vasco,_name.fluminense,_name.flamengo,_name.bangu,],
    1992.0: [_name.vasco,_name.flamengo,_name.fluminense,_name.botafogo,],
    1991.0: [_name.flamengo,_name.fluminense,_name.botafogo,_name.vasco,],
    1990.0: [_name.botafogo,_name.vasco,_name.fluminense,_name.flamengo,],
    1989.0: [_name.botafogo,_name.flamengo,_name.vasco,_name.fluminense,],
    1988.0: [_name.vasco,_name.flamengo,_name.fluminense,_name.americanoRJ,],
    1987.0: [_name.vasco,_name.flamengo,_name.bangu,_name.fluminense,],
    1986.0: [_name.flamengo,_name.vasco,_name.fluminense,_name.botafogo,],
    1985.0: [_name.fluminense,_name.bangu,_name.flamengo,_name.vasco,],
    1984.0: [_name.fluminense,_name.flamengo,_name.vasco,_name.bangu,],
    1983.0: [_name.fluminense,_name.flamengo,_name.bangu,_name.americaRJ,],
    1982.0: [_name.vasco,_name.flamengo,_name.americaRJ,_name.botafogo,],
    1981.0: [_name.flamengo,_name.vasco,_name.botafogo,_name.bangu,],
    1980.0: [_name.fluminense,_name.vasco,_name.flamengo,_name.bangu,],
    1979.0: [_name.flamengo,_name.fluminense,_name.vasco,_name.botafogo,],
    1978.0: [_name.flamengo,_name.vasco,_name.fluminense,_name.botafogo,],
    1977.0: [_name.vasco,_name.flamengo,],
    1976.0: [_name.fluminense,_name.vasco,],
    1975.0: [_name.fluminense,_name.botafogo,],
    1974.0: [_name.flamengo,_name.vasco,],
    1973.0: [_name.fluminense,_name.flamengo,],
    1972.0: [_name.flamengo,_name.fluminense,],
    1971.0: [_name.fluminense,_name.botafogo,],
    1970.0: [_name.vasco,_name.fluminense,],
    1969.0: [_name.fluminense,_name.flamengo,],
    1968.0: [_name.botafogo,_name.vasco,],
    1967.0: [_name.botafogo,_name.bangu,],
    1966.0: [_name.bangu,_name.flamengo,],
    1965.0: [_name.flamengo,_name.bangu,],
    1964.0: [_name.fluminense,_name.bangu,],
    1963.0: [_name.flamengo,_name.fluminense,],
    1962.0: [_name.botafogo,_name.flamengo,_name.fluminense,_name.vasco,],
    1961.0: [_name.botafogo,],
    1960.0: [_name.americaSP,_name.fluminense,_name.botafogo,_name.flamengo,],
  },

};