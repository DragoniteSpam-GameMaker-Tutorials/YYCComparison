praenomen = [
    "Agrippa", "Appius", "Aulus", "Caeso", "Decimus", "Faustus", "Gaius",
    "Gnaeus", "Hostus", "Lucius", "Mamercus", "Manius", "Marcus",
    "Mettius", "Nonus", "Numerius", "Octavius", "Opiter", "Paullus",
    "Postumus", "Proculus", "Publius", "Quintus", "Septimus", "Sertor",
    "Servius", "Sextus", "Spurius", "Statius", "Tiberius", "Titus",
    "Tullus", "Vibius", "Volesus", "Vopiscus", "Appia", "Aula", "Caesula",
    "Decima", "Fausta", "Gaia", "Gnaea", "Hosta", "Lucia", "Maio",
    "Mamerca", "Mania", "Marcia", "Maxima", "Mettia", "Mino", "Nona",
    "Numeria", "Octavia", "Paulla", "Postuma", "Prima", "Procula", "Publia",
    "Quarta", "Quinta", "Secunda", "Septima", "Servia", "Sexta", "Spuria",
    "Statia", "Tertia", "Titia", "Tiberia", "Tulla", "Vibia", "Volusa",
    "Vopisca"
];
nomen = [
    "Afinius", "Albatius", "Ampius", "Aquillius", "Arrecinus", "Asellius", 
    "Attius", "Aufidius", "Ausonius", "Autronius", "Barbatius", "Blandius", 
    "Caesulenus", "Caetronius", "Carteius", "Consius", "Duccius",
    "Egilius", "Festinius", "Fonteius", "Fulcinius", "Herennuleius",
    "Lavinius", "Lucius", "Mettius", "Minucius", "Nerius", "Nigidius", 
    "Numonius", "Oscius", "Pasidius", "Plaetorius", "Pontificius",
    "Quinctilius", "Rammius", "Reginius", "Remmius", "Rennius", "Rufius", 
    "Saenius", "Sanquinius", "Satrius", "Saturius", "Spellius", "Spurinna", 
    "Spurius", "Statius", "Tadius", "Tarquitius", "Thorius", "Trebonius", 
    "Umbrius", "Ummidius", "Varisidius", "Vecilius", "Vesonius", "Vicirius", 
    "Villius", 
];

full_names = ds_list_create();
for (var i = 0; i < 500; i++) {
    ds_list_add(full_names, nomen[irandom(array_length(nomen) - 1)] + ", " + praenomen[irandom(array_length(praenomen) - 1)]);
}

frames = 0;
total_time_ms = 0;