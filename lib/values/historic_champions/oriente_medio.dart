import 'package:fifa/values/club_names.dart';
import 'package:fifa/values/league_names.dart';


ClubName n = ClubName();
LeagueOfficialNames leagueName = LeagueOfficialNames();

Map<String,dynamic> mapOrienteMedio = {

  leagueName.arabia : {
    2022.0: [n.alhilal,n.alIttihad,n.alnassr,n.alshabab,n.damac,         n.altai,n.alraed,n.alfateh,n.abha,n.alfayha,              n.alettifaq,n.altaawoun,n.albatin,n.alFaisalyARABIA,n.alahli,n.alhazem],
    2021.0: [n.alhilal,n.alshabab,n.alIttihad,n.altaawoun,n.alettifaq,   n.alnassr,n.alfateh,n.alahli,n.alFaisalyARABIA,n.alraed,  n.damac,n.albatin,n.abha,n.alQadisiya,n.alwehda,n.alainARA],
    2020.0: [n.alhilal,n.alnassr,n.alahli,n.alwehda,n.alFaisalyARABIA,   n.alraed,n.alshabab,n.alettifaq,n.abha,n.damac,                 n.alIttihad,n.altaawoun,n.alfateh,n.alfayha,n.alhazem,n.aladalah],
    2019.0: [n.alnassr,n.alhilal,n.altaawoun,n.alahli,n.alshabab,        n.alFaisalyARABIA,n.alwehda,n.alraed,n.alfateh,n.alIttihad,     ],
    2018.0: [n.alhilal,n.alahli,n.alnassr,n.alettifaq,n.alfateh,         n.alFaisalyARABIA,n.altaawoun,n.alfayha,n.alIttihad,n.alshabab, ],
    2017.0: [n.alhilal,n.alahli,n.alnassr,n.alIttihad,n.alraed,          n.alshabab,],
    2016.0: [n.alahli,n.alhilal,n.alIttihad,n.altaawoun,n.alfateh,       n.alshabab,n.alkhaleej,n.alnassr,],
    2015.0: [n.alnassr,n.alahli,n.alhilal,n.alIttihad,n.alshabab,        n.alfateh,],
    2014.0: [n.alnassr,n.alhilal,n.alahli,n.alshabab,n.altaawoun,        n.alFaisalyARABIA,],
    2013.0: [n.alfateh,n.alhilal,n.alshabab,n.alnassr,n.alahli,          n.alettifaq,n.alIttihad,n.alraed,n.alshoulla,n.najran,   ],
    2012.0: [n.alshabab,n.alahli,n.alhilal,n.alettifaq,n.alIttihad,      n.alfateh,n.alnassr,n.alFaisalyARABIA,],
    2011.0: [n.alhilal,n.alIttihad,n.alettifaq,n.alshabab,n.alnassr,     n.alahli,],
    2010.0: [n.alhilal,n.alIttihad,n.alnassr,n.alshabab,n.alwehda,       n.alahli,],
    2009.0: [n.alIttihad,n.alhilal,n.alahli,n.alshabab,n.alnassr,        n.alettifaq,],
    2008.0: [n.alhilal,n.alIttihad,n.alshabab,n.alettifaq,n.alnassr,     n.alwehda,],
    2007.0: [n.alIttihad,n.alhilal,n.alwehda,n.alshabab,n.alahli,        n.alettifaq,n.altai,n.alhazem,n.alnassr,n.alQadisiya,  n.alFaisalyARABIA,n.alkhaleej],
    2006.0: [n.alshabab,n.alhilal,n.alIttihad,n.alahli,n.alettifaq,      n.alnassr,],
    2005.0: [n.alhilal,n.alshabab,n.alIttihad,n.alnassr,n.alahli,        n.alwehda,],
    2004.0: [n.alshabab,n.alIttihad,n.alhilal,n.alahli,n.alettifaq,      n.alnassr,],
    2003.0: [n.alIttihad,n.alahli,n.alQadisiya,n.alnassr,n.alhilal,  n.alshabab,n.altai,],
    2002.0: [n.alhilal,n.alIttihad,n.alnassr,n.alahli,n.alriad,      n.alshoulla,n.alnajma,n.alettifaq,n.alshabab,n.altai,   ],
    2001.0: [n.alIttihad,n.alnassr,n.alahli,n.alhilal,n.alriad,      n.alansarARABIA,n.alshabab],
    2000.0: [n.alIttihad,n.alahli,n.alshabab,n.alnassr,n.alhilal,    n.alriad,n.alettifaq,],
    1999.0: [n.alIttihad,n.alahli,n.alhilal,n.alshabab,n.alnassr,    n.alettifaq,n.alriad,],
    1998.0: [n.alhilal,n.alshabab,n.alahli,n.alnajma,n.alnassr,      n.alettifaq,n.alIttihad,],
    1997.0: [n.alIttihad,n.alhilal,n.alnassr,n.alshabab,n.alahli,    n.alriad,n.alettifaq,],
    1996.0: [n.alhilal,n.alahli,n.alIttihad,n.alnassr,n.alettifaq,   n.alnajma,n.altai,n.alshabab,n.alriad,n.alQadisiya,    ],
    1995.0: [n.alnassr,n.alhilal,n.alriad,n.alettifaq,n.alshabab,    n.alahli,n.alIttihad,],
    1994.0: [n.alnassr,n.alriad,n.alhilal,n.alshabab,n.alQadisiya,   n.alahli,n.alIttihad,],
    1993.0: [n.alshabab,n.alhilal,n.alIttihad,n.alettifaq,n.alahli,  n.alriad,n.alraed,n.alQadisiya,n.alnassr,n.alwehda,],
    1992.0: [n.alshabab,n.alettifaq,n.alahli,n.alnassr,n.alIttihad,  n.alQadisiya,n.alhilal,],
    1991.0: [n.alshabab,n.alnassr,n.alhilal,n.alettifaq,n.alIttihad, n.alriad,n.alahli,],
    1990.0: [n.alhilal,n.alahli,n.alnassr,n.altai,n.alshabab,        n.alQadisiya,n.alettifaq,n.alIttihad,n.alwehda,n.alriad,   ],
    1989.0: [n.alnassr,n.alshabab,n.alhilal,n.alahli,n.alettifaq,    n.alIttihad,n.altai,],
    1988.0: [n.alhilal,n.alettifaq,n.alnassr,n.alIttihad,n.alshabab, n.altai,],
    1987.0: [n.alettifaq,n.alhilal,n.alnassr,n.altai,n.alshabab,     n.alahli,n.alIttihad,n.alwehda,n.alQadisiya,n.alnahda,  ],
    1986.0: [n.alhilal,n.alIttihad,n.alnassr,n.alwehda,n.altai,      n.alahli,],
    1985.0: [n.alhilal,n.alshabab,n.alahli,n.alettifaq,n.alnassr,    n.alIttihad,],
    1984.0: [n.alahli,n.alIttihad,n.alettifaq,n.alQadisiya,n.alnassr, n.alhilal,n.alshabab,],
    1983.0: [n.alettifaq,n.alhilal,n.alshabab,n.alnassr,n.alahli,    n.alIttihad,n.alQadisiya,n.alnahda,n.alrawdhah,n.ohod],
    1982.0: [n.alIttihad,n.alshabab,n.alhilal,n.alnassr,  ],
    1981.0: [n.alnassr,n.alhilal,n.alQadisiya,n.alahli,n.alettifaq,   n.alIttihad,n.alshabab,n.alnahda,],
    1980.0: [n.alnassr,n.alhilal,n.alIttihad,n.alahli,n.alshabab,     n.alettifaq,n.alnahda,n.alQadisiya,n.alwehda,n.ohod],
    1979.0: [n.alhilal,n.alnassr,n.alIttihad,n.alahli,n.alQadisiya,    n.alettifaq,n.alnahda,n.alwehda,n.altai,n.alriad],
    1978.0: [n.alahli,n.alnassr,n.alettifaq,n.alIttihad,n.alQadisiya,  n.alhilal,n.alnahda,n.alwehda,n.alshabab,n.ohod],
    1977.0: [n.alhilal,n.alnassr,n.alahli,n.alIttihad,n.alwehda,   n.alQadisiya,n.alshabab,n.alriad],
    1976.0: [],
    1975.0: [n.alnassr,],
  },

  leagueName.bahrein : {
    2022.0: [n.alRiffa,],
    2021.0: [n.alRiffa,],
    2020.0: [n.alhidd],
    2019.0: [n.alRiffa,],
    2018.0: [n.alMuharraq,],
    2017.0: [n.malkiya,],
    2016.0: [n.alhidd,],
    2015.0: [n.alMuharraq,],
    2014.0: [n.alRiffa,],
    2013.0: [],
    2012.0: [n.alRiffa,],
    2011.0: [n.alMuharraq,],
    2010.0: [n.alahliBAH,],
    2009.0: [n.alMuharraq,],
    2008.0: [n.alMuharraq,],
    2007.0: [n.alMuharraq,],
    2006.0: [n.alMuharraq,],
    2005.0: [n.alRiffa,],
    2004.0: [n.alMuharraq,],
    2003.0: [n.alRiffa,],
    2002.0: [n.alMuharraq,],
    2001.0: [n.alMuharraq,],
    2000.0: [n.alRiffa,],
    1999.0: [n.alMuharraq,],
    1998.0: [n.alRiffa,],
    1997.0: [n.alRiffa,],
    1996.0: [n.alahliBAH,],
    1995.0: [n.alMuharraq,],
    1994.0: [n.eastRiffa,],
    1993.0: [n.alRiffa,],
    1992.0: [n.alMuharraq,],
    1991.0: [n.alMuharraq,],
    1990.0: [n.alRiffa,],
    1989.0: [n.bahrain,],
    1988.0: [n.alMuharraq,],
    1987.0: [n.alRiffa,],
    1986.0: [n.alMuharraq,],
    1985.0: [n.bahrain,],
    1984.0: [n.alMuharraq,],
    1983.0: [n.alMuharraq,],
    1982.0: [n.alRiffa,],
    1981.0: [n.bahrain,],
    1980.0: [n.alMuharraq,],
    1979.0: [n.alhala,],
    1978.0: [n.bahrain,],
    1977.0: [n.alahliBAH,],
    1976.0: [n.alMuharraq,],
    1975.0: [],
    1974.0: [n.alMuharraq,],
    1973.0: [n.alMuharraq,],
    1972.0: [n.alahliBAH,],
    1971.0: [n.alMuharraq,],
    1970.0: [n.alMuharraq,],
    1969.0: [n.alahliBAH,],
    1968.0: [n.bahrain,],
    1967.0: [n.alMuharraq,],
    1966.0: [n.alMuharraq,],
    1965.0: [n.alMuharraq,],
    1964.0: [n.alMuharraq,],
    1963.0: [n.alMuharraq,],
    1962.0: [n.alMuharraq,],
    1961.0: [n.alMuharraq,],
    1960.0: [n.alMuharraq,],
    1959.0: [n.alnasrBAH,],
    1958.0: [n.alMuharraq,],
    1957.0: [n.alMuharraq,],
  },

  leagueName.qatar : {
    2022.0: [n.alsadd,n.alduhail,n.alwakrah,n.alarabi,n.algharafa,n.ummsalal,n.alahlidoha,n.alrayyan,n.qatar,n.alshamal,n.alsailiya,n.alkhor],
    2021.0: [n.alsadd,n.alduhail,n.alrayyan,n.algharafa,n.alahlidoha,n.qatar,n.alarabi,n.alwakrah,n.alsailiya,n.ummsalal,n.alkhor,n.alkharaitiyat],
    2020.0: [n.alduhail,n.alrayyan,n.alsadd,n.algharafa,n.alsailiya,n.alwakrah,n.alarabi,n.qatar,n.alahlidoha,n.ummsalal,n.alkhor,n.alshahania],
    2019.0: [n.alsadd,n.alduhail,n.alsailiya,n.alrayyan,n.alahlidoha,n.alarabi,n.alshahania,n.algharafa,n.ummsalal,n.alkhor,n.qatar,n.alkharaitiyat],
    2018.0: [n.alduhail,n.alsadd,n.alrayyan,n.algharafa,n.ummsalal,n.alsailiya,n.alarabi,n.qatar,n.alkhor,n.alahlidoha,n.alkharaitiyat,n.almarkhiya],
    2017.0: [n.alduhail,n.alsadd,n.alrayyan,n.eljaish,n.algharafa,n.ummsalal,n.alkharaitiyat,n.alsailiya,n.alarabi,n.alahlidoha,n.alkhor,n.alshahania,n.muaither,n.alwakrah],
    2016.0: [n.alrayyan,n.eljaish,n.alsadd,n.alduhail,n.ummsalal,n.alahlidoha,n.alsailiya,n.alarabi,n.algharafa,n.alkhor,n.alwakrah,n.alkharaitiyat,n.qatar,n.almesaimeer],
    2015.0: [n.alduhail,n.alsadd,n.eljaish,n.qatar,n.alahlidoha,n.ummsalal,n.algharafa,n.alarabi,n.alkharaitiyat,n.alkhor,n.alsailiya,n.alwakrah,n.alshahania,n.alshamal],
    2014.0: [n.alduhail,n.eljaish,n.alsadd,n.alsailiya,n.alarabi,n.alahlidoha,n.ummsalal,n.alwakrah,n.algharafa,n.qatar,n.alkhor,n.alkharaitiyat,n.alrayyan,n.muaither],
    2013.0: [n.alsadd,n.alduhail,n.eljaish,n.alrayyan,n.ummsalal,n.algharafa,n.alkhor,n.qatar,n.alwakrah,n.alkharaitiyat,n.alarabi,n.alsailiya],
    2012.0: [n.alduhail,n.eljaish,n.alrayyan,n.alsadd,n.alkhor,n.algharafa,n.alwakrah,n.alkharaitiyat,n.alarabi,n.qatar,n.ummsalal,n.alahlidoha],
    2011.0: [n.alduhail,n.algharafa,n.alrayyan,n.alarabi,n.qatar,n.alsadd,n.alwakrah,n.alkharaitiyat,n.ummsalal,n.alkhor,n.alsailiya,n.alahlidoha],
    2010.0: [n.algharafa,n.alsadd,n.alarabi,n.qatar,n.alrayyan,n.alkharaitiyat,n.ummsalal,n.alwakrah,n.alkhor,n.alahlidoha,n.alsailiya,n.alshamal],
    2009.0: [n.algharafa,n.alsadd,n.alrayyan,n.qatar,n.alkhor,n.ummsalal,n.alarabi,n.alwakrah,n.alsailiya,n.alkharaitiyat],
    2008.0: [n.algharafa,n.alsadd,n.ummsalal,n.qatar,n.alrayyan,n.alarabi,n.alkhor,n.alsailiya,n.alwakrah,n.alshamal],
    2007.0: [n.alsadd,n.algharafa,n.ummsalal,n.alrayyan,n.alwakrah,n.qatar,n.alkhor,n.alshamal,n.alarabi,n.alahlidoha],
    2006.0: [n.alsadd,n.qatar,n.alarabi,n.alrayyan,n.alahlidoha,n.algharafa,n.alkhor,n.alwakrah,n.alshamal,n.alsailiya],
    2005.0: [n.algharafa,n.alrayyan,n.alkhor,n.qatar,n.alarabi,n.alwakrah,n.alsadd,n.alahlidoha,n.alshamal,n.alkharaitiyat],
    2004.0: [n.alsadd,n.qatar,n.alarabi,n.alahlidoha,n.alrayyan,n.alittihaddoha,n.alwakrah,n.alkhor,n.alshamal,n.alsailiya],
    2003.0: [n.qatar,n.alsadd,n.alkhor,n.alittihaddoha,n.alahlidoha,n.alrayyan,n.alwakrah,n.alarabi,n.alshamal,n.alittifaq],
    2002.0: [n.alittihaddoha,n.qatar,n.alrayyan,n.alsadd,n.alwakrah,n.alahlidoha,n.alarabi,n.alkhor,n.alittifaq],
    2001.0: [n.alwakrah,n.alarabi,n.alkhor,n.alrayyan,n.alittihaddoha,n.alsadd,n.alahlidoha,n.qatar,n.alshamal],
    2000.0: [n.alsadd,n.alrayyan,n.alarabi,n.alittihaddoha,n.alahlidoha,n.alwakrah,n.qatar,n.alkhor,n.alshamal],
    1999.0: [n.alrayyan,n.alittihaddoha,n.alsadd,n.alarabi,n.alwakrah,n.qatar,n.alahlidoha,n.alkhor,n.alshamal],
    1998.0: [n.alittihaddoha,n.alrayyan,n.alsadd,n.alarabi,n.alahlidoha,n.qatar,n.alwakrah,n.alkhor,n.alshamal],
    1997.0: [n.alarabi,n.alrayyan,n.alittihaddoha,n.alwakrah,n.alsadd,n.alshamal,n.qatar,n.alahlidoha,n.alkhor],
    1996.0: [n.alarabi,n.alrayyan,n.alwakrah,n.alsadd,n.alittihaddoha,n.alahlidoha,n.alkhor,n.qatar,n.alshamal],
    1995.0: [n.alrayyan,],
    1994.0: [n.alarabi,n.alrayyan,],
    1993.0: [n.alarabi,],
    1992.0: [n.algharafa,n.qatar,n.alsadd,n.alarabi,n.alrayyan,        n.alahlidoha,n.alwakrah,n.altaawoun,n.alshamal],
    1991.0: [n.alarabi,],
    1990.0: [n.alrayyan,],
    1989.0: [n.alsadd,],
    1988.0: [n.alsadd,],
    1987.0: [n.alsadd,],
    1986.0: [n.alrayyan,],
    1985.0: [n.alarabi,n.qatar,n.alrayyan,n.alahlidoha,n.alsadd,       n.altaawoun,n.algharafa],
    1984.0: [n.alrayyan,n.alahlidoha,n.alarabi,n.qatar,n.alsadd,       n.altaawoun,n.alwakrah],
    1983.0: [n.alarabi,],
    1982.0: [n.alrayyan,],
    1981.0: [n.alsadd,n.alarabi],
    1980.0: [n.alsadd,],
    1979.0: [n.alsadd,],
    1978.0: [n.alrayyan,],
    1977.0: [n.qatar,],
    1976.0: [n.alrayyan,],
    1975.0: [],
    1974.0: [n.alsadd,],
    1973.0: [n.qatar,],
  },

  leagueName.eau : {
    2022.0: [n.alain,n.alsharjah,n.alwahda,n.aljazira,n.shababalahli,n.alwasl,n.ajman,n.alnasrEAU,n.baniyas,n.khorfakkan,n.kalba,n.aldhafra,n.alurooba,n.emirates],
    2021.0: [n.aljazira,n.baniyas,n.shababalahli,n.alsharjah,n.alnasrEAU,n.alain,n.alwahda,n.kalba,n.alwasl,n.khorfakkan,n.aldhafra,n.ajman,n.alfujairah,n.hatta],
    2020.0: [n.shababalahli,n.alain,n.aljazira,n.alsharjah,n.alwahda,n.alnasrEAU,n.aldhafra,n.alwasl,n.baniyas,n.ajman,n.kalba,n.khorfakkan,n.hatta,n.alfujairah],
    2019.0: [n.alsharjah,n.shababalahli,n.alwahda,n.alain,n.aljazira,n.baniyas,n.ajman,n.alnasrEAU,n.alwasl,n.aldhafra,n.kalba,n.alfujairah,n.emirates,n.dibbafuj],
    2018.0: [n.alain,n.alwahda,n.alwasl,n.alnasrEAU,n.shababalahli,n.alsharjah,n.aljazira,n.ajman,n.dibbafuj,n.aldhafra,n.emirates,n.hatta],
    2017.0: [n.aljazira,n.alwasl,n.shababalahli,n.alain,n.alwahda,n.alnasrEAU,n.aldhafra,n.alshababEAU,n.alsharjah,n.hatta,n.emirates,n.dibbafuj,n.kalba,n.baniyas],
    2016.0: [n.shababalahli,n.alain,n.alwahda,n.alnasrEAU,n.alshababEAU,n.alwasl,n.aljazira,n.aldhafra,n.baniyas,n.dibbafuj,n.alsharjah,n.emirates,n.alfujairah,n.alshaab],
    2015.0: [n.alain,n.aljazira,n.shababalahli,n.alwahda,n.alnasrEAU,n.alwasl,n.shababalahli,n.baniyas,n.alfujairah,n.emirates,n.aldhafra,n.alsharjah,n.ajman,n.kalba],
    2014.0: [n.shababalahli,n.alwahda,n.aljazira,n.alshababEAU,n.alnasrEAU,n.alain,n.alsharjah,n.aldhafra,n.baniyas,n.ajman,n.emirates,n.alwasl,n.dubai,n.alshaab],
    2013.0: [n.alain,n.shababalahli,n.aljazira,n.baniyas,n.alshababEAU,n.alnasrEAU,n.alwahda,n.aldhafra,n.alwasl,n.ajman,n.dubai,n.alshaab,n.dibbafuj,n.kalba],
    2012.0: [n.alain,n.alnasrEAU,n.alshababEAU,n.aljazira,n.shababalahli,n.alwahda,n.ajman,n.alwasl,n.baniyas,n.dubai,n.emirates,n.alsharjah],
    2011.0: [n.aljazira,n.baniyas,n.alnasrEAU,n.alshababEAU,n.alwahda,n.alwasl,n.alsharjah,n.shababalahli,n.dubai,n.alain,n.kalba,n.aldhafra],
    2010.0: [n.alwahda,n.aljazira,n.alain,n.baniyas,n.alwasl,n.alsharjah,n.alshababEAU,n.shababalahli,n.aldhafra,n.alnasrEAU,n.emirates,n.ajman],
    2009.0: [n.shababalahli,n.aljazira,n.alain,n.alwahda,n.alshababEAU,n.alnasrEAU,n.alwasl,n.aldhafra,n.ajman,n.alsharjah,n.alshaab,n.khorfakkan],
    2008.0: [n.alshababEAU,n.aljazira,n.shababalahli,n.alsharjah,n.alshaab,n.alain,n.alwasl,n.alwahda,n.alnasrEAU,n.aldhafra,n.emirates,n.hatta],
    2007.0: [n.alwasl,n.alwahda,n.aljazira,n.alsharjah,n.alshaab,n.alshababEAU,n.shababalahli,n.alnasrEAU,n.alain,n.emirates,n.alfujairah,n.dubai],
    2006.0: [n.shababalahli,n.alwahda,n.aljazira,n.alain,n.alnasrEAU,n.alshababEAU,n.alsharjah,n.alwasl,n.alshaab,n.emirates,n.baniyas,n.dibbahisn],
    2005.0: [n.alwahda,n.alain,n.aljazira,n.alnasrEAU,n.alsharjah,n.alshababEAU,n.shababalahli,n.alwasl,n.alshaab,n.emirates,n.dubai,n.alkhaleej,n.kalba,n.aldhafra],
    2004.0: [n.alain,n.shababalahli,n.alshababEAU,n.alwasl],
    2003.0: [n.alain,n.alwahda,n.shababalahli,n.alnasrEAU,n.alshaab,n.aljazira,n.alsharjah,n.alwasl,n.alshababEAU,n.kalba,n.dubai,n.aldhafra],
    2002.0: [n.alain,n.aljazira,n.alshaab,n.alwahda,n.shababalahli,n.alwasl,n.alsharjah,n.alnasrEAU,n.kalba,n.alshababEAU,n.alkhaleej,n.baniyas],
    2001.0: [n.alwahda,n.shababalahli,n.aljazira,n.alain,n.alwasl,n.alshaab,n.alnasrEAU,n.alshababEAU,n.kalba,n.emirates,n.alsharjah,n.alfujairah],
    2000.0: [n.alain,n.alnasrEAU,n.alwahda,n.alshaab,n.aljazira,n.shababalahli,n.alwasl,n.alshababEAU,n.kalba,n.emirates,n.baniyas,n.alkhaleej],
    1999.0: [n.alwahda,n.alain,n.alnasrEAU,n.alwasl,n.shababalahli,n.aljazira,n.alshaab,n.alshababEAU,n.alkhaleej,n.baniyas,n.alsharjah,n.rasalkhaimah],
    1998.0: [n.alain,n.alsharjah,n.alwasl,n.shababalahli,n.alwahda,n.alnasrEAU,n.alshababEAU,n.aljazira],
    1997.0: [n.alwasl,n.alnasrEAU,n.alwahda,n.alshababEAU,n.alain,n.alsharjah],
    1996.0: [n.alsharjah,n.alshababEAU,n.alwasl,n.alain,n.alnasrEAU,n.alkhaleej],
    1995.0: [n.alshababEAU,n.alain,n.alwasl,n.alshaab,n.alnasrEAU,n.alsharjah,n.shababalahli,n.alkhaleej,n.alwahda,n.aljazira],
    1994.0: [n.alsharjah,n.alain,n.alnasrEAU,n.alwasl,n.shababalahli,n.alwahda,n.alshababEAU,n.aljazira,n.alshaab,n.baniyas],
    1993.0: [n.alain,n.alwahda,n.alsharjah,n.alnasrEAU,n.baniyas,n.shababalahli,n.alshababEAU,n.alwahda,n.aljazira,n.alkhaleej,n.kalba,n.alurooba],
    1992.0: [n.alwasl,n.alsharjah,n.baniyas,n.alshababEAU,n.alnasrEAU,n.shababalahli,n.alain,n.aljazira,n.alwahda,n.alkhaleej,n.emirates,n.kalba,n.alshaab,n.alfujairah,n.rasalkhaimah,n.ajman],
    1991.0: [],
    1990.0: [n.alshababEAU,n.alwasl,n.alsharjah,n.baniyas,n.alnasrEAU,n.shababalahli,n.alain,n.kalba,n.aljazira,n.alkhaleej,n.alwahda,n.rasalkhaimah,n.alshaab,n.emirates],
    1989.0: [n.alsharjah,n.alwasl,n.alnasrEAU,n.alshababEAU,n.alain,n.alkhaleej,n.alwahda,n.baniyas,n.aljazira,n.alshaab,n.shababalahli,n.emirates],
    1988.0: [n.alwasl,n.alsharjah,n.shababalahli,n.alkhaleej,n.alain,n.alshaab,n.alshababEAU,n.alnasrEAU,n.alwahda,n.emirates,n.kalba,n.rasalkhaimah],
    1987.0: [n.alsharjah,n.alwasl,n.alain,n.alnasrEAU,n.alkhaleej,n.alshaab,n.alwahda,n.alshababEAU,n.kalba,n.shababalahli,n.alfujairah],
    1986.0: [n.alnasrEAU,n.alwasl,n.alsharjah,n.shababalahli,n.alwahda,n.alshababEAU,n.alshaab,n.alkhaleej,n.alain,n.aljazira],
    1985.0: [n.alwasl,],
    1984.0: [n.alain,n.alwasl,n.shababalahli,n.alkhaleej,n.alshababEAU,n.aljazira,n.alshaab,n.alsharjah,n.alnasrEAU,n.emirates],
    1983.0: [n.alwasl,n.alsharjah,],
    1982.0: [n.alwasl,n.alsharjah,],
    1981.0: [n.alain,n.alnasrEAU,],
    1980.0: [n.shababalahli,],
    1979.0: [n.alnasrEAU,n.alsharjah,],
    1978.0: [n.alnasrEAU,n.alain,],
    1977.0: [n.alain,n.alsharjah,],
    1976.0: [n.shababalahli,n.alain,n.alsharjah,n.alshababEAU,],
    1975.0: [n.shababalahli,n.alsharjah,],
    1974.0: [n.alsharjah,n.shababalahli,],
},

  leagueName.iran : {
    2022.0: [n.esteghlal,n.persepolis,n.sepahan,n.golgohar,n.foolad,n.mesrafsanjan,n.zobahan,n.aluminiumarak,n.paykan,n.sanatnaft,n.havadar,n.nassajimazandaran,n.tractor,n.naftmasjedsoleyman,n.shahrkhodro,n.fajrsepasi],
    2021.0: [n.persepolis,n.sepahan,n.esteghlal,n.tractor,n.golgohar,n.foolad,n.paykan,n.mesrafsanjan,n.shahrkhodro,n.sanatnaft,n.aluminiumarak,n.nassajimazandaran,n.naftmasjedsoleyman,n.zobahan,n.saipa,n.machinesazi],
    2020.0: [n.persepolis,n.esteghlal,n.foolad,n.tractor,n.sepahan,n.shahrkhodro,n.sanatnaft,n.naftmasjedsoleyman,n.nassajimazandaran,n.golgohar,n.machinesazi,n.zobahan,n.paykan,n.saipa,n.parsjonoubijam,n.shahinbushehr],
    2019.0: [n.persepolis,n.sepahan,n.esteghlal,n.shahrkhodro,n.tractor,n.zobahan,n.saipa,n.foolad,n.sanatnaft,n.nassajimazandaran,n.paykan,n.parsjonoubijam,n.machinesazi,n.naftmasjedsoleyman,n.sepidrood,n.esteghlalkhuzestan],
    2018.0: [n.persepolis,n.zobahan,n.esteghlal,n.saipa,n.parsjonoubijam,n.paykan,n.foolad,n.sanatnaft,n.gostaresh,n.tractor,n.shahrkhodro,n.esteghlalkhuzestan,n.sepidrood,n.sepahan,n.nafttehran,n.meshkipooshan],
    2017.0: [n.persepolis,n.esteghlal,n.tractor,n.zobahan,n.sepahan,n.paykan,n.esteghlalkhuzestan,n.gostaresh,n.nafttehran,n.foolad,n.shahrkhodro,n.sanatnaft,n.saipa,n.siahjamegan,n.sabaqom,n.machinesazi],
    2016.0: [n.esteghlalkhuzestan,n.persepolis,n.esteghlal,n.tractor,n.nafttehran,n.zobahan,n.sabaqom,n.saipa,n.gostaresh,n.shahrkhodro,n.sepahan,n.foolad,n.siahjamegan,n.malavan,n.rahahan,n.esteghlalahvaz],
    2015.0: [n.sepahan,n.tractor,n.nafttehran,n.zobahan,n.foolad,n.esteghlal,n.saipa,n.persepolis,n.sabaqom,n.shahrkhodro,n.gostaresh,n.rahahan,n.malavan,n.esteghlalkhuzestan,n.paykan,n.naftmasjedsoleyman],
    2014.0: [n.foolad,n.persepolis,n.nafttehran,n.sepahan,n.esteghlal,n.tractor,n.malavan,n.saipa,n.sabaqom,n.gostaresh,n.rahahan,n.esteghlalkhuzestan,n.zobahan,n.fajrsepasi,n.damash,n.meskerman],
    2013.0: [n.esteghlal,n.tractor,n.sepahan,n.foolad,n.nafttehran,n.meskerman,n.persepolis,n.rahahan,n.sabaqom,n.saipa,n.damash,n.fajrsepasi,n.malavan,n.zobahan,n.aluminiumhormozgan,n.sanatnaft,n.paykan,n.gaharzagros],
    2012.0: [n.sepahan,n.tractor,n.esteghlal,n.sabaqom,n.nafttehran,n.zobahan,n.damash,n.saipa,n.meskerman,n.sanatnaft,n.rahahan,n.persepolis,n.fajrsepasi,n.foolad,n.malavan,n.shtabriz,n.shahinbushehr,n.messarcheshmeh],
    2011.0: [n.sepahan,n.esteghlal,n.zobahan,n.persepolis,n.tractor,n.foolad,n.mes,n.malavan,n.sanatnaft,n.sabaqom,n.saipa,n.shtabriz,n.nafttehran,n.shahinbushehr,n.rahahan,n.pashamedan,n.paykan,n.steelazin],
    2010.0: [n.sepahan,n.zobahan,n.esteghlal,n.persepolis,n.steelazin,n.sabaqom,n.tractor,n.saipa,n.mes,n.foolad,n.paykan,n.malavan,n.shahinbushehr,n.rahahan,n.pashamedan,n.fajrsepasi,n.aboumoslem,n.esteghlalahvaz],
    2009.0: [n.esteghlal,n.zobahan,n.mes,n.sepahan,n.persepolis,n.sabaqom,n.foolad,n.paykan,n.fajrsepasi,n.saipa,n.rahahan,n.pashamedan,n.malavan,n.esteghlalahvaz,n.aboumoslem,n.payammashhad,n.damash,n.barghshiraz],
    2008.0: [n.persepolis,n.sepahan,n.sabaqom,n.aboumoslem,n.pashamedan,n.zobahan,n.paykan,n.barghshiraz,n.esteghlalahvaz,n.mes,n.saipa,n.rahahan,n.esteghlal,n.fajrsepasi,n.pegah,n.malavan,n.sanatnaft,n.shirinfaraz],
    2007.0: [n.saipa,n.esteghlalahvaz,n.persepolis,n.esteghlal,n.sepahan,n.aboumoslem,n.paykan,n.zobahan,n.meskerman,n.fajrsepasi,n.pastehran,n.barghshiraz,n.sabaqom,n.malavan,n.foolad,n.rahahan],
    2006.0: [n.esteghlal,n.pastehran,n.saipa,n.sabaqom,n.aboumoslem,n.zobahan,n.sepahan,n.foolad,n.fajrsepasi,n.malavan,n.esteghlalahvaz,n.rahahan,n.persepolis,n.barghshiraz,n.shamoushak,n.shahidghandi],
    2005.0: [n.foolad,n.zobahan,n.esteghlal,n.persepolis,n.esteghlalahvaz,n.pastehran,n.malavan,n.aboumoslem,n.sabaqom,n.sepahan,n.fajrsepasi,n.barghshiraz,n.saipa,n.shamoushak,n.paykan,n.pegah],
    2004.0: [n.pastehran,n.esteghlal,n.foolad,n.zobahan,n.persepolis,n.sepahan,n.paykan,n.esteghlalahvaz,n.pegah,n.aboumoslem,n.fajrsepasi,n.barghshiraz,n.saipa,n.shamoushak],
    2003.0: [n.sepahan,n.pastehran,n.persepolis,n.fajrsepasi,n.paykan,n.saipa,n.foolad,n.zobahan,n.esteghlal,n.barghshiraz,n.esteghlalahvaz,n.aboumoslem,n.sanatnaft,n.malavan],
    2002.0: [n.persepolis,n.esteghlal,n.foolad,n.pastehran,n.aboumoslem,n.zobahan,n.paykan,n.barghshiraz,n.sepahan,n.fajrsepasi,n.saipa,n.malavan,n.esteghlalrasht,n.tractor],
    2001.0: [n.esteghlal,n.persepolis,n.saipa,n.zobahan,n.paykan,n.pastehran,n.sepahan,n.foolad,n.fajrsepasi,n.esteghlalrasht,n.barghshiraz,n.tractor],
    2000.0: [n.persepolis,n.esteghlal,n.fajrsepasi,n.sepahan,n.zobahan,n.tractor,n.pastehran,n.bahman,n.saipa,n.foolad,n.aboumoslem,n.sanatnaft,n.chookatalesh,n.irsotternoshahr],
    1999.0: [n.persepolis,n.esteghlal,n.sepahan,n.saipa,n.pastehran,n.chookatalesh,n.foolad,n.aboumoslem,n.sanatnaft,n.fajrsepasi,n.tractor,n.zobahan,n.malavan,n.shtabriz,n.polyacryl,n.bankmelli],
    1998.0: [n.esteghlal,n.pastehran,n.zobahan,n.fajrsepasi,n.shtabriz,n.sepahan,n.saipa,n.polyacryl,n.tractor,n.foolad,n.sanatnaft,n.bahman,n.esteghlalahvaz,n.payammashhad,n.barghshiraz,n.persepolis],
    1997.0: [n.persepolis,n.bahman,n.sepahan,n.pastehran,n.sanatnaft,n.esteghlal,n.payammashhad,n.barghshiraz,n.esteghlalahvaz,n.zobahan,n.tractor,n.polyacryl,n.machinesazi,n.malavan,n.shamoushak,n.keshavarz],
    1996.0: [n.persepolis,n.bahman,n.esteghlal,n.pastehran,n.sepahan,n.barghshiraz,n.esteghlalahvaz,n.machinesazi,n.keshavarz,n.polyacryl,n.shamoushak,n.malavan,n.jonoobahvaz,n.ararattehran,n.shtabriz,n.saipa],
    1995.0: [n.saipa,n.esteghlal,n.keshavarz,n.persepolis,n.barghshiraz,n.machinesazi,],
    1994.0: [n.saipa,n.persepolis,n.jonoobahvaz,n.zobahan,n.pastehran,n.nassajimazandaran,n.sanatnaft,n.tractor,n.keshavarz,n.chookatalesh,n.sepahan,n.barghshiraz,n.malavan,n.esteghlalahvaz],
    1993.0: [n.pastehran,n.persepolis,n.keshavarz,n.tractor,n.esteghlal,n.polyacryl,n.sanatnaft,n.jonoobahvaz,n.esteghlalahvaz,n.barghshiraz,n.nassajimazandaran,n.komashiraz],
    1992.0: [n.pastehran,n.esteghlal,n.persepolis,n.malavan,n.jonoobahvaz,n.sepahan,n.nassajimazandaran,n.esteghlalahvaz,n.komashiraz,n.tractor,n.esteghlalrasht,n.aboumoslem],
    1991.0: [],
    1990.0: [n.esteghlal,n.persepolis,n.malavan,n.daraei,n.tamisfahan,n.nassajimazandaran,n.sanatnaft,n.tractor,],
    1989.0: [],
    1988.0: [],
    1987.0: [],
    1986.0: [],
    1985.0: [],
    1984.0: [],
    1983.0: [],
    1982.0: [],
    1981.0: [],
    1980.0: [],
    1979.0: [],
    1978.0: [n.pastehran,n.persepolis,n.malavan,n.taj,n.tractor,n.sanatnaft,n.barghshiraz,n.zobahan,n.niru,n.machinesazi,n.shahbaz,n.homa,n.sepahan,n.bankmelli,n.daraei,n.rahahan],
    1977.0: [n.pastehran,n.persepolis,n.shahbaz,n.taj,n.daraei,n.niru,n.malavan,n.homa,n.machinesazi,n.bankmelli,n.barghshiraz,n.ararattehran,n.sanatnaft,n.sepahan,n.zobahan,n.aboumoslem],
    1976.0: [n.persepolis,n.homa,n.pastehran,n.taj,n.aboumoslem,n.daraei,n.malavan,n.sanatnaft,n.zobahan,n.bankmelli,n.sepahan,n.ararattehran,n.niruahvaz,n.barghshiraz,n.rahahan,n.tractor],
    1975.0: [n.taj,n.persepolis,n.homa,n.pastehran,n.sanatnaft,n.malavan,n.bankmelli,n.oghabtehran,n.rahahan,n.sepahan,n.zobahan,n.abobargheahvaz],
    1974.0: [n.persepolis,n.taj,n.pastehran,n.oghabtehran,n.malavan,n.sanatnaft,n.rahahan,n.bankmelli,n.navardahvaz,n.zobahan,n.barghtehran,n.machinesazi],
  },

  leagueName.iraque : {
    2022.0: [n.alShortaIRAQ,n.alQuwaAlJawiya,n.alTalaba,n.alnaft,n.naftAlwasat,  n.alzawraa,n.alnajaf,],
    2021.0: [n.alQuwaAlJawiya,n.alzawraa,n.alnajaf,n.alShortaIRAQ,n.naftAlwasat, n.alnaft,],
    2020.0: [],
    2019.0: [n.alShortaIRAQ,n.alQuwaAlJawiya,n.alzawraa,n.alnaft,n.naftAlwasat,  ],
    2018.0: [n.alzawraa,n.alQuwaAlJawiya,n.alnaft,n.alShortaIRAQ,],
    2017.0: [n.alQuwaAlJawiya,n.alnaft,n.alShortaIRAQ,n.alzawraa,n.naftAlwasat,  n.alminaa,n.alTalaba,],
    2016.0: [n.alzawraa,n.naftAlwasat,n.alTalaba,n.alQuwaAlJawiya,n.alnaft,      n.alminaa,n.alShortaIRAQ,],
    2015.0: [n.naftAlwasat,n.alQuwaAlJawiya,n.alShortaIRAQ,n.alminaa,            ],
    2014.0: [],
    2013.0: [n.alShortaIRAQ,n.erbil,n.alQuwaAlJawiya,],
    2012.0: [n.erbil,n.dohuk,n.alQuwaAlJawiya,],
    2011.0: [n.alzawraa,n.erbil,n.alsinaa,],
    2010.0: [n.dohuk,n.alTalaba,n.alzawraa,],
    2009.0: [n.erbil,n.alnajaf,n.dohuk,],
    2008.0: [n.erbil,n.alzawraa,n.alQuwaAlJawiya,],
    2007.0: [n.erbil,n.alQuwaAlJawiya,n.alnajaf],
    2006.0: [n.alzawraa,n.alnajaf,n.erbil,],
    2005.0: [n.alQuwaAlJawiya,n.alminaa,n.alTalaba],
    2004.0: [],
    2003.0: [],
    2002.0: [n.alTalaba,n.alQuwaAlJawiya,n.alShortaIRAQ,],
    2001.0: [n.alzawraa,n.alQuwaAlJawiya,n.alShortaIRAQ,],
    2000.0: [n.alzawraa,n.alQuwaAlJawiya,n.alShortaIRAQ,],
    1999.0: [n.alzawraa,n.alTalaba,n.alQuwaAlJawiya,],
    1998.0: [n.alShortaIRAQ,n.alQuwaAlJawiya,n.alzawraa,],
    1997.0: [n.alQuwaAlJawiya,n.alzawraa,n.alTalaba,],
    1996.0: [n.alzawraa,n.alnajaf,n.alShortaIRAQ,],
    1995.0: [n.alzawraa,n.alQuwaAlJawiya,n.alnajaf,],
    1994.0: [n.alzawraa,n.alQuwaAlJawiya,n.alTalaba,],
    1993.0: [n.alTalaba,n.alzawraa,n.alQuwaAlJawiya,],
    1992.0: [n.alQuwaAlJawiya,n.alzawraa,],
    1991.0: [n.alzawraa,n.alTalaba,n.alShortaIRAQ,],
    1990.0: [n.alQuwaAlJawiya,n.alRasheed,n.alShortaIRAQ,],
    1989.0: [n.alRasheed,n.alTalaba,n.alzawraa,n.alQuwaAlJawiya,],
    1988.0: [n.alRasheed,n.aljaishIRAQ,n.alQuwaAlJawiya,n.alshababIRAQ],
    1987.0: [n.alRasheed,n.aljaishIRAQ,n.alshababIRAQ,n.alQuwaAlJawiya,],
    1986.0: [n.alTalaba,n.alRasheed,n.alQuwaAlJawiya,n.alshababIRAQ,],
    1985.0: [n.alRasheed,n.aljaishIRAQ,n.alTalaba,n.alminaa,n.alshababIRAQ,   ],
    1984.0: [n.aljaishIRAQ,n.alTalaba,n.alQuwaAlJawiya,n.alshababIRAQ,n.alzawraa,  ],
    1983.0: [n.salahaddin,n.alTalaba,n.alQuwaAlJawiya,n.alsinaa,n.aljaishIRAQ,     ],
    1982.0: [n.alTalaba,n.alQuwaAlJawiya,n.alsinaa,n.salahaddin,n.alzawraa,        ],
    1981.0: [n.alTalaba,n.alShortaIRAQ,n.alQuwaAlJawiya,n.alshababIRAQ,n.altijara, ],
    1980.0: [n.alShortaIRAQ,n.alzawraa,n.alTalaba,n.alshababIRAQ,n.aljaishIRAQ, ],
    1979.0: [n.alzawraa,n.alShortaIRAQ,n.alTalaba,],
    1978.0: [n.alminaa,n.alzawraa,n.alsinaa,],
    1977.0: [n.alzawraa,n.aljamiea,n.alShortaIRAQ,],
    1976.0: [n.alzawraa,n.alQuwaAlJawiya,n.alShortaIRAQ,],
    1975.0: [n.alQuwaAlJawiya,],
    1974.0: [n.alQuwaAlJawiya,],
  },

  leagueName.jordania : {
    2022.0: [n.alFaisalyJORD,n.alWehdat,n.alhussein,n.shababAlOrdon,n.alaqaba, ],
    2021.0: [n.alRamtha,n.alWehdat,n.alsalt,n.alFaisalyJORD,n.alhussein,       ],
    2020.0: [n.alWehdat,n.aljazeera,n.alRamtha,n.alsalt,n.alFaisalyJORD,       ],
    2019.0: [n.alFaisalyJORD,n.aljazeera,n.alWehdat,n.shababAlOrdon,n.alsalt,  ],
    2018.0: [n.alWehdat,n.aljazeera,n.alFaisalyJORD,n.alRamtha,n.shababAlOrdon,],
    2017.0: [n.alFaisalyJORD,n.aljazeera,n.alWehdat,],
    2016.0: [n.alWehdat,n.alFaisalyJORD,n.alahliJOR,n.aljazeera,n.shababAlOrdon,],
    2015.0: [n.alWehdat,n.aljazeera,n.alRamtha,n.thatras,n.alahliJOR,],
    2014.0: [n.alWehdat,n.alFaisalyJORD,n.aljazeera,n.thatras,n.albaqaa],
    2013.0: [n.shababAlOrdon,n.alWehdat],
    2012.0: [n.alFaisalyJORD,n.alRamtha,n.alWehdat,n.albaqaa,],
    2011.0: [n.alWehdat,n.alFaisalyJORD,n.shababAlOrdon,n.albaqaa,],
    2010.0: [n.alFaisalyJORD,n.alWehdat,n.shababAlOrdon,n.alhussein,n.aljazeera, ],
    2009.0: [n.alWehdat,n.shababAlOrdon,n.alFaisalyJORD,n.aljazeera,n.albaqaa,   ],
    2008.0: [n.alWehdat,],
    2007.0: [n.alWehdat,],
    2006.0: [n.shababAlOrdon,],
    2005.0: [n.alWehdat,],
    2004.0: [n.alFaisalyJORD,],
    2003.0: [n.alFaisalyJORD,],
    2002.0: [n.alFaisalyJORD,],
    2001.0: [n.alFaisalyJORD,],
    2000.0: [n.alFaisalyJORD,],
    1999.0: [n.alFaisalyJORD,],
    1998.0: [],
    1997.0: [n.alWehdat,],
    1996.0: [n.alWehdat,],
    1995.0: [n.alWehdat,],
    1994.0: [n.alWehdat,],
    1993.0: [n.alFaisalyJORD,],
    1992.0: [n.alFaisalyJORD,],
    1991.0: [n.alWehdat,],
    1990.0: [n.alFaisalyJORD,],
    1989.0: [n.alFaisalyJORD,],
    1988.0: [n.alFaisalyJORD,],
    1987.0: [n.alWehdat,],
    1986.0: [n.alFaisalyJORD,],
    1985.0: [n.alFaisalyJORD,],
    1984.0: [n.amman,],
    1983.0: [n.alFaisalyJORD,],
    1982.0: [n.alRamtha,],
    1981.0: [n.alRamtha,],
    1980.0: [n.alWehdat,],
    1979.0: [n.alahliJOR,],
    1978.0: [n.alahliJOR,],
    1977.0: [n.alFaisalyJORD,],
    1976.0: [n.alFaisalyJORD,],
    1975.0: [n.alahliJOR,],
    1974.0: [n.alFaisalyJORD,],
    1973.0: [n.alFaisalyJORD,],
    1972.0: [n.alFaisalyJORD,],
    1971.0: [n.alFaisalyJORD,],
    1970.0: [n.alFaisalyJORD,],
    1969.0: [],
    1968.0: [],
    1967.0: [],
    1966.0: [n.alFaisalyJORD,],
    1965.0: [n.alFaisalyJORD,],
    1964.0: [n.alFaisalyJORD,],
    1963.0: [n.alFaisalyJORD,],
    1962.0: [n.alFaisalyJORD,],
    1961.0: [n.alFaisalyJORD,],
    1960.0: [n.alFaisalyJORD,],
    1959.0: [n.alFaisalyJORD,],
    1958.0: [],
    1957.0: [],
    1956.0: [n.aljazeera,],
    1955.0: [n.aljazeera,],
    1954.0: [n.alahliJOR,],
    1953.0: [],
    1952.0: [n.aljazeera,],
    1951.0: [n.alahliJOR,],
    1950.0: [n.alahliJOR,],
  },
  leagueName.kuwait : {
    2022.0: [n.alkuwait,],
    2021.0: [n.alarabiKUW,],
    2020.0: [n.alkuwait,],
    2019.0: [n.alkuwait,],
    2018.0: [n.alkuwait,],
    2017.0: [n.alkuwait,],
    2016.0: [n.alqadsia,],
    2015.0: [n.alkuwait,],
    2014.0: [n.alqadsia,],
    2013.0: [n.alkuwait,],
    2012.0: [n.alqadsia,],
    2011.0: [n.alqadsia,],
    2010.0: [n.alqadsia,],
    2009.0: [n.alqadsia,],
    2008.0: [n.alkuwait,],
    2007.0: [n.alkuwait,],
    2006.0: [n.alkuwait,],
    2005.0: [n.alqadsia,],
    2004.0: [n.alqadsia,],
    2003.0: [n.alqadsia,],
    2002.0: [n.alarabiKUW,],
    2001.0: [n.alkuwait,],
    2000.0: [n.alsalmiya,],
    1999.0: [n.alqadsia,],
    1998.0: [n.alsalmiya,],
    1997.0: [n.alarabiKUW,],
    1996.0: [n.kazma,],
    1995.0: [n.alsalmiya,],
    1994.0: [n.kazma,],
    1993.0: [n.alarabiKUW,],
    1992.0: [n.alqadsia,],
    1991.0: [],
    1990.0: [n.aljahra,],
    1989.0: [n.alarabiKUW,],
    1988.0: [n.alarabiKUW,],
    1987.0: [n.kazma,],
    1986.0: [n.kazma,],
    1985.0: [n.alarabiKUW,],
    1984.0: [n.alarabiKUW,],
    1983.0: [n.alarabiKUW,],
    1982.0: [n.alarabiKUW,],
    1981.0: [n.alsalmiya,],
    1980.0: [n.alarabiKUW,],
    1979.0: [n.alkuwait,],
    1978.0: [n.alqadsia,],
    1977.0: [n.alkuwait,],
    1976.0: [n.alqadsia,],
    1975.0: [n.alqadsia,],
    1974.0: [n.alkuwait,],
    1973.0: [n.alqadsia,],
    1972.0: [n.alkuwait,],
    1971.0: [n.alqadsia,],
    1970.0: [n.alarabiKUW,],
    1969.0: [n.alqadsia,],
    1968.0: [n.alkuwait,],
    1967.0: [n.alarabiKUW,],
    1966.0: [n.alarabiKUW,],
    1965.0: [n.alkuwait,],
    1964.0: [n.alarabiKUW,],
    1963.0: [n.alarabiKUW,],
    1962.0: [n.alarabiKUW,],
  },

  leagueName.siria : {
    2022.0: [n.tishreen,n.alWathba,n.alJaish,],
    2021.0: [n.tishreen,n.alJaish,n.alkaramah,],
    2020.0: [n.tishreen,n.alWathba,n.hutteen,],
    2019.0: [n.alJaish,n.tishreen,n.alwahdaSYR,],
    2018.0: [n.alJaish,n.alittihadSYR,n.alwahdaSYR,],
    2017.0: [n.alJaish,n.tishreen,n.alwahdaSYR,],
    2016.0: [n.alJaish,n.alwahdaSYR,n.alittihadSYR,],
    2015.0: [n.alJaish,n.alwahdaSYR,n.alShortaDamascus,],
    2014.0: [n.alwahdaSYR,n.alJaish,],
    2013.0: [n.alJaish,n.alShortaDamascus,n.alhurriya,],
    2012.0: [n.alShortaDamascus,n.alJaish,n.alwahdaSYR,],
    2011.0: [],
    2010.0: [n.alJaish,n.alkaramah,n.tishreen,],
    2009.0: [n.alkaramah,n.alittihadSYR,],
    2008.0: [n.alkaramah,n.almajd,n.alittihadSYR,],
    2007.0: [n.alkaramah,n.alittihadSYR,],
    2006.0: [n.alkaramah,n.alJaish,n.alwahdaSYR,],
    2005.0: [n.alittihadSYR,n.alkaramah,n.alwahdaSYR,],
    2004.0: [n.alwahdaSYR,n.alkaramah,n.tishreen,],
    2003.0: [n.alJaish,n.alittihadSYR,],
    2002.0: [n.alJaish,n.alittihadSYR,n.alwahdaSYR,],
    2001.0: [n.alJaish,n.alkaramah,],
    2000.0: [n.jableh,n.hutteen,n.tishreen,],
    1999.0: [n.alJaish,n.alkaramah,n.alwahdaSYR,],
    1998.0: [n.alJaish,n.alkaramah,n.hutteen,],
    1997.0: [n.tishreen,n.alJaish,n.alkaramah,],
    1996.0: [n.alkaramah,n.hutteen,n.alhurriya],
    1995.0: [n.alittihadSYR,n.alkaramah,n.jableh,],
    1994.0: [n.alhurriya,n.jableh,n.alittihadSYR,],
    1993.0: [n.alittihadSYR,n.alkaramah,n.alhurriya,],
    1992.0: [n.alhurriya,n.jableh,n.alittihadSYR,],
    1991.0: [n.alfutowa,n.jableh,n.alShortaDamascus,],
    1990.0: [n.alfutowa,n.alkaramah,n.alWathba,],
    1989.0: [n.jableh,n.alShortaDamascus,n.alittihadSYR,],
    1988.0: [n.jableh,n.alittihadSYR,n.alfutowa,],
    1987.0: [n.jableh,n.alkaramah,n.alShortaDamascus,],
    1986.0: [n.alJaish,n.jableh,n.alfutowa,],
    1985.0: [n.alJaish,n.alkaramah,n.jableh,],
    1984.0: [n.alkaramah,n.jableh,n.alittihadSYR,],
    1983.0: [n.alkaramah,n.alittihadSYR,n.alfutowa,],
    1982.0: [n.tishreen,n.alWathba,n.alittihadSYR,],
    1981.0: [],
    1980.0: [n.alShortaDamascus,n.alhurriya,n.alittihadSYR,],
  },
  leagueName.libano : {
    2022.0: [n.alahed,],
    2021.0: [n.alAnsar,],
    2020.0: [],
    2019.0: [n.alahed,],
    2018.0: [n.alahed,],
    2017.0: [n.alahed,],
    2016.0: [n.alsafa,],
    2015.0: [n.alahed,],
    2014.0: [n.nejmeh,],
    2013.0: [n.alsafa,],
    2012.0: [n.alsafa,],
    2011.0: [n.alahed,],
    2010.0: [n.alahed,],
    2009.0: [n.nejmeh,],
    2008.0: [n.alahed,],
    2007.0: [n.alAnsar,],
    2006.0: [n.alAnsar,],
    2005.0: [n.nejmeh,],
    2004.0: [n.nejmeh,],
    2003.0: [n.tripoliLEB],
    2002.0: [n.nejmeh,],
    2001.0: [],
    2000.0: [n.nejmeh,],
    1999.0: [n.alAnsar,],
    1998.0: [n.alAnsar,],
    1997.0: [n.alAnsar,],
    1996.0: [n.alAnsar,],
    1995.0: [n.alAnsar,],
    1994.0: [n.alAnsar,],
    1993.0: [n.alAnsar,],
    1992.0: [n.alAnsar,],
    1991.0: [n.alAnsar,],
    1990.0: [n.alAnsar,],
    1989.0: [],
    1988.0: [n.alAnsar,],
    1987.0: [],
    1986.0: [],
    1985.0: [],
    1984.0: [],
    1983.0: [],
    1982.0: [],
    1981.0: [],
    1980.0: [],
    1979.0: [],
    1978.0: [],
    1977.0: [],
    1976.0: [],
    1975.0: [n.nejmeh,],
    1974.0: [],
    1973.0: [n.nejmeh,],
    1972.0: [],
    1971.0: [],
    1970.0: [n.racingbeirut,],
    1969.0: [n.homenetmen,],
    1968.0: [],
    1967.0: [],
    1966.0: [],
    1965.0: [n.racingbeirut,],
    1964.0: [],
    1963.0: [n.homenetmen,],
    1962.0: [],
    1961.0: [n.homenetmen,],
    1960.0: [],
    1959.0: [],
    1958.0: [],
    1957.0: [n.homenetmen,],
    1956.0: [n.racingbeirut,],
    1955.0: [n.homenetmen,],
    1954.0: [n.homenetmen,],
    1953.0: [],
    1952.0: [],
    1951.0: [n.homenetmen,],
    1950.0: [],
  },

  leagueName.siria : {
    2022.0: [n.tishreen,n.alWathba,n.alJaish,],
    2021.0: [n.tishreen,n.alJaish,n.alkaramah,],
    2020.0: [n.tishreen,n.alWathba,n.hutteen,],
    2019.0: [n.alJaish,n.tishreen,n.alwahdaSYR,],
    2018.0: [n.alJaish,n.alittihadSYR,n.alwahdaSYR,],
    2017.0: [n.alJaish,n.tishreen,n.alwahdaSYR,],
    2016.0: [n.alJaish,n.alwahdaSYR,n.alittihadSYR,],
    2015.0: [n.alJaish,n.alwahdaSYR,n.alShortaDamascus,],
    2014.0: [n.alwahdaSYR,n.alJaish,],
    2013.0: [n.alJaish,n.alShortaDamascus,n.alhurriya,],
    2012.0: [n.alShortaDamascus,n.alJaish,n.alwahdaSYR,],
    2011.0: [],
    2010.0: [n.alJaish,n.alkaramah,n.tishreen,],
    2009.0: [n.alkaramah,n.alittihadSYR,],
    2008.0: [n.alkaramah,n.almajd,n.alittihadSYR,],
    2007.0: [n.alkaramah,n.alittihadSYR,],
    2006.0: [n.alkaramah,n.alJaish,n.alwahdaSYR,],
    2005.0: [n.alittihadSYR,n.alkaramah,n.alwahdaSYR,],
    2004.0: [n.alwahdaSYR,n.alkaramah,n.tishreen,],
    2003.0: [n.alJaish,n.alittihadSYR,],
    2002.0: [n.alJaish,n.alittihadSYR,n.alwahdaSYR,],
    2001.0: [n.alJaish,n.alkaramah,],
    2000.0: [n.jableh,n.hutteen,n.tishreen,],
    1999.0: [n.alJaish,n.alkaramah,n.alwahdaSYR,],
    1998.0: [n.alJaish,n.alkaramah,n.hutteen,],
    1997.0: [n.tishreen,n.alJaish,n.alkaramah,],
    1996.0: [n.alkaramah,n.hutteen,n.alhurriya],
    1995.0: [n.alittihadSYR,n.alkaramah,n.jableh,],
    1994.0: [n.alhurriya,n.jableh,n.alittihadSYR,],
    1993.0: [n.alittihadSYR,n.alkaramah,n.alhurriya,],
    1992.0: [n.alhurriya,n.jableh,n.alittihadSYR,],
    1991.0: [n.alfutowa,n.jableh,n.alShortaDamascus,],
    1990.0: [n.alfutowa,n.alkaramah,n.alWathba,],
    1989.0: [n.jableh,n.alShortaDamascus,n.alittihadSYR,],
    1988.0: [n.jableh,n.alittihadSYR,n.alfutowa,],
    1987.0: [n.jableh,n.alkaramah,n.alShortaDamascus,],
    1986.0: [n.alJaish,n.jableh,n.alfutowa,],
    1985.0: [n.alJaish,n.alkaramah,n.jableh,],
    1984.0: [n.alkaramah,n.jableh,n.alittihadSYR,],
    1983.0: [n.alkaramah,n.alittihadSYR,n.alfutowa,],
    1982.0: [n.tishreen,n.alWathba,n.alittihadSYR,],
    1981.0: [],
    1980.0: [n.alShortaDamascus,n.alhurriya,n.alittihadSYR,],
  },


};