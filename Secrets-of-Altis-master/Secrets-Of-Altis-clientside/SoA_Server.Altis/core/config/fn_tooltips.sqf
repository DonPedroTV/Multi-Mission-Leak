private["_type","_ret","_all","_typelong","_illegal","_arr"];
_type = [_this,0,"",[""]] call BIS_fnc_param;
_typelong = [_type,0] call life_fnc_varHandle;
_ret = [];
_arr = [];
_all = "";
_illegal = "Legal";
if(_type == "") exitWith {""};

//Beschreibung | Verarbeitung | Verkauf

_all = switch(_type) do {
	case "apple": {["Orangen sind voll mit Vitamin C. Lecker!","","Supermarkt"]};
	case "rabbit": {["Oh nein du hast Hasi getötet. Mach Bratwürste daraus...oder iss ihn einfach.","","Supermarkt, Metzger"]};
	case "salema": {["Nur frischer Fisch ist guter Fisch.","","Fischmarkt"]};
	case "ornate": {["Nur frischer Fisch ist guter Fisch.","","Fischmarkt"]};
	case "mackerel": {["Nur frischer Fisch ist guter Fisch.","","Fischmarkt"]};
	case "tuna": {["Nur frischer Fisch ist guter Fisch.","","Fischmarkt"]};
	case "mullet": {["Nur frischer Fisch ist guter Fisch.","","Fischmarkt"]};
	case "catshark": {["Nur frischer Fisch ist guter Fisch.","","Fischmarkt"]};
	case "ticket": {["Ein Ticket aus dem Ticketautomaten.","","","Mautstation"]};
	case "parkschein": {["Ein Parkschein aus dem Parkscheinautomaten.","","","Parkplatz"]};
	case "water": {["Um nicht zu verdursten solltest du immer genügend Wasser trinken.","","Supermarkt"]};
	case "turtle": {["Schildkröten sind zwar niedliche Tiere aber du kannst sie trotzdem zu Schildkrötensuppe verarbeiten.","",""]};
	case "turtlesoup": {["Nur echte Männer essen Schildkrötensuppe mit dem Panzer. Vorsicht! Der Panzer kann schlecht verdaut werden.","",""]};
	case "donuts": {["Donut's sind das Grundnahrungsmittel eines Berufstätigen. Verwehre ihnen einen und der Tag ist für sie gelaufen.","","Dimitri's Pizza Kavala"]};
	case "coffee": {["Kaffee? Kaffee! Kaffeeeeeeeeee!!! Trink nicht zuviel sonst drehst du ab.","","Konditorei, Dimitri's Pizza Kavala"]};
	case "tbacon": {["Tactical Bacon? Taktisches Funkfeuer? Nee, Moment. Taktischer Speck!","","Supermarkt"]};
	case "lockpick": {["Klick klack da bricht er ab...oder auch nicht.","","Rebellenhandel","Aufbruch von Vehikeln, Plüschhandschellen"]};
	case "pickaxe": {["Kupfer, Stein und Eisen bricht, aber diese Hacke nicht.","","Werkzeugladen","Kupfer-, Eisen-, Steinabbau"]};
	case "fishing": {["Mit dieser Angel fängst du Fische wie kein anderer.","","Werkzeugladen","Fischfang"]};
	case "redgull": {["Nicht nur im E-Sport ein beliebtes Aufputschgetränk. Auch für wahre Zocker ein Must-have.","","Supermarkt"]};
	case "fuelE": {["Ein leerer Benzinkanister. Kann bei einer Tankstelle aufgefüllt werden.","Tankstelle","",""]};
	case "fuelF": {["Mit dem Sprit kannst du Vehikel nachtanken. Puhh stinkt das...","","Werkzeugladen","Auftanken von Vehikeln"]};
	case "peach": {["Oliven sind das mediterrane Grundnahrungsmittel.","","Supermarkt"]};
	case "spikeStrip": {["Pfffff und schon ist die Luft raus. Da hilft nicht mal mehr Luft aufpumpen.","","","Straßensperren"]};
	case "blastingcharge": {["In Deckung! 3... 2.. 1. Kawumm!","","Rebellenhandel","Bankraub"]};
	case "longbox": {["Ob die Muskel-Lisa, der Schreihals oder andere Bilder. Mit diesem Behälter kannst du sie alle transportieren.","","Rebellenhandel","Kunstraub"]};
	case "boltcutter": {["Schnipp-Schnapp - da ist die Kette ab! Der Schlüssel zu jedem Gebäude.","","Werkzeugladen","Aufbruch von Häusern, Bank, Kunstgalerie"]};
	case "defusekit": {["Die Zeit läuft! Schnell entschärfen! Sonst platzt der Partyknaller.","","","Entschärfung von Sprengstoffen"]};
	case "storagesmall": {["Die kleine Variante der Roco-Lagerboxen für's Eigenheim.","","Möbelhaus","Hauseinrichtung"]};
	case "storagebig": {["Die große Variante der Roco-Lagerboxen für's Eigenheim.","","Möbelhaus","Hauseinrichtung"]};
	case "holzb": {["Halt stopp! Die praktische Barriere für den einfachen Polizisten.","","","Straßensperren"]};
	case "sperre": {["Halt stopp! Die praktische Barriere für den einfachen Polizisten.","","","Straßensperren"]};
	case "hut": {["Halt stopp! Der praktische Pylon für unterwegs.","","","Straßensperren"]};
	case "band": {["Halt stopp! Die praktische Barriere für den einfachen Polizisten.","","","Straßensperren"]};
	case "battery": {["Handyakku leer? Mit diesem ultrahochmodernen Akku hast du wieder Saft.","","Zubehörladen","Handynutzung"]};
	case "kidney": {["Die Nieren ist eines der wichtigsten Organen von Säugetieren. Ohne sie geht nichts.","","Organhändler","Überleben"]};
	case "scalpel": {["Chirurgisch essenzielles Arbeitsgerät. Mit höchster Präzision kannst du so z.B. Nieren explantieren.","","Organhändler","Organexplantation"]};
	case "eis": {["Das original griechische Eis übertrifft einfach alles. Gönn dir!","","Supermarkt"]};
	case "party": {["Tröööööt! Der Partykracher schlechthin.","","Let's Party Kavala","Feierlaune!! Yeah!"]};
	case "bobby": {["Na, auch einen Kater von der letzten Party? Dieser Drink hat 0.0002% Alkoholgehalt.","","Hula Bar Kavala"]};
	case "bottledshine": {["War der Tag bescheiden? Wurdest du heute wieder überfallen? Dein Leben geht den Bach runter? Trink!","","Alkoho..holiker"]};
	case "bottledwhiskey": {["Nur echte Kenner, Schotten und I(r)ren wissen ihn zu schätzen.","","Alkoho..holiker"]};
	case "bottledbeer": {["Gemütliches Beisammensitzen und über alte Zeiten plaudern. Kein Bier vor Vier.","","Alkoho..holiker"]};
	case "moonshine": {["Ein Gemisch aus Hefe und Maische. Jetzt noch abfüllen und genießen.","Schwarzbrennerei","","Herstellung von Schnapsflaschen"]};
	case "whiskey": {["Ein Gemisch aus Hefe und Roggen. Jetzt noch abfüllen und genießen.","Schwarzbrennerei","","Herstellung von Whiskeyflaschen"]};
	case "beerp": {["Klosterbräu Altis in seiner vollen Pracht. Jetzt noch abfüllen und genießen.","Brauerei","","Herstellung von Bierflaschen"]};
	case "cornmeal": {["Das Maismehl ist eine Komponente für die Maischemixtur.","WeCraft-App","Supermarkt","Herstellung von Maische"]};
	case "mash": {["Maische ist nicht nur gut für die Haut, sondern auch Bestandteil von Schnaps. Hmmm Schnaps.","","","Herstellung von Schnaps"]};
	case "bottles": {["Ein No-Go bei jeder Partyschlägerei. Benutze es lieber um Flüssigkeiten abzufüllen.","","Glaserei","Herstellung von Kakao- und Alkoholflaschen"]};
	case "gpsTracker": {["Du möchtest jemanden verfolgen? Der GPS-Tracker eignet sich hierfür hervorragend.","","Zubehörladen","Verfolgung von Vehikeln"]};
	case "joghurt": {["Ein einfacher Joghurt. Ist zwar für nichts gut, aber schmeckt.","","Supermarkt"]};
	case "pumpe": {["Werkzeug zum Abpumpen von Flüssigkeiten wie z.B. Öl.","","Werkzeugladen","Abpumpen von Öl"]};
	case "tablette": {["Medikament zur Bekämpfung von Migräneanzeichen. Zu Risiken und Nebenwirkungen...","","Apotheke","Gesundheit"]};
	case "tablette2": {["Eine Grippe will keiner haben. Mit einem Schluck Wasser flutscht die Pille schneller runter.","","Apotheke","Gesundheit"]};
	case "tablette3": {["Was falsches gegessen? Dir ist übel? Dann nimm Mutti's altbewährtes Hausmittel.","","Apotheke","Gesundheit"]};
	case "gegengift": {["Ein Schlangenbiss kann wehtun! Dieses Gegengift wurde zwar nicht getestet, soll aber funktionieren.","","Apotheke","Gesundheit"]};
	case "verband": {["Ein Verband zum Verarzten von Wunden.","","Apotheke","Gesundheit"]};
	case "krankmeldung": {["Diese Krankmeldung stellt dich vom Ausüben deiner Arbeit frei! Auch wenn sie an sich schon frei macht...","","","Ausreden"]};
	case "protestschild": {["Ein Utensil für den Aufstand gegen die Regierung oder sowas...","","Rebellenhandel","Demonstrationen"]};
	case "laterne": {["Eine makellose Laterne von Don. Ideal zur Beleuchtung im Dunkeln.","","Don Ator","Licht im Dunkeln"]};
	case "henraw": {["Ein einfaches rohes Hähnchen. Kombiniert mit Salz sicher ganz lecker.","Schlachthof","","Herstellung von Hähnchenfleisch"]};
    case "roosterraw": {["Ein einfaches rohes Hühnchen. Kombiniert mit Salz sicher ganz lecker.","Schlachthof","","Herstellung von Hühnchenfleisch"]};
    case "sheepraw": {["Ein einfaches rohes Schaf. Kombiniert mit Salz sicher ganz lecker.","Schlachthof","","Herstellung von Schafsfleisch"]};
    case "goatraw": {["Eine einfache rohe Ziege. Kombiniert mit Salz sicher ganz lecker.","Schlachthof","","Herstellung von Ziegenfleisch"]};
    case "rabbitraw": {["Ein einfacher roher Hase. Kombiniert mit Salz sicher ganz lecker.","Schlachthof","","Herstellung von Hasenfleisch"]};
	case "henmeat": {["Delikates Hähnchenfleisch zum Essen. Hmm lecker!","","Metzger"]};
    case "roostermeat": {["Delikates Hühnchenfleisch zum Essen. Hmm sehr lecker!","","Metzger"]};
    case "sheepmeat": {["Delikates Schafsfleisch zum Essen. Hmm extrem lecker!","","Metzger"]};
    case "goatmeat": {["Delikates Ziegenfleisch zum Essen. Hmm ultra lecker!","","Metzger"]};
	case "seide": {["Erfunden im alten China. Heute noch ein sehr bewehrter Rohstoff um Kleidung herzustellen.","WeCraft-App","Schneider","Kleidungsherstellung"]};
	case "bratwurst": {["Knackig wie Wiener, würzig wie Frankfurter und zart wie Bockwurst! Bratwurst eben!","","Metzger"]};
	case "netz": {["Das Tarnnetz bietet einen blickdichten Sichtschutz vor Spannern oder sonstigem Gesindel.","",""]};
	case "jagdmesser": {["Scharfe Klinge um den Tieren das Fell über die Ohren zu ziehen.","","Jagdhandel","Ausweidung von Tieren"]};
	case "jagdhorn": {["Das Jagdhorn ist ein wichtiges Utensil bei der Wildjagd. Achtung laut!","","Jagdhandel"]};
	case "jagdmeister": {["Jadgmeister. Das Gesöff was die Jäger lustig macht.","","Jagdhandel"]};
	case "timemachine": {["Zurück in die Zukunft. Einmal aktiviert und die Vegangenheit steht bevor!","","Don Ator","Verfolgungsjagden"]};
	case "plutonium": {["Stark radioaktiv und nur mit Schutzkleidung transportierbar.","","Russischer Chemiefrachter","Nutzung der Zeitmaschine"]};
	case "ahwcart": {["AHW-Premium bietet dir diverse Vorteile bei der Nutzung der Dienstleistung des AHW-Teams.","","Apotheke","Rabatt bei AHW"]};
	case "feuer": {["Dieses Lagerfeuer bietet dir neben Wärme auch einen gemütlichen Ort zum Kampieren.","","Rebellenhandel"]};
	case "klappstuhl": {["Der Klappstuhl wurde bei den Indianern als Zeichen des Kriegsbeginns genutzt. Heute sitzt man Streitigkeiten eher aus... ","","Rebellenhandel"]};
	case "axt": {["Diese Axt ermöglicht ein einfaches und unkompliziertes Folzhällen.","","Werkzeugladen","Folzhällen"]};
	case "kabelbinder": {["Babelkinder können zum Fixieren von Objekten oder auch Personen genutzt werden.","","Rebellenhandel","Personenfestnahmen"]};
	case "kabelbinderkey": {["Mit diesem Spielzeugschlüssel lassen sich Plüschhandschellen wie gespielt öffnen.","","","Aufschließen von Plüschhandschellen"]};
	case "heroinu": {["Schlafmohn ist eine bewusstseinserweiternde Pflanzenart aus der Familie der Mohngewächse.","Mohnfermentation","","Drogenrausch","Herstellung von Heroin"]};
	case "heroinp": {["Die Droge Heroin wird aus fermentierten Schlafmohnflüten gewonnen.","","Drogendealer","Drogenrausch"]};
	case "cocaine": {["Kokablätter vom Kokastrauch, welcher ursprünglich aus Peru stammt.","Kokainlaboratorium","Drogendealer","Herstellung von Kokain"]};
	case "cocainep": {["Kokain ist eine aus dem Kokastrauch hergestellte bewusstseinserweiterte Droge.","","Drogendealer"]};
	case "cannabis": {["Diese Hanfblüten werden in getrockneter Form meist zu Marihuana verarbeitet.","Hanfblütentrocknung","","","Herstellung von Marihuana"]};	
	case "marijuana": {["Marihuana wird aus getrockneten Hanfblüten hergestellt und wirkt ultra giga super duper sehr besonders stark schmerzlindernd.","","Drogendealer","Drogenrausch"]};
	case "baumwolle": {["Baumwolle ist das häufigst verwendete Material in der Textilindustrie und wächst vorallem in subtropischen Regionen.","WeCraft-App","","Kleidungsherstellung"]};
	case "indigo": {["Ein blauer Farbstoff mit der chemischen Summenformel C₁₆H₁₀N₂O₂.","WeCraft-App","","Kleidungsherstellung"]};
	case "nadel": {["Eine Nadel. Optimal für die Herstellung von Kleidung.","WeCraft-App","Schneider","Kleidungsherstellung"]};
	case "pizza": {["Leckere italienische Spezialität. Am besten frisch aus dem Steinofen genießen.","","Supermarkt"]};
	case "guthaben": {["Diese Guthabenkarte ermöglicht es dir 5.000€ Prepaid-Guthaben auf dein Tablet zu laden.","","Zubehörladen"]};
	case "guthabenplus": {["Diese Guthabenkarte ermöglicht es dir 100.000€ Prepaid-Guthaben auf dein Tablet zu laden.","","Zubehörladen"]};
	case "guthabenpremium": {["Diese Guthabenkarte ermöglicht es dir 1.000.000€ Prepaid-Guthaben auf dein Tablet zu laden.","","Zubehörladen"]};
	case "detektor": {["Mit dem Detektor kannst du auf große Schatzsuche gehen! Piep, piep piep piep!","","Werkzeugladen","Schatzsuchen"]};
	case "darkorb": {["Komm auf die dunkle Seite der Macht. Werde ein dunkler Nachtschattenelf aber nicht bei WoW.","","Der Dunkle"]};
	case "darkuni": {["Ein Alienanzug von der dunklen Seite. Pass auf, dass sie dich nicht mitnehmen!","","Der Dunkle"]};
	case "quest1": {["Ein altes, verstaubtes Tagebuch von Dimitri.","","","Halloweenmission"]};
	case "quest2": {["Im Buch steht: 'Ahoi Matrose! Erlebe die Geschichten die ich auf meinen Reisen erlebt habe'.","","","Halloweenmission"]};
	case "quest3": {["Eine seltsame Schatzkarte. Das X markiert den Weg.","","","Halloweenmission"]};
	case "skelett": {["Gruselige Leichenteile. Ein schauriger Anblick.","","","Halloweenmission"]};
	case "feuerwerkr": {["Boom! Ohhhhhh, ahhhhhhh, roooooot.","","Let's Party Kavala"]};
	case "feuerwerkg": {["Boom! Ohhhhhh, ahhhhhhh, grüüüüün.","","Let's Party Kavala"]};
	case "feuerwerkb": {["Boom! Ohhhhhh, ahhhhhhh, blauuuuu.","","Let's Party Kavala"]};
	case "feuerwerkw": {["Boom! Ohhhhhh, ahhhhhhh, weiiiiiß.","","Let's Party Kavala"]};
	case "feuerwerk": {["Es ist bunt, es ist laut und es macht eine menge Spaß.","","Let's Party Kavala"]};
	case "gmandeln": {["Kandierte Mandeln enthalten viel Fett und Zucker.","","Weihnachtsmarkt"]};
	case "gwein": {["Ein weihnachtliches Getränk bestehend aus Wein und einer Menge verschiedener Gewürze.","","Weihnachtsmarkt"]};
	case "kakao": {["Dieses milchhaltige Heißgetränk wird besonders in den kalten Tagen zu sich geführt.","","Supermarkt"]};
	case "geschenk": {["Dieses Geschenk enthält eine Überraschung. Jeder mag Geschenke!","","","Eine Überraschung"]};
	case "wschokolade": {["Frisch aus Charlie's Schokoladenfabrik. Iss mich!","",""]};
	case "kakaobohne": {["Kakaobohnen werden aus den namensgebenden Kakaofrüchten gewonnen.","Schokoladenfabrik","","Schokoladenherstellung, Trinkkakaoherstellung"]};
	case "oilu": {["Rohöl ist der Reichtum einiger Regionen dieser Welt. Besonders große Vorkommen sind im Staatsgebiet Abd el Faggot's zu finden.","Ölraffinerie","","Herstellung von Öl"]};
	case "toiletpaper": {["Das aus Holzfasern bestehende flauschig, weiche Toilettenpapier wird auf dem stillen Örtchen verwendet.","","Supermarkt","Toilettengang"]};
	case "schokolade": {["Eine deliziöse Süßspeise mit einzigartigem Geschmack.","Schokoladenfabrik","Konditorei","Pralinenherstellung"]};
	case "praline": {["Ein mit Schnaps und Schokoladencreme befüllter Schokotraum.","","Konditorei"]};
	case "salat": {["Vegetarier? Dann ist das der perfekte Fleischersatz für dich.","Iss mal Salat e.V.","Supermarkt","Herstellung von gemischtem Salat"]};
	case "tomate": {["Diese atombelasteten Tomaten geben deinem gemischten Salat den absoluten Kick!","Iss mal Salat e.V.","Supermarkt","Herstellung von gemischtem Salat"]};
	case "gsalat": {["Grieschisch, Chef oder einfach nur gemischt. Dieser Salat bringt Abwechslung in die Küche.","","Supermarkt"]};
	case "rollator": {["Bei Gebrechen und Altersbeschwerden hilft dir dieser Rollator wieder auf die Beine.","","Apotheke"]};
	case "defibrillator": {["Der Bifivibrator bringt dein Herz wieder in lustvolle Wallung!","","Apotheke","Wiederbelebungen"]};
	case "medizin": {["Kräuter aus dem Kräutergarten. Wird meist für Medizin verwendet.","AHW-Kliniken","","Herstellung von Medizin"]};
	case "medizin_p": {["Produkt aus verschiedenen Heilkräutern.","","AHW-Handel"]};
	case "schrott": {["Ausgeschlachtete Auto- und Elektronikbauteile. Reiner Schrott eben...","AHW-Autohöfe","","Herstellung von gespresstem Schrott"]};	
	case "schrott_p": {["Man könnte ein Fahrrad daraus bauen... - oder es einfach verkaufen.","","AHW-Handel"]};
	case "oilp": {["Raffiniertes Öl ist eines der wichtigsten natürlichen Energieträger und somit unabdingbar für Industrie und Mensch.","","Schaich Abd-El-Faggot"]};
	case "sand": {["Quarzsand aus der Quarzgrube. Eignet sich perfekt um Glas herzustellen.","Sandreinigung","","Herstellung von Glas"]};
	case "glass": {["Das aus Quarzsand bestehende Material gehört zur Gruppe der amorphen Feststoffe.","WeCraft-App","Glaserei Altis","Herstellung von Flaschen"]};
	case "ironore": {["Eisenerz ist eine chemische Verbindung aus Eisen und kaum eisenhaltigem Gestein.","Eisenverhüttung","","Herstellung von Eisenbarren"]};
	case "iron_r": {["Dieser metallisch glänzende, gräuliche Eisenbarren trägt das chemische Elementsymbol 'Fe'.","","Metallhandel Altis"]};
	case "copperore": {["Ein Erzklumpen Kupfer. Hat in dieser Form noch keinen besonderen Wert.","Kupferschmelze","","Herstellung von Kupferbarren"]};
	case "copper_r": {["Dieser metallisch glänzende, lachsrosafarbene Kupferbarren trägt das chemische Elementsymbol 'Cu'.","","Metallhandel Altis"]};
	case "diamond": {["Dieser Rohdiamant stammt direkt aus den inseleigenen Minen im Nord-Osten Kavalas.","Diamantschleiferei","","Herstellung von geschliffenen Dimanten"]};
	case "diamondc": {["Dieser geschliffene Edelstein besitzt seinen höchsten Wert bei möglichst hoher Reinheit.","WeCraft-App","Juwelier","Herstellung von Schmuck"]};
	case "perlen": {["Ein Luxusobjekt mineralischer Herkunft direkt aus dem mediterranen Mittelmeer vor Altis.","Perlensäuberung","Juwelier","Herstellung von gesäuberten Perlen"]};
	case "perlenp": {["Diese gesäuberten Perlen glänzen wie die Sterne über Altis.","WeCraft-App","","Herstellung von Schmuck"]};
	case "schmuck": {["Dieses in aufwändiger Handarbeit erstellte Schmuckstück ziert die Hälse der Damenwelt.","","Juwelier"]};
	case "reichtum": {["Reichtümer bestehend aus den Schätzen des Piratenkapitäns Mompfred von Storzenteller.","","Antiquitätenhandel Altis"]};
	case "dublonen": {["Diese Golddublone besteht aus 999er Gold und stammt wahrscheinlich aus dem Socken eines Piraten.","","Antiquitätenhandel Altis"]};
	case "salt": {["Diese Salzmineralstoffverbindungen - auch Sole genannt - werden vorallem in der Region um Sofia gewonnen.","Salzraffinerie","","Herstellung von Speisesalz"]};
	case "salt_r": {["Speisesalz ist der häufig in der Küche verwendete, aus Natriumchlorid bestehende Geschmacksträger.","","Salzhandel","Herstellung von Wildfleisch"]};
	case "rock": {["Dieser Stein ist ein kompaktes Gebilde aus Mineral und Gestein.","Steinmetz","","Herstellung von Zement"]};
	case "cement": {["Zement ist ein nichtmetallischer, anorganer Stoff. Für Mafiosis ein sehr beliebter Stoff um Schuhe herzustellen.","","Baustoffhandel"]};
	case "plastikmuell": {["Gesammelt aus Altis' Mülltonnen. Eigentlich nutzlos, jedoch zum Recycling geeignet.","Kunststofffabrik","","Herstellung von Kunststoff"]};
	case "plastik": {["Hergestellt aus recyceltem Plastikmüll. Das derzeit am häufigsten verwendete Material in der Industrie.","","Baustoffhandel"]};
	case "goldbar": {["Dieser metallisch glänzende, gelb-goldfarbige Goldbarren trägt das chemische Elementsymbol 'Au'.","","Briefgold e.V."]};
	case "plutoniumu": {["Dieser metallisch glänzende, silbrigfarbene chemische Element trägt das Elementsymbol 'Pu'.","Atommüllverarbeitung","","Herstellung von Plutonium"]};
	case "holz": {["Ein Stück Holz.","Sägewerk","Möbelhaus","Laminat- und Mahagoniherstellung"]};
	case "bauholz": {["Auch Richter Alexander Bauholz fertigte seinen Gerichtssaal aus diesem Material.","Sägewerk","Möbelhaus","Laminat- und Mahagoniherstellung"]};
	case "laminat": {["Laminat ist einer der am häufigsten verwendeten Bodenbeläge weltweit. Es wird aus mehreren Schichten gefertigt.","WeCraft-App","Möbelhaus","Mahagoniherstellung"]};
	case "mahagoni": {["Mahagoniholz wird aus den Baumstämmen der Zedrachgewächse hergestellt und ist eines der teuersten hölzernen Materialien.","WeCraft-App","Möbelhaus"]};
	case "rye": {["Roggen ist eine weitverbreitete Getreideart.","Schwarzbrennerei","","Herstellung von Whiskey"]};
	case "hops": {["Auch Wasser ist ein edler Tropfen, mischt man es mit Malz und Hopfen.","Brauerei","","Herstellung von Bier"]};
	case "yeast": {["Hefe ist ein Pilz. Wussteste nicht? Ich auch nicht.","Brauerei, Schwarzbrennerei","","Whiskey-, Schnaps- und Bierherstellung"]};
	case "pressluft": {["Ein unterstützendes Werkzeug, welches handlicher ist als die Spitzhacke.","","","Schnellerer Abbau"]};
	case "football": {["Deutschlaaaaaand!!!","",""]};
	case "airhorn": {["Ein Airhorn aus der Fußballkiste. Zum anfeuern!","",""]};
	case "alterschuh": {["Ein alter zefledderter Schuh. Auf der Sohle steht: 'Made in Tanoa'.","",""]};
	case "bananenschale": {["Irrgh! Eine faulige Bananenschale.","",""]};
	case "buegeleisen": {["Ein verrostetes Bügeleisen. Nicht mehr zum Bügeln geeigenet.","",""]};
	case "dose": {["Eine leere Konservendose. Das Etikett ist nicht mehr sichtbar.","",""]};
	case "altesocke": {["Puhh, die stinkt aber gewaltig.","",""]};
	case "fischdose": {["In der Büchse ist noch sichtbar ein Fischauge zu sehen. Ekelhaft!","",""]};
	case "joint": {["Ein Joint, natürlich nur zu medizinischen Zwecken! *hust*","","Drogendealer","Drogenrausch"]};
	case "aluminium": {["Ein stabiles Stück Aluminium. In seiner Beschaffenheit sogar elastisch.","WeCraft-App","","Reifen-, Elektroartikel-, Fahrzeugherstellung"]};
	case "reifen": {["Ein Autoreifen mit ordentlich Luft. Die Felgen sind poliert.","WeCraft-App","","Herstellung von Fahrzeugen"]};
	case "cable": {["Zerschnittene Kabelfetzen. Die Drähte sind allerdings noch intakt.","WeCraft-App","","Fahrzeug-, Elektroartikelherstellung"]};
	case "papier": {["Ein paar weisse Blätter Papier. Druckfrisch.","WeCraft-App","","Joint-, Zigaretten-, Zigarrenherstellung"]};
	case "pizzaschachtel": {["Der Rand der Schachtel ist gefüllt mit geschmolzenem Käse. Schimmligem Käse.","",""]};
	case "zschachtel_leer": {["Eine leere Ziagrettenschachtel.","WeCraft-App","","Herstellung von Zigarettenschachteln"]};
	case "zschachtel_voll": {["Eine gefüllte Zigarettenschachtel. Vielleicht interessiert sich jemand dafür.","","Tabakwarenladen"]};
	case "schrauben": {["Schrauben. Nicht im besten Zustand aber dennoch brauchbar.","WeCraft-App","","Fahrzeug-, Elektroartikelherstellung"]};
	case "spielzeugpuppe": {["Eine gruselige Spielzeugpuppe. Nicht für Kinder unter 5 Jahren geeignet.","",""]};
	case "stahl": {["Eines der robustesten Materialien auf der Insel.","WeCraft-App",""]};
	case "tabakblatt": {["Der Inhaltsstoff der Tabakblüte wird meist heute noch für Rituale von Indianerstämmen verwendet.","WeCraft-App","","Herstellung von Zigaretten"]};
	case "trinkpack": {["Ein auslaufendes Trinkpäckchen. Das Verfallsdatum ist schon längst hinüber.","",""]};
	case "zigarette": {["Rauchen schadet der Gesundheit.","",""]};
	case "zigarre": {["Der Geschmack der Zigarre entfaltet sich erst nach mehrmaliger Benutzung.","","Tabakwarenladen"]};
	case "blueprintsport": {["Wirre Zeichnungen zeigen den groben Umriss einer Sportlimousine.","WeCraft-App","","Herstellung von Sportlimousine"]};
	case "blueprintifrit": {["Wirre Zeichnungen zeigen den groben Umriss eines Ifrits.","WeCraft-App","","Herstellung von Ifrit"]};
	case "blueprintqilin": {["Wirre Zeichnungen zeigen den groben Umriss eines Qilin.","WeCraft-App","","Herstellung von Qilin"]};
	case "blueprintprowler": {["Wirre Zeichnungen zeigen den groben Umriss eines Prowlers.","WeCraft-App","","Herstellung von Prowler"]};
	case "blueprintcaesar": {["Wirre Zeichnungen zeigen den groben Umriss eines Caesar BTT Sportflugzeuges.","WeCraft-App","","Herstellung von Caesar BTT"]};
	case "blueprintscooter": {["Wirre Zeichnungen zeigen den groben Umriss eines Wasser-Scooters.","WeCraft-App","","Herstellung von Wasser-Scooter"]};
	case "blueprintorca": {["Wirre Zeichnungen zeigen den groben Umriss eines Orcas.","WeCraft-App","","Herstellung von Orca"]};
	case "banane": {["Eine prachtvolle Banane von der Bananeninsel bei Altis. Die wohl besten Bananen der Welt.","","Supermarkt"]};
	case "schaufel": {["Eine einfache Schaufel. Zum ver- und ausgraben.","","Werkzeugladen","Grabungsstätte"]};
	case "goetzikopf": {["Der Schädel von Götzi aus dem Sand - einem seit langem toten Ureinwohner Altis.","WeCraft-App","","Archäologie"]};
    case "goetzitorso": {["Der Torso von Götzi aus dem Sand - einem seit langem toten Ureinwohner Altis.","WeCraft-App","","Archäologie"]};
    case "goetziglied": {["Ein Gliedmaß von Götzi aus dem Sand - einem seit langem toten Ureinwohner.","WeCraft-App","","Archäologie"]};
    case "bertramkopf": {["Der Schädel des Lokalpolitikers Bertram von Storch, seiner Zeit Begründer der 'Altis Volks Partei'.","WeCraft-App","","Archäologie"]};
    case "bertramtorso": {["Der Torso des Lokalpolitikers Bertram von Storch, seiner Zeit Begründer der 'Altis Volks Partei'.","WeCraft-App","","Archäologie"]};
    case "bertramglied": {["Ein Gliedmaß des Lokalpolitikers Bertram von Storch, seiner Zeit Begründer der 'Altis Volks Partei'.","WeCraft-App","","Archäologie"]};
    case "momphredkopf": {["Der Schädel des berühmten Piratenkapitäns Mompfred von Storzenteller, dem berüchtigten Freibeuter von Altis.","WeCraft-App","","Archäologie"]};
    case "momphredtorso": {["Der Torso des berühmten Piratenkapitäns Mompfred von Storzenteller, dem berüchtigten Freibeuter von Altis.","WeCraft-App","","Archäologie"]};
    case "momphredglied": {["Ein Gliedmaß des berühmten Piratenkapitäns Mompfred von Storzenteller, dem berüchtigten Freibeuter von Altis.","WeCraft-App","","Archäologie"]};
    case "ronkopf": {["Der Schädel von Ron Ator, dem in jungen Jahren verunglückten Sohn der Insellegende Don Ator.","WeCraft-App","","Archäologie"]};
    case "rontorso": {["Der Torso von Ron Ator, dem in jungen Jahren verunglückten Sohn der Insellegende Don Ator.","WeCraft-App","","Archäologie"]};
    case "ronglied": {["Ein Gliedmaß von Ron Ator, dem in jungen Jahren verunglückten Sohn der Insellegende Don Ator.","WeCraft-App","","Archäologie"]};
    case "johnkopf": {["Der Schädel von John dem Folzhäller. Er war es, der die Inselbewohner 1924 im Winter mit Brennholz versorgte.","WeCraft-App","","Archäologie"]};
    case "johntorso": {["Der Torso von John dem Folzhäller. Er war es, der die Inselbewohner 1924 im Winter mit Brennholz versorgte.","WeCraft-App","","Archäologie"]};
    case "johnglied": {["Ein Gliedmaß von John dem Folzhäller. Er war es, der die Inselbewohner 1924 im Winter mit Brennholz versorgte.","WeCraft-App","","Archäologie"]};
    case "goetzi": {["Das Skelett des Götzis aus dem Sand. Die rauen Knochen lassen auf sein Leben im Sand schließen.","","Museum"]};
    case "bertram": {["Das Skelett des Bertram von Storchs. Der Lokalpolitiker hielt oft Propaganda-Reden, weshalb sein Kiefer so groß war.","","Museum"]};
    case "momphred": {["Das Skelett des Piratenkapitäns Mompfred von Storzenteller. Er hat bei einem Kampf mit einem Krokodil seine Hand verloren.","","Museum"]};
    case "ron": {["Das Skelett des Sohns von Don Ator. Der vorgezogene Halswirbel lässt auf das Tragen von schweren Goldketten schließen.","","Museum"]};
    case "john": {["Das Skelett des Holzfällers John. Die ausgeprägten Oberarmknochen sprechen wohl für sich.","","Museum"]};
	case "lupe": {["Diese Lupe hilft dir beim Erkennen von kleinen Einschlüssen in Knochenfragmenten.","WeCraft-App","","Archäologie"]};
	case "volleyball": {["Ein aufgepumpter Volleyball. Eignet sich gut zum Werfen!","WeCraft-App","",""]};
	default {["","",""]};
};

if((count _all) == 3) then {_all pushback "-"};
if(_all select 0 == "") then {_all set[0,"-"]};
if(_all select 1 == "") then {_all set[1,"-"]};
if(_all select 2 == "") then {_all set[2,"-"]};

{_arr pushback (_x select 0)} foreach life_illegal_items;
if(_type in _arr) then {_illegal = "Illegal"};

_ret = format[" %1 [%7] \n %2 \n\n Verarbeitungsort: %3 \n Verkaufsort: %4 \n Benötigt für: %5 \n\n %6",
	[_typelong] call life_fnc_varToStr,
	([_type] call life_fnc_classColors) select 0,
	_all select 1,
	_all select 2,
	_all select 3,
	_all select 0,
	_illegal
];

_ret;