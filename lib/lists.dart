//Vietnam (answer), Bahamas (ask), Brazil (text), Puerto Rico (ask), Czech Rep (answer), Australia (answer),  Great Britain (answer)
//flags: "https://www.countries-ofthe-world.com/flags-of-the-world.html"

// ignore_for_file: prefer_final_fields, unused_field

class Country {
  String name;
  String capitol;
  String flag;
  List<String> states = [];
  List<String> capitals = [];
  List<String> cities = [];
  List<String> mustSee = [];
  List<String> nationalParks = [];
  List<String> islands = [];
  List<String> foodAndDrinks = [];
  bool isExpanded; // Flag to track whether the continent is expanded

  Country({required this.name, required this.capitol, required this.flag,this.isExpanded = false});
  Country.full(
      {required this.name,
      required this.capitol,
      required this.flag,
      required this.states,
      required this.capitals,
      required this.cities,
      required this.mustSee,
      required this.nationalParks,
      required this.islands,
      required this.foodAndDrinks, 
      this.isExpanded = false
      }
  );
}

class Packlist {
  String name;
  List<String> suitcase = [];
  List<String> cosmetics = [];
  List<String> documents = [];
  List<String> electronics = [];
  List<String> carryOn = [];
  bool isExpanded = false;

  Packlist({required this.name, required this.suitcase, required this.cosmetics, required this.documents, 
            required this.electronics, required this.carryOn,this.isExpanded = false});
}

class Lists {

