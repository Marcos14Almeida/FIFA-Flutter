import 'package:fifa/values/club_names.dart';
import 'package:fifa/values/league_names.dart';


ClubName n = ClubName();
LeagueOfficialNames leagueName = LeagueOfficialNames();

Map<String,dynamic> mapOrienteMedio = {

  leagueName.arabia : {
    2022.0: [n.alhilal,n.alIttihad,n.alnassr,n.alShabab,n.damac,],
    2021.0: [n.alhilal,n.alShabab,n.alIttihad,n.altaawoun,n.alettifaq,   n.alnassr],
    2020.0: [n.alhilal,n.alnassr,n.alahli,n.alwehda,n.alFaisalyARABIA,   n.alraed],
    2019.0: [n.alnassr,n.alhilal,n.altaawoun,n.alahli,n.alShabab,        n.alFaisalyARABIA,],
    2018.0: [n.alhilal,n.alahli,n.alnassr,n.alettifaq,n.alfateh,         n.alFaisalyARABIA,],
    2017.0: [n.alhilal,n.alahli,n.alnassr,n.alIttihad,n.alraed,          n.alShabab,],
    2016.0: [n.alahli,n.alhilal,n.alIttihad,n.altaawoun,n.alfateh,       n.alShabab,],
    2015.0: [n.alnassr,n.alahli,n.alhilal,n.alIttihad,n.alShabab,        n.alfateh,],
    2014.0: [n.alnassr,n.alhilal,n.alahli,n.alShabab,n.altaawoun,        n.alFaisalyARABIA,],
    2013.0: [n.alfateh,n.alhilal,n.alShabab,n.alnassr,n.alahli,          n.alettifaq,],
    2012.0: [n.alShabab,n.alahli,n.alhilal,n.alettifaq,n.alIttihad,      n.alfateh],
    2011.0: [n.alhilal,n.alIttihad,n.alettifaq,n.alShabab,n.alnassr,     n.alahli,],
    2010.0: [n.alhilal,n.alIttihad,n.alnassr,n.alShabab,n.alwehda,       n.alahli,],
    2009.0: [n.alIttihad,n.alhilal,n.alahli,n.alShabab,n.alnassr,        n.alettifaq,],
    2008.0: [n.alhilal,n.alIttihad,n.alShabab,n.alettifaq,n.alnassr,     n.alwehda,],
    2007.0: [n.alIttihad,n.alhilal,n.alwehda,n.alShabab,n.alahli,        n.alettifaq,],
    2006.0: [n.alShabab,n.alhilal,n.alIttihad,n.alahli,n.alettifaq,      n.alnassr,],
    2005.0: [n.alhilal,n.alShabab,n.alIttihad,n.alnassr,n.alahli,        n.alwehda,],
    2004.0: [n.alShabab,n.alIttihad,n.alhilal,n.alahli,n.alettifaq,      n.alnassr,],
    2003.0: [n.alIttihad,n.alahli,n.alQadisiya,n.alnassr,n.alhilal,  n.alShabab,n.altai,],
    2002.0: [n.alhilal,n.alIttihad,n.alnassr,n.alahli,n.alriad,      n.alshoulla,n.alnajma,],
    2001.0: [n.alIttihad,n.alnassr,n.alahli,n.alhilal,n.alriad,      n.alansarARABIA,n.alShabab],
    2000.0: [n.alIttihad,n.alahli,n.alShabab,n.alnassr,n.alhilal,    n.alriad,n.alettifaq,],
    1999.0: [n.alIttihad,n.alahli,n.alhilal,n.alShabab,n.alnassr,    n.alettifaq,n.alriad,],
    1998.0: [n.alhilal,n.alShabab,n.alahli,n.alnajma,n.alnassr,      n.alettifaq,n.alIttihad,],
    1997.0: [n.alIttihad,n.alhilal,n.alnassr,n.alShabab,n.alahli,    n.alriad,n.alettifaq,],
    1996.0: [n.alhilal,n.alahli,n.alIttihad,n.alnassr,n.alettifaq,   n.alnajma,n.altai,],
    1995.0: [n.alnassr,n.alhilal,n.alriad,n.alettifaq,n.alShabab,    n.alahli,n.alIttihad,],
    1994.0: [n.alnassr,n.alriad,n.alhilal,n.alShabab,n.alQadisiya,   n.alahli,n.alIttihad,],
    1993.0: [n.alShabab,n.alhilal,n.alIttihad,n.alettifaq,n.alahli,  n.alriad,n.alraed,],
    1992.0: [n.alShabab,n.alettifaq,n.alahli,n.alnassr,n.alIttihad,  n.alQadisiya,n.alhilal,],
    1991.0: [n.alShabab,n.alnassr,n.alhilal,n.alettifaq,n.alIttihad, n.alriad,n.alahli,],
    1990.0: [n.alhilal,n.alahli,n.alnassr,n.altai,n.alShabab,        n.alQadisiya,n.alettifaq,],
    1989.0: [n.alnassr,n.alShabab,n.alhilal,n.alahli,n.alettifaq,    n.alIttihad,n.altai,],
    1988.0: [n.alhilal,n.alettifaq,n.alnassr,n.alIttihad,n.alShabab, n.altai,],
    1987.0: [n.alettifaq,n.alhilal,n.alnassr,n.altai,n.alShabab,     n.alahli,],
    1986.0: [n.alhilal,n.alIttihad,n.alnassr,n.alwehda,n.altai,      n.alahli,],
    1985.0: [n.alhilal,n.alShabab,n.alahli,n.alettifaq,n.alnassr,    n.alIttihad,],
    1984.0: [n.alahli,n.alIttihad,n.alettifaq,n.alQadisiya,n.alnassr, n.alhilal,],
    1983.0: [n.alettifaq,n.alhilal,n.alShabab,n.alnassr,n.alahli,    n.alIttihad,n.alQadisiya,n.alnahda,n.alrawdhah,n.ohod],
    1982.0: [n.alIttihad,n.alShabab,n.alhilal,n.alnassr,  ],
    1981.0: [n.alnassr,n.alhilal,n.alQadisiya,n.alahli,n.alettifaq,   n.alIttihad,],
    1980.0: [n.alnassr,n.alhilal,n.alIttihad,n.alahli,n.alShabab,     n.alettifaq,n.alnahda,n.alQadisiya,n.alwehda,n.ohod],
    1979.0: [n.alhilal,n.alnassr,n.alIttihad,n.alahli,n.alQadisiya,    n.alettifaq,n.alnahda,n.alwehda,n.altai,n.alriad],
    1978.0: [n.alahli,n.alnassr,n.alettifaq,n.alIttihad,n.alQadisiya,  n.alhilal,n.alnahda,n.alwehda,n.alShabab,n.ohod],
    1977.0: [n.alhilal,n.alnassr,n.alahli,n.alIttihad,n.alwehda,   n.alQadisiya,n.alShabab,n.alriad],
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
    2022.0: [n.alsadd,n.alduhail,n.alwakrah,n.alarabi,n.algharafa,    ],
    2021.0: [n.alsadd,n.alduhail,n.alrayyan,n.algharafa,n.alahliQAT,  ],
    2020.0: [n.alduhail,n.alrayyan,n.alsadd,n.algharafa,n.alsailiya,  ],
    2019.0: [n.alsadd,n.alduhail,n.alsailiya,n.alrayyan,n.alahliQAT,  ],
    2018.0: [n.alduhail,n.alsadd,n.alrayyan,n.algharafa,n.ummSalal,   ],
    2017.0: [n.alduhail,n.alsadd,n.alrayyan,n.eljaish,n.algharafa,    ],
    2016.0: [n.alrayyan,n.eljaish,n.alsadd,n.alduhail,n.ummSalal,     ],
    2015.0: [n.alduhail,n.alsadd,n.eljaish,n.qatar,n.alahliQAT,       ],
    2014.0: [n.alduhail,n.eljaish,n.alsadd,n.alsailiya,n.alarabi,     ],
    2013.0: [n.alsadd,n.alduhail,n.eljaish,n.alrayyan,n.ummSalal,     ],
    2012.0: [n.alduhail,n.eljaish,n.alrayyan,n.alsadd,n.alkhor,       ],
    2011.0: [n.alduhail,n.algharafa,n.alrayyan,n.alarabi,n.qatar,     ],
    2010.0: [n.algharafa,n.alsadd,n.alarabi,n.qatar,n.alrayyan,       ],
    2009.0: [n.algharafa,n.alsadd,n.alrayyan,n.qatar,n.alkhor,        ],
    2008.0: [n.algharafa,n.alsadd,n.ummSalal,n.qatar,n.alrayyan,      ],
    2007.0: [n.alsadd,n.algharafa,n.ummSalal,n.alrayyan,n.alwakrah,   ],
    2006.0: [n.alsadd,n.qatar,n.alarabi,n.alrayyan,n.alahliQAT,       ],
    2005.0: [n.algharafa,n.alrayyan,n.alkhor,n.qatar,n.alarabi,       ],
    2004.0: [n.alsadd,n.qatar,n.alarabi,n.alahliQAT,n.alrayyan,       ],
    2003.0: [n.qatar,n.alsadd,n.alkhor,n.algharafa,n.alahliQAT,       ],
    2002.0: [n.algharafa,n.qatar,n.alrayyan,n.alsadd,n.alwakrah,      ],
    2001.0: [n.alwakrah,n.alarabi,n.altaawoun,n.alrayyan,n.algharafa, ],
    2000.0: [n.alsadd,n.alrayyan,n.alarabi,n.algharafa,n.alahliQAT,   ],
    1999.0: [n.alrayyan,n.algharafa,n.alsadd,n.alarabi,n.alwakrah,    ],
    1998.0: [n.algharafa,n.alrayyan,n.alsadd,n.alarabi,n.alahliQAT,   ],
    1997.0: [n.alarabi,n.alrayyan,n.algharafa,n.alwakrah,n.alsadd,    ],
    1996.0: [n.alarabi,n.alrayyan,n.alwakrah,n.alsadd,n.algharafa,    ],
    1995.0: [n.alrayyan,],
    1994.0: [n.alarabi,n.alrayyan,],
    1993.0: [n.alarabi,],
    1992.0: [n.algharafa,n.qatar,n.alsadd,n.alarabi,n.alrayyan,        n.alahliQAT,n.alwakrah,n.altaawoun,n.alshamal],
    1991.0: [n.alarabi,],
    1990.0: [n.alrayyan,],
    1989.0: [n.alsadd,],
    1988.0: [n.alsadd,],
    1987.0: [n.alsadd,],
    1986.0: [n.alrayyan,],
    1985.0: [n.alarabi,n.qatar,n.alrayyan,n.alahliQAT,n.alsadd,       n.altaawoun,n.algharafa],
    1984.0: [n.alrayyan,n.alahliQAT,n.alarabi,n.qatar,n.alsadd,       n.altaawoun,n.alwakrah],
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
    2022.0: [],
    2021.0: [n.aljazira,n.baniyas,],
    2020.0: [],
    2019.0: [n.alsharjah,n.shababalahli,n.alWahda,n.alain,n.aljazira, ],
    2018.0: [n.alain,n.alWahda,n.alwasl,n.alnasrEAU,n.shababalahli,   ],
    2017.0: [n.aljazira,n.alwasl,n.alahli,n.alain,n.alWahda,          ],
    2016.0: [n.shababalahli,n.alain,n.alWahda,n.alnasrEAU,n.alShababEAU,],
    2015.0: [n.alain,n.aljazira,n.alShababEAU,n.alWahda,n.alnasrEAU,  ],
    2014.0: [n.shababalahli,n.alWahda,n.aljazira,n.alShababEAU,n.alnasrEAU,],
    2013.0: [n.alain,n.shababalahli,n.aljazira,n.baniyas,n.alShababEAU,  n.alnasrEAU,n.alWahda,],
    2012.0: [n.alain,n.alnasrEAU,n.alShababEAU,n.aljazira,n.shababalahli,  n.alWahda,n.ajman,],
    2011.0: [n.aljazira,n.baniyas,n.alnasrEAU,n.alShababEAU,n.alWahda,   n.alwasl,n.alsharjah,],
    2010.0: [n.alWahda,n.aljazira,n.alain,n.baniyas,n.alwasl,            n.alsharjah,n.alShababEAU,n.shababalahli,n.aldhafra,n.alnasrEAU,],
    2009.0: [n.shababalahli,n.aljazira,n.alain,n.alWahda,n.alShababEAU,  n.alnasrEAU,n.alwasl,n.aldhafra,n.ajman,n.alsharjah,],
    2008.0: [n.alShababEAU,n.aljazira,n.shababalahli,n.alsharjah,n.alshaab,  n.alain,n.alwasl,n.alWahda,n.alnasrEAU,n.aldhafra,],
    2007.0: [n.alwasl,n.alWahda,n.aljazira,n.alsharjah,n.alshaab,        n.alShababEAU,n.shababalahli,n.alnasrEAU,n.alain,],
    2006.0: [n.shababalahli,n.alWahda,n.aljazira,n.alain,n.alnasrEAU,    n.alShababEAU,n.alsharjah,n.alwasl,n.alshaab,n.emirates,     n.baniyas],
    2005.0: [n.alWahda,n.alain,n.aljazira,n.alnasrEAU,n.alsharjah,       n.alShababEAU,n.shababalahli,n.alwasl,n.alshaab,n.emirates,  n.dubai,],
    2004.0: [n.alain,n.shababalahli,n.alShababEAU,n.alwasl,],
    2003.0: [n.alain,n.alWahda,n.shababalahli,n.alnasrEAU,n.alshaab,     n.aljazira,n.alsharjah,n.alwasl,n.alShababEAU,],
    2002.0: [n.alain,n.aljazira,n.alshaab,n.alWahda,n.shababalahli,      n.alwasl,n.alsharjah,n.alnasrEAU,],
    2001.0: [n.alWahda,n.alain,],
    2000.0: [n.alain,n.alnasrEAU,],
    1999.0: [n.alWahda,n.alain,],
    1998.0: [n.alain,n.alsharjah,],
    1997.0: [n.alwasl,n.alnasrEAU,],
    1996.0: [n.alsharjah,n.alwasl,],
    1995.0: [n.alShababEAU,n.alwasl,],
    1994.0: [n.alsharjah,n.alain,],
    1993.0: [n.alain,n.alwasl,],
    1992.0: [n.alwasl,n.alsharjah],
    1991.0: [],
    1990.0: [n.alShababEAU,n.alwasl,],
    1989.0: [n.alsharjah,n.alwasl,],
    1988.0: [n.alwasl,n.alsharjah,],
    1987.0: [n.alsharjah,n.alwasl,],
    1986.0: [n.alnasrEAU,n.alwasl,],
    1985.0: [n.alwasl,n.alShababEAU,],
    1984.0: [n.alain,n.alwasl,],
    1983.0: [n.alwasl,n.alsharjah,],
    1982.0: [n.alwasl,n.alsharjah,],
    1981.0: [n.alain,n.alnasrEAU,],
    1980.0: [n.shababalahli,],
    1979.0: [n.alnasrEAU,n.alsharjah,],
    1978.0: [n.alnasrEAU,n.alain,],
    1977.0: [n.alain,n.alsharjah,],
    1976.0: [n.shababalahli,n.alain,],
    1975.0: [n.shababalahli,n.alsharjah,],
    1974.0: [n.alsharjah,n.shababalahli,],
  },

  leagueName.iran : {
    2022.0: [n.esteghlal,n.persepolis,n.sepahan,],
    2021.0: [n.persepolis,n.sepahan,n.esteghlal,],
    2020.0: [n.persepolis,n.esteghlal,n.foolad,],
    2019.0: [n.persepolis,n.sepahan,n.esteghlal,],
    2018.0: [n.persepolis,n.zobahan,n.esteghlal,],
    2017.0: [n.persepolis,n.esteghlal,n.tractor,],
    2016.0: [n.esteghlalKhuzestan,n.persepolis,n.esteghlal,],
    2015.0: [n.sepahan,n.tractor,n.naftTehran,],
    2014.0: [n.foolad,n.persepolis,n.naftTehran,],
    2013.0: [n.esteghlal,n.tractor,n.sepahan,],
    2012.0: [n.sepahan,n.tractor,n.esteghlal,],
    2011.0: [n.sepahan,n.esteghlal,n.zobahan,],
    2010.0: [n.sepahan,n.zobahan,n.esteghlal,],
    2009.0: [n.esteghlal,n.zobahan,],
    2008.0: [n.persepolis,n.sepahan,],
    2007.0: [n.saipa,n.esteghlal,n.persepolis],
    2006.0: [n.esteghlal,n.pastehran,n.saipa],
    2005.0: [n.foolad,n.zobahan,n.esteghlal,],
    2004.0: [n.pastehran,n.esteghlal,n.foolad,],
    2003.0: [n.sepahan,n.pastehran,n.persepolis,],
    2002.0: [n.persepolis,n.esteghlal,n.foolad,],
    2001.0: [n.esteghlal,n.persepolis,n.saipa,],
    2000.0: [n.persepolis,n.esteghlal,],
    1999.0: [n.persepolis,n.esteghlal,n.sepahan,],
    1998.0: [n.esteghlal,n.pastehran,n.zobahan,],
    1997.0: [n.persepolis,n.bahman,n.sepahan,],
    1996.0: [n.persepolis,n.bahman,n.esteghlal,],
    1995.0: [n.saipa,n.esteghlal,],
    1994.0: [n.saipa,n.persepolis,],
    1993.0: [n.pastehran,n.persepolis,n.keshavarz,],
    1992.0: [n.pastehran,n.esteghlal,n.persepolis,],
    1991.0: [],
    1990.0: [n.esteghlal,n.persepolis,n.malavan,],
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
    1978.0: [n.pastehran,n.persepolis,n.malavan],
    1977.0: [n.pastehran,n.persepolis,],
    1976.0: [n.persepolis,n.homa,n.pastehran],
    1975.0: [n.esteghlal,n.persepolis,n.homa],
    1974.0: [n.persepolis,n.esteghlal,n.pastehran,],
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
    2012.0: [n.erbil,n.duhok,n.alQuwaAlJawiya,],
    2011.0: [n.alzawraa,n.erbil,n.alsinaa,],
    2010.0: [n.duhok,n.alTalaba,n.alzawraa,],
    2009.0: [n.erbil,n.alnajaf,n.duhok,],
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
    1989.0: [n.alRasheed,n.alTalaba,n.alzawraa,n.altayaran,],
    1988.0: [n.alRasheed,n.aljaishIRAQ,n.altayaran,n.alshababIRAQ],
    1987.0: [n.alRasheed,n.aljaishIRAQ,n.alshababIRAQ,n.altayaran,],
    1986.0: [n.alTalaba,n.alRasheed,n.altayaran,n.alshababIRAQ,],
    1985.0: [n.alRasheed,n.aljaishIRAQ,n.alTalaba,n.alminaa,n.alshababIRAQ,   ],
    1984.0: [n.aljaishIRAQ,n.alTalaba,n.altayaran,n.alshababIRAQ,n.alzawraa,  ],
    1983.0: [n.salahaddin,n.alTalaba,n.altayaran,n.alsinaa,n.aljaishIRAQ,     ],
    1982.0: [n.alTalaba,n.altayaran,n.alsinaa,n.salahaddin,n.alzawraa,        ],
    1981.0: [n.alTalaba,n.alShortaIRAQ,n.altayaran,n.alshababIRAQ,n.altijara, ],
    1980.0: [n.alShortaIRAQ,n.alzawraa,n.alTalaba,n.alshababIRAQ,n.aljaishIRAQ, ],
    1979.0: [n.alzawraa,n.alShortaIRAQ,n.alTalaba,],
    1978.0: [n.alminaa,n.alzawraa,n.alsinaa,],
    1977.0: [n.alzawraa,n.aljamiea,n.alShortaIRAQ,],
    1976.0: [n.alzawraa,n.altayaran,n.alShortaIRAQ,],
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
    2022.0: [n.alKuwait,],
    2021.0: [n.alArabiKUW,],
    2020.0: [n.alKuwait,],
    2019.0: [n.alKuwait,],
    2018.0: [n.alKuwait,],
    2017.0: [n.alKuwait,],
    2016.0: [n.alQadsia,],
    2015.0: [n.alKuwait,],
    2014.0: [n.alQadsia,],
    2013.0: [n.alKuwait,],
    2012.0: [n.alQadsia,],
    2011.0: [n.alQadsia,],
    2010.0: [n.alQadsia,],
    2009.0: [n.alQadsia,],
    2008.0: [n.alKuwait,],
    2007.0: [n.alKuwait,],
    2006.0: [n.alKuwait,],
    2005.0: [n.alQadsia,],
    2004.0: [n.alQadsia,],
    2003.0: [n.alQadsia,],
    2002.0: [n.alArabiKUW,],
    2001.0: [n.alKuwait,],
    2000.0: [n.alsalmiya,],
    1999.0: [n.alQadsia,],
    1998.0: [n.alsalmiya,],
    1997.0: [n.alArabiKUW,],
    1996.0: [n.kazma,],
    1995.0: [n.alsalmiya,],
    1994.0: [n.kazma,],
    1993.0: [n.alArabiKUW,],
    1992.0: [n.alQadsia,],
    1991.0: [],
    1990.0: [n.aljahra,],
    1989.0: [n.alArabiKUW,],
    1988.0: [n.alArabiKUW,],
    1987.0: [n.kazma,],
    1986.0: [n.kazma,],
    1985.0: [n.alArabiKUW,],
    1984.0: [n.alArabiKUW,],
    1983.0: [n.alArabiKUW,],
    1982.0: [n.alArabiKUW,],
    1981.0: [n.alsalmiya,],
    1980.0: [n.alArabiKUW,],
    1979.0: [n.alKuwait,],
    1978.0: [n.alQadsia,],
    1977.0: [n.alKuwait,],
    1976.0: [n.alQadsia,],
    1975.0: [n.alQadsia,],
    1974.0: [n.alKuwait,],
    1973.0: [n.alQadsia,],
    1972.0: [n.alKuwait,],
    1971.0: [n.alQadsia,],
    1970.0: [n.alArabiKUW,],
    1969.0: [n.alQadsia,],
    1968.0: [n.alKuwait,],
    1967.0: [n.alArabiKUW,],
    1966.0: [n.alArabiKUW,],
    1965.0: [n.alKuwait,],
    1964.0: [n.alArabiKUW,],
    1963.0: [n.alArabiKUW,],
    1962.0: [n.alArabiKUW,],
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
    2003.0: [],
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
  },

};