  List<Country> africa = [/*56*/
    Country(name: 'Algeria', capitol: 'Algiers', flag: "assets/Africa/Algeria.png"),
    Country(name: 'Angola', capitol: 'Luanda', flag: "assets/Africa/Angola.png"),
    Country(name: 'Benin', capitol: 'Porto-Novo', flag: "assets/Africa/Benin.png"),
    Country(name: 'Botswana', capitol: 'Gaborone', flag: "assets/Africa/Botswana.png"),
    Country(name: 'Burkina Faso', capitol: 'Ouagadougou', flag: "assets/Africa/BurkinaFaso.png"),
    Country(name: 'Burundi', capitol: 'Bujumbura', flag: "assets/Africa/Burundi.png"),
    Country(name: 'Cameroon', capitol: 'Yaounde', flag: "assets/Africa/Cameroon.png"),
    Country(name: 'Cape Verde', capitol: 'Praia', flag: "assets/Africa/Cabo-Verde.png"),
    Country(name: 'Central African Republic', capitol: 'Bangui', flag: "assets/Africa/Central-African-Republic.png"),
    Country(name: 'Ceuta (Spain)', capitol: 'Ceuta', flag: "assets/Oversea/Ceuta.png"),
    Country(name: 'Chad', capitol: 'N\'Djamena', flag: "assets/Africa/Chad.png"),
    Country(name: 'Comoros', capitol: 'Moroni', flag: "assets/Africa/Comoros.png"),
    Country(name: 'Republic of the Congo', capitol: 'Brazzaville', flag: "assets/Africa/Republic of Congo.png"),
    Country(name: 'Democratic Republic of the Congo', capitol: 'Kinshasa', flag: "assets/Africa/Democratic-Republic-of-Congo.png"),
    Country(name: 'Djibouti', capitol: 'Djibouti', flag: "assets/Africa/Djibouti.png"),
    Country(name: 'Egypt', capitol: 'Cairo', flag: "assets/Africa/Egypt.png"),
    Country(name: 'Equatorial Guinea', capitol: 'Malabo', flag: "assets/Africa/Equatorial-Guinea.png"),
    Country(name: 'Eritrea', capitol: 'Asmara', flag: "assets/Africa/Eritrea.png"),
    Country(name: 'Eswatini', capitol: 'Mbabane', flag: "assets/Africa/Eswatini.png"),
    Country(name: 'Ethiopia', capitol: 'Addis Ababa', flag: "assets/Africa/Ethiopia.png"),
    Country(name: 'Gabon', capitol: 'Libreville', flag: "assets/Africa/Gabon.png"),
    Country(name: 'Gambia', capitol: 'Banjul', flag: "assets/Africa/Gambia.png"),
    Country(name: 'Ghana', capitol: 'Accra', flag: "assets/Africa/Ghana.png"),
    Country(name: 'Guinea', capitol: 'Conakry', flag: "assets/Africa/Guinea.png"),
    Country(name: 'Guinea-Bissau', capitol: 'Bissau', flag: "assets/Africa/Guinea-Bissau.png"),
    Country(name: 'Ivory Coast', capitol: 'Yamoussoukro', flag: "assets/Africa/Cote-d-Ivoire.png"),
    Country(name: 'Kenya', capitol: 'Nairobi', flag: "assets/Africa/Kenya.png"),
    Country(name: 'Lesotho', capitol: 'Maseru', flag: "assets/Africa/Lesotho.png"),
    Country(name: 'Liberia', capitol: 'Monrovia', flag: "assets/Africa/Liberia.png"),
    Country(name: 'Libya', capitol: 'Tripoli', flag: "assets/Africa/Libya.png"),
    Country(name: 'Madagascar', capitol: 'Antananarivo', flag: "assets/Africa/Madagascar.png"),
    Country(name: 'Malawi', capitol: 'Lilongwe', flag: "assets/Africa/Malawi.png"),
    Country(name: 'Mali', capitol: 'Bamako', flag: "assets/Africa/Mali.png"),
    Country(name: 'Mauritania', capitol: 'Nouakchott', flag: "assets/Africa/Mauritania.png"),
    Country(name: 'Mauritius', capitol: 'Port Louis', flag: "assets/Africa/Mauritius.png"),
    Country(name: 'Melilla (Spain)', capitol: 'Melilla', flag: "assets/Oversea/Melilla.png"),
    Country(name: 'Morocco', capitol: 'Rabat', flag: "assets/Africa/Morocco.png"),
    Country(name: 'Mozambique', capitol: 'Maputo', flag: "assets/Africa/Mozambique.png"),
    Country(name: 'Namibia', capitol: 'Windhoek', flag: "assets/Africa/Namibia.png"),
    Country(name: 'Niger', capitol: 'Niamey', flag: "assets/Africa/Niger.png"),
    Country(name: 'Nigeria', capitol: 'Abuja', flag: "assets/Africa/Nigeria.png"),
    Country(name: 'Rwanda', capitol: 'Kigali', flag: "assets/Africa/Rwanda.png"),
    Country(name: 'Sao Tome and Principe', capitol: 'Sao Tome', flag: "assets/Africa/Sao-Tome-and-Principe.png"),
    Country(name: 'Senegal', capitol: 'Dakar', flag: "assets/Africa/Senegal.png"),
    Country(name: 'Seychelles', capitol: 'Victoria', flag: "assets/Africa/Seychelles.png"),
    Country(name: 'Sierra Leone', capitol: 'Freetown', flag: "assets/Africa/Sierra-Leone.png"),
    Country(name: 'Somalia', capitol: 'Mogadishu', flag: "assets/Africa/Somalia.png"),
    Country.full(name: 'South Africa', capitol: 'Pretoria/Bloemfontein/Cape Town',flag: "assets/Africa/South-Africa.png",
            states: [
              'Eastern Cape','Western Cape','Free state','KwaZulu-Natal','Northern Cape','Limpopo'
            ],
            capitals: [
              'Bisho','Cape Town','Bloemfontein','Pietermaritzburg','Kimberly','Polokwane'
            ],
            cities: [
              'Durban', 'Middleburg', 'Port Elizabeth', 'Stellenbosch', 'Oudtshoorn', 
              'Pretoria', 'Johannesburg', 'Bela Bela','Kysna','J-bay'
            ],
            mustSee: [
              'Table Mountain Aerial Cableway','Kirstenbosch National Botanical Garden','Victoria & Alfred Waterfront',
              'Boulders Beach Penguin Colony','Cape of Good Hope','Lion\'s Head (Mountain)',
              'Apartheid Museum','Cango Caves','Robberg Nature Reserve','Tenikwa Wildlife Awareness Centre'
            ],
            nationalParks: [
              'Kruger National Park', 'Addo Elephant Park', 'Table Mountain National Park', 
              'Garden Route National Park', 'Etosha National Park'
            ],
            islands: [
              'Robben Island', 'Dassen Island', 'Seal Island', 'Penguin Island'
            ],
            foodAndDrinks: [
              'Chicken tramizini', 'Braai (Barbeque)','Bobotie (Meat Casserole)','Boerewors (farmer\'s sausage)',
              'Biltong (cured dried meat)','Vetkoek (cooked dough ball)','Potjiekos (small pot food)',
              'Chakalaka (vegetable dish: beans, onions, peppers, carrots)', ' Pap (corn meal)','Durban bunny chow',
              'Malva pudding','Koeksisters (fried, syrup-coated, plaited dough)','Sushi','Pizza','Croissants',
              'Umqombothi (home-brewed sorghum beer)','Rooibos tea','Amarula cream (liqueur)','Witblits (grape-fermented brandy)',
              'Mampoer (fruitier alternative to witblits)','Van Der Hum Liqueur (citrus liqueur)','Springbokkies (creamy Amarula over peppermint liqueur)',
              'Amasi (few days fermented fresh milk)','cream soda', 'Fanta grape','Dry lemon'
            ]   
    ),
    Country(name: 'South Sudan', capitol: 'Juba', flag: "assets/Africa/South-Sudan.png"),
    Country(name: 'Sudan', capitol: 'Khartoum', flag: "assets/Africa/Sudan.png"),
    Country(name: 'Tanzania', capitol: 'Dodoma', flag: "assets/Africa/Tanzania.png"),
    Country(name: 'Togo', capitol: 'Lome', flag: "assets/Africa/Togo.png"),
    Country(name: 'Tunisia', capitol: 'Tunis', flag: "assets/Africa/Tunisia.png"),
    Country(name: 'Uganda', capitol: 'Kampala', flag: "assets/Africa/Uganda.png"),
    Country(name: 'Zambia', capitol: 'Lusaka', flag: "assets/Africa/Zambia.png"),
    Country(name: 'Zimbabwe', capitol: 'Harare', flag: "assets/Africa/Zimbabwe.png"),
  ];
  List<Country> asia = [/*52*/
    Country(name: 'Afghanistan', capitol: 'Kabul', flag: "assets/Asia/Afghanistan.png"),
    Country(name: 'Armenia', capitol: 'Yerevan', flag: "assets/Asia/Armenia.png"),
    Country(name: 'Azerbaijan', capitol: 'Baku', flag: "assets/Asia/Azerbaijan.png"),
    Country(name: 'Bahrain', capitol: 'Manama', flag: "assets/Asia/Bahrain.png"),
    Country(name: 'Bangladesh', capitol: 'Dhaka', flag: "assets/Asia/Bangladesh.png"),
    Country(name: 'Bhutan', capitol: 'Thimphu', flag: "assets/Asia/Bhutan.png"),
    Country(name: 'Brunei', capitol: 'Bandar Seri Begawan', flag: "assets/Asia/Brunei.png"),
    Country(name: 'Cambodia', capitol: 'Phnom Penh', flag: "assets/Asia/Cambodia.png"),
    Country(name: 'China', capitol: 'Beijing', flag: "assets/Asia/China.png"),
    Country(name: 'Cyprus', capitol: 'Nicosia', flag: "assets/Asia/Cyprus.png"),
    Country(name: 'Georgia', capitol: 'Tbilisi', flag: "assets/Asia/Georgia.png"),
    Country(name: 'Hong Kong (China)', capitol: 'Hong Kong', flag: "assets/Asia/Hong-Kong.png"),
    Country(name: 'India', capitol: 'New Delhi', flag: "assets/Asia/India.png"),
    Country(name: 'Indonesia', capitol: 'Jakarta', flag: "assets/Asia/Indonesia.png"),
    Country(name: 'Iran', capitol: 'Tehran', flag: "assets/Asia/Iran.png"),
    Country(name: 'Iraq', capitol: 'Baghdad', flag: "assets/Asia/Iraq.png"),
    Country(name: 'Israel', capitol: 'Jerusalem', flag: "assets/Asia/Israel.png"),
    Country(name: 'Japan', capitol: 'Tokyo', flag: "assets/Asia/Japan.png"),
    Country(name: 'Jordan', capitol: 'Amman', flag: "assets/Asia/Jordan.png"),
    Country(name: 'Kazakhstan', capitol: 'Nur-Sultan', flag: "assets/Asia/Kazakhstan.png"),
    Country(name: 'Kuwait', capitol: 'Kuwait City', flag: "assets/Asia/Kuwait.png"),
    Country(name: 'Kyrgyzstan', capitol: 'Bishkek', flag: "assets/Asia/Kyrgyzstan.png"),
    Country(name: 'Laos', capitol: 'Vientiane', flag: "assets/Asia/Laos.png"),
    Country(name: 'Lebanon', capitol: 'Beirut', flag: "assets/Asia/Lebanon.png"),
    Country(name: 'Macau (China)', capitol: 'Macau', flag: "assets/Asia/Macau.png"),
    Country(name: 'Malaysia', capitol: 'Kuala Lumpur', flag: "assets/Asia/Malaysia.png"),
    Country(name: 'Maldives', capitol: 'Male', flag: "assets/Asia/Maldives.png"),
    Country(name: 'Mongolia', capitol: 'Ulaanbaatar', flag: "assets/Asia/Mongolia.png"),
    Country(name: 'Myanmar', capitol: 'Nay Pyi Taw', flag: "assets/Asia/Myanmar.png"),
    Country(name: 'Nepal', capitol: 'Kathmandu', flag: "assets/Asia/Nepal.png"),
    Country(name: 'North Korea', capitol: 'Pyongyang', flag: "assets/Asia/North-Korea.png"),
    Country(name: 'Oman', capitol: 'Muscat', flag: "assets/Asia/Oman.png"),
    Country(name: 'Pakistan', capitol: 'Islamabad', flag: "assets/Asia/Pakistan.png"),
    Country(name: 'Palestine', capitol: 'Ramallah', flag: "assets/Asia/Palestine.png"),
    Country(name: 'Philippines', capitol: 'Manila', flag: "assets/Asia/Philippines.png"),
    Country.full(name: 'Qatar', capitol: 'Doha', flag: "assets/Asia/Qatar.png",
            states: [],
            capitals: [],
            cities: ['Doha'],
            mustSee: [
              'Souq Waqif (traditional market)', 'Museum of Islamic Art',
              'Lusail Boulevard', 'Katara Beach', 'Inland Sea', 'Aspire Park', 'Mall of Qatar'
            ],
            nationalParks: [],
            islands: ['The Pearl (man-made peninsula)'],
            foodAndDrinks: [
              'Karak Tea', 'Shawarma', 'Machbus (traditional rice and meat)', 'Baklava (sweet pistachio cake)'
            ]
    ),
    Country(name: 'Russia (East)', capitol: 'Moscow', flag: "assets/Asia/Russia (East).png"),
    Country(name: 'Saudi Arabia', capitol: 'Riyadh', flag: "assets/Asia/Saudi-Arabia.png"),
    Country(name: 'Singapore', capitol: 'Singapore', flag: "assets/Asia/Singapore.png"),
    Country(name: 'South Korea', capitol: 'Seoul', flag: "assets/Asia/South-Korea.png"),
    Country(name: 'Sri Lanka', capitol: 'Colombo', flag: "assets/Asia/Sri-Lanka.png"),
    Country(name: 'Syria', capitol: 'Damascus', flag: "assets/Asia/Syria.png"),
    Country(name: 'Taiwan', capitol: 'Taipei', flag: "assets/Asia/Taiwan.png"),
    Country(name: 'Tajikistan', capitol: 'Dushanbe', flag: "assets/Asia/Tajikistan.png"),
    Country(name: 'Thailand', capitol: 'Bangkok', flag: "assets/Asia/Thailand.png"),
    Country(name: 'Timor-Leste', capitol: 'Dili', flag: "assets/Asia/Timor-Leste.png"),
    Country(name: 'Turkey', capitol: 'Ankara', flag: "assets/Asia/Turkey.png"),
    Country(name: 'Turkmenistan', capitol: 'Ashgabat', flag: "assets/Asia/Turkmenistan.png"),
    Country(name: 'United Arab Emirates', capitol: 'Abu Dhabi', flag: "assets/Asia/United-Arab-Emirates.png"),
    Country(name: 'Uzbekistan', capitol: 'Tashkent', flag: "assets/Asia/Uzbekistan.png"),
    Country(name: 'Vietnam', capitol: 'Hanoi', flag: "assets/Asia/Vietnam.png"),
    Country(name: 'Yemen', capitol: 'Sanaa', flag: "assets/Asia/Yemen.png"),
  ];
  List<Country> europe = [/*45*/
    Country.full(name: 'Albania', capitol: 'Tirana', flag: "assets/Europe/Albania.png",
            states: ['Berat'],
            capitals: ['Berat'],
            cities: ['Berat'],
            mustSee: ['Berat'],
            nationalParks: ['Llogara National Park'],
            islands: ['Ksamil Islands'],
            foodAndDrinks: ['Berat'],
    ),
    Country(name: 'Andorra', capitol: 'Andorra la Vella', flag: "assets/Europe/Andorra.png"),
    Country(name: 'Austria', capitol: 'Vienna', flag: "assets/Europe/Austria.png"),
    Country(name: 'Belarus', capitol: 'Minks', flag: "assets/Europe/Belarus.png"),
    Country.full(name: 'Belgium', capitol: 'Brussels', flag: "assets/Europe/Belgium.png",
            states: [],
            capitals: [],
            cities: ['Brugge','Brussels','Antwerp'],
            mustSee: ['atomium'],
            nationalParks: ['national park Hoge venen'],
            islands: [],
            foodAndDrinks: ['beer','chocolate','fries','waffles']
    ),
    Country(name: 'Bosnia and Herzegovina', capitol: 'Sarajevo', flag: "assets/Europe/Bosnia-Herzegovina.png"),
    Country(name: 'Bulgaria', capitol: 'Sofia', flag: "assets/Europe/Bulgaria.png"),
    Country(name: 'Croatia', capitol: 'Zagreb', flag: "assets/Europe/Croatia.png"),
    Country(name: 'Czech Republic', capitol: 'Prague', flag: "assets/Europe/Czech-Republic.png"),
    Country(name: 'Denmark', capitol: 'Copenhagen', flag: "assets/Europe/Denmark.png"),
    Country(name: 'Estonia', capitol: 'Tallinn', flag: "assets/Europe/Estonia.png"),
    Country.full(name: 'Finland', capitol: 'Helsinki',flag: "assets/Europe/Finland.png",
            states: [ /*19 Regions*/
              'Lapland','North Ostrobothnia','Kainuu','North Karelia','North Savo','South Savo','South Karelia',
              'Central Finnland','South Ostrobothnia','Ostrobothnia','Central Ostrobothnia','Pirkanmaa',
              'Satakunta','Päijät-Häme','Kanta-Häme','Kymenlaakso','Uusimaa','Southwest Finland','Åland'
            ],
            capitals: [
              'Rovaniem','Oulu','Kajaani','Joensuu','Kuopio','Mikkeli','Lappeenranta',
              'Jyväskylä','Seinäjoki','Vaasa','Kokkola','Tampere',
              'Pori','Lahti','Hämeenlinna','Kotka/Kouvola','Helsinki','Turku','Mariehamn'
            ],
            cities: [
              'Helsinki', 'Tampere', 'Turku', 'Rovaniemi', 'Oulu', 'Lahti'
            ],
            mustSee: [
              'Northern lights', 'The Santa Claus Village', 'Sauna', 'Midnight sun', 'Salla fell in finnish Lapland (hike)',
              'Helsinki Suomenlinna Sea Fortress'
            ],
            nationalParks: [
              'Lemmenjoki National Park','Pallas-Yllästunturi National Park','Nuuksio National Park'
            ],
            islands: [
              'Åland Islands','Suomenlinna'
            ],
            foodAndDrinks: [
              'Karjalanpiirakka (Karelian Pasty)', 'Reindeer with mashed potatoes and cranberry sauce', 
              'finnish salty liquorice','Kalakukko (fish pie)','Lohikeitto (salmon soup)','Hernekeitto (pea soup)',
              'Mustikkapiirakka (blueberry pie)', 'Poronkäristys (reindeer stew)','Ruisleipä (rye bread)',
              'Lonkero (gin with grapefruit soda)','Koskenkorva (finnish vodka)'
            ]
    ),
    Country(name: 'France', capitol: 'Paris', flag: "assets/Europe/France.png"),
    Country.full(name: 'Germany', capitol: 'Berlin',flag: "assets/Europe/Germany.png",
            states: [
              'Baden-Württemberg', 'Bayern', 'Berlin', 'Brandenburg', 'Bremen', 'Hamburg', 'Hessen', 'Mecklenburg-Vorpommern', 'Niedersachsen',
              'Nordrhein-Westfalen', 'Rheinland-Pfalz','Saarland', 'Sachsen', 'Sachsen-Anhalt', 'Schleswig-Holstein', 'Thüringen'
            ], 
            capitals: [
              'Stuttgart', 'München', 'Berlin', 'Potsdam', 'Bremen', 'Hamburg', 'Wiesbaden', 'Schwerin', 'Hannover', 'Düsseldorf', 'Mainz',
              'Saarbrücken', 'Dresden', 'Magdeburg', 'Kiel', 'Erfurt'
            ], 
            cities: [
              'Aachen', 'Bamberg', 'Cologne', 'Frankfurt', 'Garmisch-Partenkirchen', 'Heidelberg', 'Koblenz', 'Leipzig', 'Lübeck', 'Nuremberg', 
              'Potsdam', 'Regensburg', 'Rothenburg ob der Tauber', 'Trier', 'Weimar', 'Würzburg' 'Stuttgart', 'München', 'Berlin', 'Potsdam', 
              'Bremen', 'Hamburg', 'Wiesbaden', 'Schwerin', 'Hannover', 'Düsseldorf', 'Mainz', 'Saarbrücken', 'Dresden', 'Magdeburg', 'Kiel', 'Erfurt'
            ], 
            mustSee: [
              'Brandenburg Gate (Berlin)','Castle Ruins (Heidelberg)','Semperoper (Dresden)','Nuremberg Castle (Nuremberg)','Cathedral St. Peter (Regensburg)',
              'Nazi Congress Hall (Nuremburg)','Aula Palatina (Trier)','Porta Nigra (Trier)','Palatine Chapel (Aachen)','Holsten Gate (Lübeck)','Neuschwanstein Castle (Hohenschwangau)',
              'Nürburgring (Nuremberg)','Eltz Castle (Wierschem)','Cologne Cathedral (Cologne)','Aachen Cathedral (Aachen)','Rhine (River)', 'Mosel (River)', 'Zugspitze (Mountain)', 
              'Berlin Museum Island', 'Zwinger Palace (Dresden)', 'Berlin Wall Memorial', 'Lake Königssee', 'Schwerin Castle', 'Hohenzollern Castle (Bisingen)','Wartburg Castle (Eisenach)',
              'Cathedral Mainz','Loreley','Walhalla (Regensburg)'
            ], 
            nationalParks: [
              'Bavarian Forest National Park (quiet walks)', 'Berchtesgaden National Park (scenic views)', 'Black Forest National Park (hiking)',
              'Eifel National Park (family-friendly hikes)', 'Hainich National Park (cycling)', 'Harz National Park (plant life diversity)', 
              'Jasmund National Park (Chalk cliffs)', 'Kellerwald-Edersee National Park (wildlife watching)', 'Müritz National Park (lakes)', 
              'Saxon Switzerland National Park (rock climbing)', 'Vorpommersche Boddenlandschaft (Coast)'
            ], 
            islands: [
              'Amrum','Borkum','Fehmarn','Föhr','Hiddensee','Insel Poel','Juist','Langeoog','Rügen','Sylt','Usedom','Fischland-Darß-Zingst (Peninsula)'
            ], 
            foodAndDrinks: [
              'Brötchen (breakfast rolls)','Käsespätzle (pasta dish)','Currywurst (saugage)','Kartoffelpuffer (potato pancakes)','Bratkartoffeln (fried potatoes)',
              'Rouladen (beef of cabbage based dish with filling)','Schnitzel (tender deep fried meat)','Eintopf (one-pot stew)','Sauerbraten (roasted pickled meat)',
              'Brezel','Schwarzwälder Kirschtorte (cheery-chocolate sponge cake)','Döner Kebab (turkish street food)','Königsberger Klopse (german meat balls)',
              'Himmel und Erde (Mashed potatoes and apples)','Beer','Obstler (fruit schnaps)','Sect (sparkling wine)','Jägermeister','Diesel (Beer and Coke)',
              'Radler/Alster (Beer and Sprite)','Russe (Hefeweizen with Sprite)','Kölsch (Cologne beer)','Fruchtschorle (Sparkling fruit juice)','Bowle (alcoholic fruit punch)',
              'Glühwein (Mulled Wine)','Apfelwein (apple wine)'
            ]
    ),
    Country(name: 'Gibraltar (UK)', capitol: 'Gibraltar',flag: "assets/Oversea/Gibraltar.png"),
    Country(name: 'Greece', capitol: 'Athens', flag: "assets/Europe/Greece.png"),
    Country(name: 'Hungary', capitol: 'Budapest', flag: "assets/Europe/Hungary.png"),
    Country(name: 'Iceland', capitol: 'Reykjavik', flag: "assets/Europe/Iceland.png"),
    Country(name: 'Irland', capitol: 'Dublin', flag: "assets/Europe/Ireland.png"),
    Country(name: 'Italy', capitol: 'Rome', flag: "assets/Europe/Italy.png"),
    Country(name: 'Kosovo', capitol: 'Pristina', flag: "assets/Europe/Kosovo.png"),
    Country(name: 'Latvia', capitol: 'Riga', flag: "assets/Europe/Latvia.png"),
    Country(name: 'Liechtenstein', capitol: 'Vaduz', flag: "assets/Europe/Liechtenstein.png"),
    Country(name: 'Lithuania', capitol: 'Vilnius', flag: "assets/Europe/Lithuania.png"),
    Country(name: 'Luxembourg', capitol: 'Luxembourg', flag: "assets/Europe/Luxembourg.png"),
    Country(name: 'Malta', capitol: 'Valletta', flag: "assets/Europe/Malta.png"),
    Country(name: 'Moldova', capitol: 'Chisinau', flag: "assets/Europe/Moldova.png"),
    Country(name: 'Monaco', capitol: 'Monaco', flag: "assets/Europe/Monaco.png"),
    Country(name: 'Montenegro', capitol: 'Podgorica', flag: "assets/Europe/Montenegro.png"),
    Country.full(name: 'Netherlands', capitol: 'Amsterdam',flag: "assets/Europe/Netherlands.png",
            states: [
              'Drenthe','Flevoland','Friesland','Gelderland','Groningen','Limburg','Noord-Brabant','Noord-Holland','Overijssel',
              'Utrecht','Zeeland','Zuid-Holland'
            ],
            capitals: [
              'Assen','Lelystad','Leeuwarden','Arnhem','Groningen','Maastricht','s-Hertogenbosch','Haarlem','Zwolle',
              'Utrecht','Middelburg','Den Haag'
            ],
            cities: ['Amsterdam','Rotterdam','Utrecht','Den Haag','Volemdam','Haarlem'],
            mustSee: ['Keukenhof','Rijksmuseum','Van Gogh Museum','Anne Frank House','Zaanse Schans','Efteling','Euromast',
              'Maurits house','Vondelpark','Zaanse Schans','Kinderdijk','Giethoorn','Southern Sea Museum','Open-Air Folk Museum'
            ],
            nationalParks: ['Hoge Veluwe National Park','De Biesbosch National Park','De Loonse en Drunense Duinen National Park','Wadden Islands'],
            islands: ['Texel','Vlieland','Terschelling','Ameland','Schiermonnikoog'],
            foodAndDrinks: ['Stroopwafel','Poffertjes','Hollandse Nieuwe (raw herring)','Kroket (deep fried rools)','Bitterballen','Drop (candy)',
              'Kaas (try original Gouda!)','Stamppot (mashed potatoes with veggies)','Dutch beer','Jenever (gin)','Advocaat (liqueur)'
            ]
    ),
    Country(name: 'North Macedonia', capitol: 'Skopje', flag: "assets/Europe/North-Macedonia.png"),
    Country(name: 'Norway', capitol: 'Oslo', flag: "assets/Europe/Norway.png"),
    Country.full(name: 'Poland', capitol: 'Warsaw',flag: "assets/Europe/Poland.png",
            states: [
              'Greater Poland','Kuyavian-Pomeranian','Lesser Poland','Lodz','Lower Silesian','Lublin','Lubusz','Masovian','Opole',
              'Podlaskie','Pomeranian','Silesian','Subcarpathian','Swietokrzyskie','Warmian-Masurian','West Pomeranian'
            ],
            capitals: [
              'Poznań','Bydgoszcz','Kraków','Łódź','Wrocław','Lublin','Zielona Góra','Warsaw','Opole','Białystok','Gdańsk',
              'Katowice','Rzeszów','Kielce','Olsztyn','Szczecin'
            ],
            cities: ['Warsaw','Kraków','Gdańsk','Wrocław','Poznan','Łódź','Gdynia','Katowice','Szczecin'],
            mustSee: [
              'Castle in Malbork','Warsaw mermaid','Zamek Królewski w Warszawie (Royal Castle)','Rynek krakowski (Krakow Market Square)',
              'Wawel','Poznań goats','Ostrów Tumski','Morskie Oko','Wieliczka (Salt mine)','Auschwitz)' 
            ],
            nationalParks: [
              'Babiogórski Park Narodowy','Białowieski Park Narodowy','Biebrzański Park Narodowy','Bieszczadzki Park Narodowy','Drawieński Park Narodowy','Gorczański Park Narodowy',
              'Kampinoski Park Narodowy','Karkonoski Park Narodowy','Magurski Park Narodowy','Narwiański Park Narodowy','Ojcowski Park Narodowy','Park Narodowy Bory Tucholskie',
              'Park Narodowy Gór Stołowych','Park Narodowy Ujście Warty','Pieniński Park Narodowy','Poleski Park Narodowy','Roztoczański Park Narodowy','Słowiński Park Narodowy',
              'Świętokrzyski Park Narodowy','Tatrzański Park Narodowy','Wielkopolski Park Narodowy','Wigierski Park Narodowy','Woliński Park Narodowy'
            ],
            islands: ['Hel Peninsula'],
            foodAndDrinks: [
              'pierogi (dumplings)','barszcz czerwony (beetroot soup)','żurek (sour soup)','rosół (chicken soup)','pomidorowa (tomato soup)','kotlet schabowy (pork chop)',
              'gołąbki (stuffed cabbage dish)','bigos (hunter\'s stew)','kiełbasa (sausage)'
            ]
    ),
    Country(name: 'Portugal', capitol: 'Lisbon', flag: "assets/Europe/Portugal.png"),
    Country(name: 'Romania', capitol: 'Bucharest', flag: "assets/Europe/Romania.png"),
    Country(name: 'Russia (West)', capitol: 'Moscow', flag: "assets/Europe/Russia (West).png"),
    Country(name: 'San Marino', capitol: 'San Marino', flag: "assets/Europe/San-Marino.png"),
    Country(name: 'Serbia', capitol: 'Belgrade', flag: "assets/Europe/Serbia.png"),
    Country(name: 'Slovakia', capitol: 'Bratislava', flag: "assets/Europe/Slovakia.png"),
    Country(name: 'Slovenia', capitol: 'Ljubljana', flag: "assets/Europe/Slovenia.png"),
    Country(name: 'Spain', capitol: 'Madrid', flag: "assets/Europe/Spain.png"),
    Country.full(name: 'Sweden', capitol: 'Stockholm', flag: "assets/Europe/Sweden.png",
            states: [
              'Blekinge','Bohuslän','Dalarna','Dalsland','Gästrikland','Gotland','Halland',
              'Hälsingland','Jämtland','Lappland','Medelpad','Norrbotten','Närke','Skåne',
              'Småland','Södermanland','Uppland','Värmland','Västerbotten','Västmanland',
              'Västergötland','Östergötland','Ångermanland','Öland'
            ],
            capitals: [
              'Karlskrona','Uddevalla','Falun','Åmål','Gävle','Visby','Halmstad',
              'Halmstad','Östersund','Luleå','Sundsvall','Luleå','Örebro','Malmö',
              'Växjö','Nyköping','Uppsala','Karlstad','Umeå','Västerås',
              'Skara','Linköping','Härnösand','Borgholm'
            ],
            cities: ['Stockholm','Gothenburg','Malmö','Kalmar','Uppsala'],
            mustSee: [
              'Gamla stan (Old Town Stockholm)','Turning Torso Malmö','Vasa Museum','The royal palace',
              'Drottningholm Palace','Gothenburg botanical garden','Liseberg','Kungsträdgården (Kings garden)'
            ],
            nationalParks: [
              'Abisko National Park','Björnlandet National Park','Blå Jungfrun National Park','Dalby Söderskog National Park','Fulufjället National Park',
              'Färnebofjärden National Park','Gotska Sandön National Park','Hamra National Park','Kosterhavet National Park','Muddus/Muttos National Park',
              'Padjelanta National Park','Sarek National Park','Skuleskogen National Park','Stenshuvud National Park','Söderåsen National Park',
              'Tiveden National Park','Töfsingdalen National Park','Tresticklan National Park','Tyresta National Park','Vadvetjåkka National Park',
              'Ängsö National Park','Östergötland Archipelago National Park'
            ],
            islands: ['Öland','Gotland','Stockholm archipelago','Gothenburg archipelago'],
            foodAndDrinks: [
              'Meatballs with potatoes, brown sauce and lingon Berry jam','Husmanskost','Kebab around Jönköping','Falafel in Lund',''
              'Crayfish party','Smörgåsbord','Pickled herring','Gravlax','Toast Skagen','Prinsesstårta','Semla','Kanelbulle','Lingonberry juice',
            ]
    ),
    Country(name: 'Switzerland', capitol: 'Bern', flag: "assets/Europe/Switzerland.png"),
    Country(name: 'Ukraine', capitol: 'Kyiv', flag: "assets/Europe/Ukraine.png"),
    Country(name: 'United Kingdom', capitol: 'London', flag: "assets/Europe/United-Kingdom.png"),
    Country(name: 'Vatican City', capitol: 'Vatican City', flag: "assets/Europe/Vatican-City.png"),
  ];
  List<Country> northAmerica = [/*23*/
    Country(name: 'Antigua and Barbuda', capitol: 'St. John\'s', flag: "assets/nAmerica/Antigua.png"),
    Country(name: 'Bahamas', capitol: 'Nassau', flag: "assets/nAmerica/Bahamas.png"),
    Country(name: 'Barbados', capitol: 'Bridgetown', flag: "assets/nAmerica/Barbados.png"),
    Country(name: 'Belize', capitol: 'Belmopan', flag: "assets/nAmerica/Belize.png"),
    Country.full(name: 'Canada', capitol: 'Ottawa', flag: "assets/nAmerica/Canada.png",
            states: [
              'Newfoundland','Nova Scotia','New Brunswick','Prince Edward Island','Quebec',
              'Ontario','Manitoba','Saskatchewan','Alberta','British Columbia','Nunavut',
              'Northwest Territories','Yukon'
            ],
            capitals: [
              'St. John\'s','Halifax','Fredericton','Charlottetown','Québec',
              'Toronto','Winnipeg','Regina','Edmonton','Victoria','Iqaluit',
              'Yellowknife','Whitehorse'
            ],
            cities: [
              'Montreal', 'Toronto', 'Calgary', 'Edmonton', 'Vancouver'],
            mustSee: [
              'Niagara Falls', 'Whistler BC', 'Mont Tremblent', 'BC Redwood Forrest'            
            ],
            nationalParks: [
              'Pacific Rim National Parks','Jasper National Park','Waterton Lakes Park','Yoho National Park'
            ],
            islands: [
              ' Vancouver island', 'cape Breton', 'Prince Edward Island', 'Baffin Island and manitoulin island'
            ],
            foodAndDrinks: [
              'Beaver tails', 'poutine', 'whiskey', 'maple taffy', 'Montreal smoked meat', 'lobster', 'ketchup chips','maple syrup'
            ]
    ),
    Country(name: 'Costa Rica', capitol: 'San Jose', flag: "assets/nAmerica/Costa-Rica.png"),
    Country(name: 'Cuba', capitol: 'Havana', flag: "assets/nAmerica/Cuba.png"),
    Country(name: 'Dominica', capitol: 'Roseau', flag: "assets/nAmerica/Dominica.png"),
    Country(name: 'Dominican Republic', capitol: 'Santo Domingo', flag: "assets/nAmerica/Dominican-Republic.png"),
    Country(name: 'El Salvador', capitol: 'San Salvador', flag: "assets/nAmerica/El-Salvador.png"),
    Country(name: 'Grenada', capitol: 'St. George\'s', flag: "assets/nAmerica/Grenada.png"),
    Country(name: 'Guatemala', capitol: 'Guatemala City', flag: "assets/nAmerica/Guatemala.png"),
    Country(name: 'Haiti', capitol: 'Port-au-Prince', flag: "assets/nAmerica/Haiti.png"),
    Country(name: 'Honduras', capitol: 'Tegucigalpa', flag: "assets/nAmerica/Honduras.png"),
    Country(name: 'Jamaica', capitol: 'Kingston', flag: "assets/nAmerica/Jamaica.png"),
    Country(name: 'Mexico', capitol: 'Mexico City', flag: "assets/nAmerica/Mexico.png"),
    Country(name: 'Nicaragua', capitol: 'Managua', flag: "assets/nAmerica/Nicaragua.png"),
    Country(name: 'Panama', capitol: 'Panama City', flag: "assets/nAmerica/Panama.png"),
    Country(name: 'Saint Kitts and Nevis', capitol: 'Basseterre', flag: "assets/nAmerica/Saint-Kitts-and-Nevis.png"),
    Country(name: 'Saint Lucia', capitol: 'Castries', flag: "assets/nAmerica/Saint-Lucia.png"),
    Country(name: 'Saint Vincent and the Grenadines', capitol: 'Kingstown', flag: "assets/nAmerica/Saint-Vincent-and-the-Grenadines.png"),
    Country(name: 'Trinidad and Tobago', capitol: 'Port of Spain', flag: "assets/nAmerica/Trinidad-and-Tobago.png"),
    Country.full(name: 'United States', capitol: 'Washington D.C.', flag: "assets/nAmerica/United-States-of-America.png",
            states: [
              'Alabama','Alaska','Arizona','Arkansas','California','Colorado','Connecticut','Delaware','Florida','Georgia',
              'Hawaii','Idaho','Illinois','Indiana','Iowa','Kansas','Kentucky','Louisiana','Maine','Maryland',
              'Massachusetts','Michigan','Minnesota','Mississippi','Missouri','Montana','Nebraska','Nevada','New Hampshire','New Jersey',
              'New Mexico','New York','North Carolina','North Dakota','Ohio','Oklahoma','Oregon','Pennsylvania','Rhode Island','South Carolina',
              'South Dakota','Tennessee','Texas','Utah','Vermont','Virginia','Washington','West Virginia','Wisconsin','Wyoming'
            ], 
            capitals: [
              'Montgomery (AL)','Juneau (AK)','Phoenix (AZ)','Little Rock (AR)','Sacramento (CA)','Denver (CO)','Hartford (CT)','Dover (DE)','Tallahassee (FL)','Atlanta (GA)',
              'Honolulu (HI)','Boise (ID)','Springfield (IL)','Indianapolis (IN)','Des Moines (IA)','Topeka (KS)','Frankfort (KY)','Baton Rouge (LA)','Augusta (ME)',
              'Annapolis (MD)','Boston (MA)','Lansing (MI)','St. Paul (MN)','Jackson (MS)','Jefferson City (MO)','Helena (MT)','Lincoln (NE)','Carson City (NV)','Concord (NH)',
              'Trenton (NJ)','Santa Fe (NM)','Albany (NY)','Raleigh (NC)','Bismarck (ND)','Columbus (OH)','Oklahoma City (OK)','Salem (OR)','Harrisburg (PA)','Providence (RI)',
              'Columbia (SC)','Pierre (SD)','Nashville (TN)','Austin (TX)','Salt Lake City (UT)','Montpelier (VT)','Richmond (VA)','Olympia (WA)','Charleston (WV)','Madison (WI)','Cheyenne (WY)'
            ], 
            cities: [
              'Miami','New York City','Los Angeles','Chicago','Las Vegas','San Francisco','Seattle','Washington D.C.','New Orleans','Boston',
              'Philadelphia','Denver','Orlando','San Diego','Houston','Dallas','Atlanta','Phoenix','Nashville','Portland',
            ], 
            mustSee: [
              'Golden Gate Bridge (San Francisco)','Statue of Liberty (New York City)','Grand Canyon (Arizona)','White House (Washington D.C.)',
              'Niagara falls (New York)','Hollywood Sign (Los Angeles)','Times Square (New York City)','Las Vegas Strip (Las Vegas)','Disney World (Orlando)',
              'Mount Rushmore (South Dakota)','Alcatraz Island (San Francisco)','Kennedy Space Center (Florida)'
            ], 
            nationalParks: [
              'Yellowstone National Park (Wyoming)','Yosemite National Park (California)','Grand Canyon National Park (Arizona)','Zion National Park (Utah)','Rocky Mountain National Park (Colorado)',
              'Acadia National Park (Maine)','Great Smoky Mountains National Park (North Carolina)','Everglades National Park (Florida)','Glacier National Park (Montana)','Olympic National Park (Washington)',
              'Arches National Park (Utah)','Sequoia National Park (California)','Joshua Tree National Park (California)','Death Valley National Park (California)','Bryce Canyon National Park (Utah)',
              'Canyonlands National Park (Utah)','Great Sand Dunes National Park (Colorado)','Redwood National Park (California)','Crater Lake National Park (Oregon)','Badlands National Park (South Dakota)',
              'White Sands National Park (New Mexico)','Hawaii Volcanoes National Park (Hawaii)','Denali National Park (Alaska)','Grand Teton National Park (Wyoming)','Shenandoah National Park (Virginia)',
            ], 
            islands: [
              'Alcatraz Island (California)','Hawaii (Hawaii)','Key West (Florida)','Long Island (New York)','Maui (Hawaii)','Oahu (Hawaii)','San Juan Islands (Washington)','Santa Catalina Island (California)'
            ], 
            foodAndDrinks: [
              'Apple pie','Biscuits and gravy','Buffalo wings','Cheeseburger','Chicago-style pizza','Clam chowder','Cornbread','Corn dog','Donut','Fried chicken'
            ]
    ),
  ];
  List<Country> southAmerica = [/*13*/
    Country(name: 'Argentina', capitol: 'Buenos Aires', flag: "assets/sAmerica/Argentina.png"),
    Country(name: 'Bolivia', capitol: 'Sucre', flag: "assets/sAmerica/Bolivia.png"),
    Country(name: 'Brazil', capitol: 'Brasilia', flag: "assets/sAmerica/Brazil.png"),
    Country(name: 'Chile', capitol: 'Santiago', flag: "assets/sAmerica/Chile.png"),
    Country(name: 'Colombia', capitol: 'Bogota', flag: "assets/sAmerica/Colombia.png"),
    Country(name: 'Ecuador', capitol: 'Quito', flag: "assets/sAmerica/Ecuador.png"),
    Country(name: 'French Guiana (France)', capitol: 'Cayenne', flag: "assets/Oversea/French-Guiana.png"),
    Country(name: 'Guyana', capitol: 'Georgetown', flag: "assets/sAmerica/Guyana.png"),
    Country(name: 'Paraguay', capitol: 'Asuncion', flag: "assets/sAmerica/Paraguay.png"),
    Country(name: 'Peru', capitol: 'Lima', flag: "assets/sAmerica/Peru.png"),
    Country(name: 'Suriname', capitol: 'Paramaribo', flag: "assets/sAmerica/Suriname.png"),
    Country(name: 'Uruguay', capitol: 'Montevideo', flag: "assets/sAmerica/Uruguay.png"),
    Country(name: 'Venezuela', capitol: 'Caracas', flag: "assets/sAmerica/Venezuela.png"),
  ];
  List<Country> oceania = [/*14*/
    Country.full(name: 'Australia', capitol: 'Canberra', flag: "assets/Oceania/Australia.png",
            states: [
              'New South Wales','Victoria','Queensland','South Australia','Western Australia','Tasmania','Northern Territory','Australian Capital Territory'
            ],
            capitals: [
              'Sydney','Melbourne','Brisbane','Adelaide','Perth','Hobart','Darwin','Canberra'
            ],
            cities: [
              'Sydney','Melbourne','Brisbane','Adelaide','Perth','Hobart','Darwin','Canberra'
            ],
            mustSee: [
              'Koalas','Kangaroos','Varsity Burgers','Fremantle Area','Hillarys Harbor','Scarborough Beach','Cottesloe Beach','Kings Park/Botanical Gardens',
              'The pinnacles (Collection of strange rocks in the desert)','Margaret River Chocolate Factory','Dunsborough Wineries',
              'Great Barrier Reef','Lone Pine Koala Sanctuary','Botanic Gardens','South Bank Parklands','Kangaroo Point','Story Bridge',
              'Brisbane River Cruise','Suttons Beach','Yarra Valley','Great Ocean Road','Royal Botanic Gardens Victoria',
              'MCG (Melbourne Cricket Grounds)','City Circle Tram','Queen Victoria Market','Melbourne Skydeck','Gallery of Victoria',
              'Melbourne Museum','Melbourne Zoo','Sydney Opera House','Sydney Harbor Bridge','Botanic Gardens','Blue Mountains','Manly Bridge',
              'Bondi Beach','Darling harbor','Queen Victoria Building','Chinese Garden of Friendship','Circular Quay','Watsons Bay',
              'Capitol Theatre','Coogee Beach','Murray River','Glenelg Beach','The flinders ranges','McLaren Vale','Botanic Gardens',
              'Capital Building','Mount Ainslie','Molonglo Gorge Trail','Lake Burley Griffin','Australian War Memorial','Questacon (Science Attraction)',
              'Aquarium','Tidbindalla Nature Reserve','National Arboretum','Charles Darwin River Cruise','Crocosaurus Cove','Mindy Beach','Darwin Aviation Museum',
              'Darwin Waterfront','Wave Lagoon','Crocodylus Park','Darwin Military Museum'
            ],
            nationalParks: [
              'Litchfield National Park','Kakadu National Park','Uluru-Kata Tjuta National Park','Purnululu National Park','Great Barrier Reef Marine Park','Daintree National Park',
              'Blue Mountains National Park','Fraser Island','Flinders Chase National Park','Kosciuszko National Park','Cradle Mountain-Lake St Clair National Park'
            ],
            islands: [
              'Tasmania','Rottnest Island','Penguin Island','Moreton Island','Stradbroke Island','Phillip Island','Eyre Peninsula','Kangaroo Island','Fraser Island','Lord Howe Island','Norfolk Island','Christmas Island','Cocos (Keeling) Islands','Whitsunday Islands'
            ],
            foodAndDrinks: [
              'Snag from bunnings (food from a hardware store–beef sausage on a slice of bread)','Australian Meat Pies','Australian BBQ','Vegemite','Pavlova','Lamingtons',
              'Barramundi','Anzac biscuits','Prawns','Tim Tams','Chicken parmigiana','Damper','Fairy bread','Golden Gaytime','Chiko Roll','Crocodile','Kangaroo','Witchetty grub',
              'Emu','Macadamia nuts','Wattleseed','Bunya nuts','Quandong','Lemon myrtle','Finger lime','Quandong','Lemon myrtle','Finger lime','Wattleseed','Macadamia nuts','Crocodile',
              'Kangaroo','Witchetty grub','Barramundi','Golden Gaytime','Fairy bread','Damper','Chicken parmigiana','Tim Tams','Prawns','Anzac biscuits'
            ]   
    ),
    Country(name: 'Fiji', capitol: 'Suva', flag: "assets/Oceania/Fiji.png"),
    Country(name: 'Kiribati', capitol: 'South Tarawa', flag: "assets/Oceania/Kiribati.png"),
    Country(name: 'Marshall Islands', capitol: 'Majuro', flag: "assets/Oceania/Marshall-Islands.png"),
    Country(name: 'Micronesia', capitol: 'Palikir', flag: "assets/Oceania/Micronesia.png"),
    Country(name: 'Nauru', capitol: 'Yaren', flag: "assets/Oceania/Nauru.png"),
    Country(name: 'New Zealand', capitol: 'Wellington', flag: "assets/Oceania/New-Zealand.png"),
    Country(name: 'Palau', capitol: 'Ngerulmud', flag: "assets/Oceania/Palau.png"),
    Country(name: 'Papua New Guinea', capitol: 'Port Moresby', flag: "assets/Oceania/Papua-New-Guinea.png"),
    Country(name: 'Samoa', capitol: 'Apia', flag: "assets/Oceania/Samoa.png"),
    Country(name: 'Solomon Islands', capitol: 'Honiara', flag: "assets/Oceania/Solomon-Islands.png"),
    Country(name: 'Tonga', capitol: 'Nuku\'alofa', flag: "assets/Oceania/Tonga.png"),
    Country(name: 'Tuvalu', capitol: 'Funafuti', flag: "assets/Oceania/Tuvalu.png"),
    Country(name: 'Vanuatu', capitol: 'Port Vila', flag: "assets/Oceania/Vanuatu.png"),
  ];

  List <Country> oversea = [
    Country(name: 'Aland (Finland - Baltic Sea)', capitol: 'Mariehamn', flag: "assets/Oversea/Aland.png"),
    Country(name: 'American Samoa (US - Pacific Ocean)', capitol: 'Pago Pago', flag: "assets/Oversea/American Samoa.png"),
    Country(name: 'Anguilla (UK - Caribbean)', capitol: 'The Valley', flag: "assets/Oversea/Anguilla.png"),
    Country(name: 'Aruba (Netherlands - Caribbean)', capitol: 'Oranjestad', flag: "assets/Oversea/Aruba.png"),
    Country(name: 'Ascension Island (UK - Atlantic Ocean)', capitol: 'Georgetown', flag: "assets/Oversea/Ascension-Island.png"),
    Country(name: 'Azores (Portugal - Atlantic Ocean)', capitol: 'Ponta Delgada', flag: "assets/Oversea/Azores.png"),
    Country(name: 'Bermuda (UK - Atlantic Ocean)', capitol: 'Hamilton', flag: "assets/Oversea/Bermuda.png"),
    Country(name: 'Bonaire (Netherlands - Caribbean)', capitol: 'Kralendijk', flag: "assets/Oversea/Bonaire.png"),
    Country(name: 'Canary Islands (Spain)', capitol: 'Las Palmas/Santa Cruz', flag: "assets/Oversea/Canary-Islands.png"),
    Country(name: 'Cayman Islands (UK - Caribbean)', capitol: 'George Town', flag: "assets/Oversea/Cayman-Islands.png"),
    Country(name: 'Chatham Islands (New Zealand - Pacific Ocean)', capitol: 'Waitangi', flag: "assets/Oversea/Chatham-Islands.png"),
    Country(name: 'Christmas Islands (Australia - Indian Ocean)', capitol: 'Flying Fish Cove', flag: "assets/Oversea/Christmas-Island.png"),
    Country(name: 'Cocos Keeling Islands (Australia - Indian Ocean)', capitol: 'West Island', flag: "assets/Oversea/Cocos-Islands.png"),
    Country(name: 'Cook Islands (New Zealand - Pacific Ocean)', capitol: 'Avarua', flag: "assets/Oversea/Cook-Islands.png"),
    Country(name: 'Curaçao (Netherlands - Caribbean)', capitol: 'Willemstad', flag: "assets/Oversea/Curaçao.png"),
    Country(name: 'Easter Islands (Chile - Pacific Ocean)', capitol: 'Hanga Roa', flag: "assets/Oversea/Easter-Island.png"),
    Country(name: 'Faroe Islands (Denmark - Atlantic Ocean)', capitol: 'Tórshavn', flag: "assets/Oversea/Faroe-Islands.png"),
    Country(name: 'Falkland Islands (UK - Atlantic Ocean)', capitol: 'Stanley', flag: "assets/Oversea/Falkland-Islands.png"),
    Country(name: 'French Polynesia (France - Pacific Ocean)', capitol: 'Papeete', flag: "assets/Oversea/French-Polynesia.png"),
    Country(name: 'Galapagos Islands (Ecuador - Pacific Ocean)', capitol: 'Puerto Baquerizo Moreno', flag: "assets/Oversea/Galapagos-Islands.png"),
    Country(name: 'Greenland (Denmark - Atlantic Ocean)', capitol: 'Nuuk', flag: "assets/Oversea/Greenland.png"),
    Country(name: 'Guadeloupe (France - Caribbean)', capitol: 'Basse-Terre', flag: "assets/Oversea/Guadeloupe.png"),
    Country(name: 'Guam (US - Pacific Ocean)', capitol: 'Hagåtña', flag: "assets/Oversea/Guam.png"),
    Country(name: 'Guernsey (UK - Atlantic Ocean)', capitol: 'Saint Peter Port', flag: "assets/Oversea/Guernsey.png"),
    Country(name: 'Isle of Man (UK - Atlantic Ocean)', capitol: 'Douglas', flag: "assets/Oversea/Isle-of-Man.png"),
    Country(name: 'Jersey (UK - Atlantic Ocean)', capitol: 'Saint Helier', flag: "assets/Oversea/Jersey.png"),
    Country(name: 'Juan Fernandez Islands (Chile - Pacific Ocean)', capitol: 'San Juan Bautista', flag: "assets/Oversea/Juan-Fernandez-Islands.png"),
    Country(name: 'Madeira (Portugal - Atlantic Ocean)', capitol: 'Funchal', flag: "assets/Oversea/Madeira.png"),
    Country(name: 'Martinique (France - Caribbean)', capitol: 'Fort-de-France', flag: "assets/Oversea/Martinique.png"),
    Country(name: 'Mayotte (France - Indian Ocean)', capitol: 'Mamoudzou', flag: "assets/Oversea/Mayotte.png"),
    Country(name: 'Montserrat (UK - Caribbean)', capitol: 'Plymouth', flag: "assets/Oversea/Montserrat.png"),
    Country(name: 'New Caledonia (France - Pacific Ocean)', capitol: 'Nouméa', flag: "assets/Oversea/New-Caledonia.png"),
    Country(name: 'Niue (New Zealand - Pacific Ocean)', capitol: 'Alofi', flag: "assets/Oversea/Niue.png"),
    Country(name: 'Norfolk Island (Australia - Pacific Ocean)', capitol: 'Kingston', flag: "assets/Oversea/Norfolk-Island.png"),
    Country(name: 'Northern Mariana Islands (US - Pacific Ocean)', capitol: 'Saipan', flag: "assets/Oversea/Northern-Mariana-Islands.png"),
    Country(name: 'Pitcairn Islands (UK - Pacific Ocean)', capitol: 'Adamstown', flag: "assets/Oversea/Pitcairn-Islands.png"),
    Country(name: 'Puerto Rico (US - Caribbean)', capitol: 'San Juan', flag: "assets/Oversea/Puerto-Rico.png"),
    Country(name: 'Réunion (France - Indian Ocean)', capitol: 'Saint-Denis', flag: "assets/Oversea/Reunion.png"),
    Country(name: 'Rodrigues Island (Mauritius - Indian Ocean)', capitol: 'Port Mathurin', flag: "assets/Oversea/Rodrigues-Island.png"),
    Country(name: 'Saint Barthélemy (France - Caribbean)', capitol: 'Gustavia', flag: "assets/Oversea/Saint Barthélemy.png"),
    Country(name: 'Saint Helena (UK - Atlantic Ocean)', capitol: 'Jamestown', flag: "assets/Oversea/Saint-Helena.png"),
    Country(name: 'Saint Martin (France - Caribbean)', capitol: 'Marigot', flag: "assets/Oversea/assets/Oversea/Saint-Martin.png.png"),
    Country(name: 'Saint Pierre and Miquelon (France - Atlantic Ocean)', capitol: 'Saint-Pierre', flag: "assets/Oversea/Saint-Pierre-and-Miquelon.png"),
    Country(name: 'Saba (Netherlands - Caribbean)', capitol: 'The Bottom', flag: "assets/Oversea/Saba.png"),
    Country(name: 'Saint Martin (France - Caribbean)', capitol: 'Marigot', flag: "assets/Oversea/Sint-Maarten.png"),
    Country(name: 'Samoa (New Zealand - Pacific Ocean)', capitol: 'Apia', flag: "assets/Oversea/Samoa.png"),
    Country(name: 'Sint Eustatius (Netherlands - Caribbean)', capitol: 'Oranjestad', flag: "assets/Oversea/Sint-Eustatius.png"),
    Country(name: 'Sint Maarten (Netherlands - Caribbean)', capitol: 'Philipsburg', flag: "assets/Oversea/Sint-Maarten.png"),
    Country(name: 'Socotra (Yemen - Indian Ocean)', capitol: 'Hadibu', flag: "assets/Oversea/Socotra.png"),
    Country(name: 'South Georgia & South Sandwich Islands (UK - Atlantic Ocean)', capitol: 'King Edward Point', flag: "assets/Oversea/South-Georgia-and-South-Sandwich-Islands.png"),
    Country(name: 'Tristan da cunha (UK - Atlantic Ocean)', capitol: 'Edinburgh of the Seven Seas', flag: "assets/Oversea/Tristan-da-Cunha.png"),
    Country(name: 'Tokelau (New Zealand - Pacific Ocean)', capitol: 'Atafu/Nukunonu/Fakaofo', flag: "assets/Oversea/Tokelau.png"),
    Country(name: 'Turks & Caicos Islands (UK - Caribbean)', capitol: 'Cockburn Town', flag: "assets/Oversea/Turks-and-Caicos-Islands.png"),
    Country(name: 'Vanuatu (Vanuatu - Pacific Ocean)', capitol: 'Port Vila', flag: "assets/Oversea/Vanuatu.png"),
    Country(name: 'Virgin Islands (UK - Caribbean)', capitol: 'Road Town', flag: "assets/Oversea/British-Virgin-Islands.png"),
    Country(name: 'Virgin Islands (US - Caribbean)', capitol: 'Charlotte Amalie', flag: "assets/Oversea/US-Virgin-Islands.png"),
    Country(name: 'Wallis and Futuna (France - Pacific Ocean)', capitol: 'Mata-Utu', flag: "assets/Oversea/assets/Oversea/Wallis-and-Futuna.png.png")
  ];

  /*List <Country> arcticOcean = [/*2*/
    Country(name: 'Jan Mayen (Norway)', capitol: 'Longyearbyen', flag: "images/OnePieceFlag.png"),
    Country(name: 'Svalbard (Norway)', capitol: 'Longyearbyen', flag: "images/OnePieceFlag.png")
  ];
  List <Country> atlanticOcean = [/*12*/
    Country(name: 'Faroe Islands (Denmark)', capitol: 'Tórshavn', flag: "images/OnePieceFlag.png"),
    Country(name: 'Greenland (Denmark)', capitol: 'Nuuk', flag: "images/OnePieceFlag.png"),
    Country(name: 'Saint Pierre and Miquelon (France)', capitol: 'Saint-Pierre', flag: "images/OnePieceFlag.png"),
    Country(name: 'Azores (Portugal)', capitol: 'Ponta Delgada', flag: "images/OnePieceFlag.png"),
    Country(name: 'Madeira (Portugal)', capitol: 'Funchal', flag: "images/OnePieceFlag.png"),
    Country(name: 'Bermuda (UK)', capitol: 'Hamilton', flag: "images/OnePieceFlag.png"),
    Country(name: 'Falkland Islands (UK)', capitol: 'Stanley', flag: "images/OnePieceFlag.png"),
    Country(name: 'Guernsey (UK)', capitol: 'Saint Peter Port', flag: "images/OnePieceFlag.png"),
    Country(name: 'Isle of Man (UK)', capitol: 'Douglas', flag: "images/OnePieceFlag.png"),
    Country(name: 'Jersey (UK)', capitol: 'Saint Helier', flag: "images/OnePieceFlag.png"),
    Country(name: 'Saint Helena, Ascension & Tristan da cunha (UK)', capitol: 'Jamestown', flag: "images/OnePieceFlag.png"),
    Country(name: 'South Georgia & South Sandwich Islands (UK)', capitol: 'King Edward Point', flag: "images/OnePieceFlag.png")
  ];
  List <Country> indianOcean = [/*6*/
    Country(name: 'Christmas Islands (Australia)', capitol: 'Flying Fish Cove', flag: "images/OnePieceFlag.png"),
    Country(name: 'Cocos Keeling Islands (Australia)', capitol: 'West Island', flag: "images/OnePieceFlag.png"),
    Country(name: 'Mayotte (France)', capitol: 'Mamoudzou', flag: "images/OnePieceFlag.png"),
    Country(name: 'Réunion (France)', capitol: 'Saint-Denis', flag: "images/OnePieceFlag.png"),
    Country(name: 'Socotra (Yemen)', capitol: 'Hadibu', flag: "images/OnePieceFlag.png"),
    Country(name: 'Rodrigues Island (Mauritius)', capitol: 'Port Mathurin', flag: "images/OnePieceFlag.png"),
  ];
  List <Country> pacificOcean = [/*17*/
    Country(name: 'Canary Islands (Spain)', capitol: 'Las Palmas/Santa Cruz', flag: "assets/Oversea/Canary-Islands.png"),
    Country(name: 'Norfolk Island (Australia)', capitol: 'Kingston', flag: "images/OnePieceFlag.png"),
    Country(name: 'Clipperton Island (France)', capitol: 'Port Jaouen', flag: "images/OnePieceFlag.png"),
    Country(name: 'French Polynesia (France)', capitol: 'Papeete', flag: "images/OnePieceFlag.png"),
    Country(name: 'New Caledonia (France)', capitol: 'Nouméa', flag: "images/OnePieceFlag.png"),
    Country(name: 'Wallis and Futuna (France)', capitol: 'Mata-Utu', flag: "images/OnePieceFlag.png"),
    Country(name: 'Cook Islands (New Zealand)', capitol: 'Avarua', flag: "images/OnePieceFlag.png"),
    Country(name: 'Niue (New Zealand)', capitol: 'Alofi', flag: "images/OnePieceFlag.png"),
    Country(name: 'Tokelau (New Zealand)', capitol: 'Atafu/Nukunonu/Fakaofo', flag: "images/OnePieceFlag.png"),
    Country(name: 'Pitcairn, Henderson, Ducie & Oeno Islands (UK)', capitol: 'Adamstown', flag: "images/OnePieceFlag.png"),
    Country(name: 'American Samoa (US)', capitol: 'Pago Pago', flag: "images/OnePieceFlag.png"),
    Country(name: 'Guam (US)', capitol: 'Hagåtña', flag: "images/OnePieceFlag.png"),
    Country(name: 'Northern Mariana Islands (US)', capitol: 'Saipan', flag: "images/OnePieceFlag.png"),
    Country(name: 'Chatham Islands (New Zealand)', capitol: 'Waitangi', flag: "images/OnePieceFlag.png"),
    Country(name: 'Juan Fernandez Islands (Chile)', capitol: 'San Juan Bautista', flag: "images/OnePieceFlag.png"),
    Country(name: 'Galapagos Islands (Ecuador)', capitol: 'Puerto Baquerizo Moreno', flag: "images/OnePieceFlag.png"),
    Country(name: 'Easter Islands (Chile)', capitol: 'Hanga Roa', flag: "images/OnePieceFlag.png")
  ];
  List <Country> mediterranean = [/*1*/
    Country(name: 'Akrotiri (UK)', capitol: '	Episkopi Cantonment', flag: "images/OnePieceFlag.png")
  ];
  List <Country> caribbean = [/*18*/
    Country(name: 'Guadeloupe (France)', capitol: 'Basse-Terre', flag: "images/OnePieceFlag.png"),
    Country(name: 'Martinique (France)', capitol: 'Fort-de-France', flag: "images/OnePieceFlag.png"),
    Country(name: 'Saint Barthélemy (France)', capitol: 'Gustavia', flag: "images/OnePieceFlag.png"),
    Country(name: 'Saint-Martin (France)', capitol: 'Marigot', flag: "images/OnePieceFlag.png"),
    Country(name: 'Aruba (Netherlands)', capitol: 'Oranjestad', flag: "images/OnePieceFlag.png"),
    Country(name: 'Bonaire (Netherlands)', capitol: 'Kralendijk', flag: "images/OnePieceFlag.png"),
    Country(name: 'Curaçao (Netherlands)', capitol: 'Willemstad', flag: "images/OnePieceFlag.png"),
    Country(name: 'Saba (Netherlands)', capitol: 'The Bottom', flag: "images/OnePieceFlag.png"),
    Country(name: 'Sint Eustatius (Netherlands)', capitol: 'Oranjestad', flag: "images/OnePieceFlag.png"),
    Country(name: 'Sint Maarten (Netherlands)', capitol: 'Philipsburg', flag: "images/OnePieceFlag.png"),
    Country(name: 'Anguilla (UK)', capitol: 'The Valley', flag: "images/OnePieceFlag.png"),
    Country(name: 'Virgin Islands (UK)', capitol: 'Road Town', flag: "images/OnePieceFlag.png"),
    Country(name: 'Cayman Islands (UK)', capitol: 'George Town', flag: "images/OnePieceFlag.png"),
    Country(name: 'Dhekelia (UK)', capitol: '	Episkopi Cantonment', flag: "images/OnePieceFlag.png"),
    Country(name: 'Montserrat (UK)', capitol: 'Plymouth', flag: "images/OnePieceFlag.png"),
    Country(name: 'Turks & Caicos Islands (UK)', capitol: 'Cockburn Town', flag: "images/OnePieceFlag.png"),
    Country(name: 'Puerto Rico (US)', capitol: 'San Juan', flag: "images/OnePieceFlag.png"),
    Country(name: 'Virgin Islands (US)', capitol: 'Charlotte Amalie', flag: "images/OnePieceFlag.png")
  ];
*/

  List<String> festivalsAroundTheWorld = [/*29*/
    'Oktoberfest (Munich, Germany)', 'Holi (India)','La Tomatina (Buñol, Spain)','Burning Man (Black Rock City, USA)','Dia de los Muertos (Mexico)','Mardi Gras (New Orleans, USA)','Songkran (Thailand)',
    'Carnival (Rio de Janeiro, Brazil)','Carnival (Venice, Italy)','Regata Storica (Venice, Italy)','Diwali (India)','Semana Santa (Guatemala)','Obon Festival (Japan)','Hermanus Whale Festival (South Africa)',
    'Tsechus (Bhutan)','Québec winter carnival (Canada)','Gion Matsuri (Kyoto)','Saint Patrick\'s Festival (Dublin, Ireland)','Montreux Jazz Festival (Switzerland)','Mevlana Festival (Konya, Turkey)',
    'Semana Santa (Seville, Spain)','Nozawa Onsen Fire Festival (Japan)','Cannes Film Festival (France)','Snow & Ice Festival (Harbin, China)','Glastonbury Festival (Pilton, England)',
    'International Bathtub Regatta (Dinant, Belgium)','Lazarim Carnival (Portugal)','Gasparilla Pirate Festival (Florida, USA)'
  ];
  List<String> food = [/*32*/
    'Pastel de Nata (Portugal)','Pad Thai (Thailand)','Haggis (Scotland)','Schnitzel (Germany)','Hamburger (USA)','Moules-Frites (Belgium)','Sushi (Japan)',
    'Meatballs (Sweden)','Poutine (Canada)','Chili Crab (Singapore)','Paella (Spain)','Nasi Goreng (Indonesia)','Pizza (Italy)','Fish \'N Chips (UK)',
    'Ceviche (Peru)','Gyros (Greece)','Peking Duck (China)','Stroopwafel (Netherlands)','Tacos (Mexico)','Pavlova (New Zealand)','Tagine (Morocco)',
    'Boeuf Bourguignon (France)','Feuoada (Brazil)','Murg (India)','Bobotie (South Afica)','Pho (Vietnam)','Meatpie (Australia)','Shawarma (UAE)',
    'Pierogi (Poland)','Goulash (Hungary)','Beef Noodle Soup (Taiwan)','Falafel (Israel)','Gouda (Netherlands)'
  ];
  List<String> flight = [/*25*/
    'a crying baby','stranger\'s feet on your seat','flew first class','flyig solo','first to board','horrible airplane food','free upgrade',
    'met someone you\'re still in touch with','missed your flight','empty flight','carry-on luggage not approved','snoring so loud you thought it was the engine',
    'airplane clappers...','amazing airplane food','found your seat only checking the boarding pass once','slept stretched out horizontally',
    'flew in scary weather','got pulled out of line by security','a cancelled flight','took an extra bag for souvenirs','last to board','gave up your seat for a travel voucher',
    'got excite at vat-free shopping','had a 24 hour or longer flight trip','in cockpit'
  ];
  List<String> carTrip = [/*16*/
    'blasted classics','brought tooo many snacks','flat tire','went wrong way again and again','co-driver slept the whole drive','slept in your car',
    'made up your own road games','got lost but was the best thing that could\'ve happened','watched the sunrise while driving','used a paper map',
    'flooded road','driving off road','carpool karaoke','car couldn\'t make it up the hill','experienced van life','visited 3 ormore countries in one road trip'
  ];
  List<String> hotels = [/*34*/
    'sleeper train','tree house','capsule hotel','sailboat','safari lodge','overwater bungalow','private island','bubble hotel','log cabin in the forest',
    'route 66 motel','(glass) Igloo','Windmill','themepark hotel','ice hotel','bamboo house','old castle','trailer','haunted house','campervan','underwater hotel',
    'dasert camp','palace','retired airplne','cruise ship','prison hotel','houseboat','wine barrel hotel','Lighthouse','Glamping','Movie inspired location',
    'cave hotel','tiny house','penthouse suite'
  ];
  List<String> travel = [/*36*/
    'seen all 7 new wonders of the world','made a lifelong friend','skipped sightseeing because you were too jet lagged','travel solo','made friends witht eh locals',
    'got ridiculously sunburnt','did a beach clean','watched the sunrise in a new country','did something that scares you','couch surfed on a trip','had a life changing experience',
    'ate something you never thought you would','lost your luggage','tried terrible local food','set foot on all continents','felt totally out of place for a trip',
    'skinny dipped in the ocean','the hike almost destroyed you but the view was worth it','lost your friends','went on a hostel organized activity','had a travel romance',
    'celebrated a public holiday','learned a bit of the local language','got sick on a trip','made memories you will cherish forever','lived abroad','your travel buddy bailed on you',
    'underdressed by accident','completely splurged on a trip','ended up in the wrong place','realized at the reception you booked the wrong dates','nailed a karaoke song not knowing the language',
    'did something illegal','seriously overpacked and got rid of things','road trip','watched local TV without understanding a word'
  ];
  List<String> worldWonders= ['Great Wall of China','Petra','Christ the Redeemer','Machu Picchu','Chichen Itza','Roman Colosseum','Taj Mahal','Great Pyramid of Giza'];
  List<String> airports = [
    'Chicago O\'Hare','London Heathrow','Tokyo Haneda','Hong Kong International','Hamad International','Singapore Changi','Munich Airport',
    'Zurich Airport','Frankfurt Airport','Amsterdam Schiphol','Kuala Lumpur International','Vienna International','Copenhagen Airport',
    'Doha International','Dubai International','Abu Dhabi International','Istanbul Atatürk','Paris Charles de Gaulle','Seoul Incheon',
    'Taiwan Taoyuan','Oslo Gardermoen','Stockholm Arlanda','Cape Town International','Johannesburg O.R. Tambo','Sydney Kingsford Smith',
    'Melbourne Tullamarine','Brisbane International','Auckland International','Vancouver International','Toronto Pearson','Montreal Pierre Elliott Trudeau',
  ];
  List<String> mountains = [
    'Mount Everest (Nepal/Tibet)', 'K2 (Pakistan/China)', 'Denali (Alaska, USA)', 'Matterhorn (Switzerland/Italy)', 'Ama Dablam (Nepal)', 'El Capitan (California, USA)', 
    'Mont Blanc (France/Italy)', 'Mount Kilimanjaro (Tanzania)', 'Vinson Massif (Antarctica)', 'Mount Rainier (Washington, USA)', 'Mount McKinley (Alaska, USA)', 
    'Cho Oyu (Nepal/Tibet)', 'Grand Teton (Wyoming, USA)', 'Mount Fuji (Japan)', 'Mount Whitney (California, USA)', 'Annapurna (Nepal)', 'Pico de Orizaba (Mexico)', 
    'Mount Cook (New Zealand)', 'Makalu (Nepal/Tibet)', 'Mount Elbrus (Russia)'
  ];
  List<String> worldRecords = [
    'Amazon Rainforest (largest tropical rainforest)', 'Andes (longest mountain range)', 'Angel Falls (highest waterfall)', 'Death Valley (lowest point in North America)', 
    'Denali (tallest mountain peak in North America)', 'Gobi Desert (largest desert in Asia)', 'Grand Canyon (largest canyon)', 'Great Barrier Reef (largest coral reef)', 
    'Great Wall of China (longest wall)', 'Lake Baikal (deepest freshwater lake)', 'Lake Superior (largest freshwater lake by surface area)', 'Lake Titicaca (highest navigable lake)', 
    'Mariana Trench (deepest ocean trench)', 'Mount Everest (highest mountain)', 'Mount Kilimanjaro (tallest mountain in Africa)', 'Mount Erebus (southernmost active volcano)', 
    'Nile (longest river)', 'Pacific Ocean (largest ocean)', 'Sahara Desert (largest hot desert)', 'Victoria Falls (largest waterfall by volume)'
  ];
  List<String> beach = [/*24*/
    'built sand castles as an adult','seagull stole your food','beach bonfire','swam in all oceans',
    'chickened out beceause the water was too cold','lost your spot','dancing on the beach',
    'beach volleyball with strangers','saved by a lifeguard','helped clean the beach','dug a hole u can hide in',
    'went on a nudist beach','hot sand burnt your feed','sting by a jellyfish','whale watching',
    'found something valuable','sea turtles hatching','slept on the beach','wardrobe malfunction',
    'swam in your underwear because you forgot your swimwear','midnight dip','visited a black sand beach',
    'driven a car on a beach','wild dolphins jumpind out of the water'
  ];

  List<String> nationalPacklist = [
    'suitcase,cosmetics,documents,electronics,carryOn'
    ];
  List<String> internationalPacklist = [
    'Passport (CarryOn)','Visa (CarryOn)','Driver\'s license (CarryOn)','Travel insurance (CarryOn)','Boarding pass (CarryOn)','Itinerary (CarryOn)','Local currency (CarryOn)',
    'Wallet (CarryOn)','Credit card (CarryOn)','Debit card (CarryOn)','Cash (CarryOn)','Phone (CarryOn)','Charger (CarryOn)','Headphones (CarryOn)','Laptop (CarryOn)',
    
    'Sunglasses (Suitcase)','Shirts (Suitcase)','Shorts (Suitcase)','Pants (Suitcase)','Socks (Suitcase)','Underwear (Suitcase)','Shoes (Suitcase)','Jacket (Suitcase)','Hat (Suitcase)',
    'Scarf (Suitcase)','Gloves (Suitcase)','Swimwear (Suitcase)','Towel (Suitcase)','Pajamas (Suitcase)','Belt (Suitcase)','Umbrella (Suitcase)','Raincoat (Suitcase)','Sandals (Suitcase)',
    'Sneakers (Suitcase)','Boots (Suitcase)','Dress (Suitcase)','Skirt (Suitcase)','Tights (Suitcase)','Sweater (Suitcase)','Tank top (Suitcase)','Blouse (Suitcase)'

    'Toothbrush (Cosmetics)','Toothpaste (Cosmetics)','Deodorant (Cosmetics)','Shampoo (Cosmetics)','Conditioner (Cosmetics)','Body wash (Cosmetics)','Face wash (Cosmetics)','Rasor (Cosmetics)',
    'Shaving cream (Cosmetics)','Hairbrush (Cosmetics)','Hair ties (Cosmetics)','Hair gel (Cosmetics)','Hair spray (Cosmetics)','Makeup (Cosmetics)','Makeup remover (Cosmetics)','Sunscreen (Cosmetics)',
    'Moisturizer (Cosmetics)','Lip balm (Cosmetics)','Hand sanitizer (Cosmetics)','Tissues (Cosmetics)','Tampons/pads (Cosmetics)','Medication (Cosmetics)',
    ];
}