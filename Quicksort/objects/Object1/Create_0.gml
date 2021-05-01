praenomen_m = [
    "Agrippa", "Appius", "Aulus", "Caeso", "Decimus", "Faustus", "Gaius",
    "Gnaeus", "Hostus", "Lucius", "Mamercus", "Manius", "Marcus",
    "Mettius", "Nonus", "Numerius", "Octavius", "Opiter", "Paullus",
    "Postumus", "Proculus", "Publius", "Quintus", "Septimus", "Sertor",
    "Servius", "Sextus", "Spurius", "Statius", "Tiberius", "Titus",
    "Tullus", "Vibius", "Volesus", "Vopiscus",
];

praenomen_f = [
    "Appia", "Aula", "Caesula",
    "Decima", "Fausta", "Gaia", "Gnaea", "Hosta", "Lucia", "Maio",
    "Mamerca", "Mania", "Marcia", "Maxima", "Mettia", "Mino", "Nona",
    "Numeria", "Octavia", "Paulla", "Postuma", "Prima", "Procula", "Publia",
    "Quarta", "Quinta", "Secunda", "Septima", "Servia", "Sexta", "Spuria",
    "Statia", "Tertia", "Titia", "Tiberia", "Tulla", "Vibia", "Volusa",
    "Vopisca",
];

nomen_m = [
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

nomen_f = [
    "Afina", "Albata", "Ampa", "Aquilla", "Arrecina", "Asella", 
    "Atta", "Aufida", "Ausona", "Autrona", "Barbata", "Blanda", 
    "Caesulena", "Caetrona", "Cartea", "Consa", "Ducca",
    "Egila", "Festina", "Fontea", "Fulcina", "Herennulea",
    "Lavina", "Luca", "Metta", "Minuca", "Nera", "Nigida", 
    "Numona", "Osca", "Pasida", "Plaetora", "Pontifica",
    "Quinctila", "Ramma", "Regina", "Remma", "Renna", "Rufa", 
    "Saena", "Sanquina", "Satra", "Satura", "Spella", "Spurinne", 
    "Spura", "Stata", "Tada", "Tarquita", "Thora", "Trebona", 
    "Umbra", "Ummida", "Varisida", "Vecila", "Vesona", "Vicira", 
    "Villa",
];

full_names = ds_list_create();
for (var i = 0; i < 1000; i++) {
    if (choose(true, false)) {
        ds_list_add(full_names, nomen_m[irandom(array_length(nomen_m) - 1)] + ", " + praenomen_m[irandom(array_length(praenomen_m) - 1)]);
    } else {
        ds_list_add(full_names, nomen_f[irandom(array_length(nomen_f) - 1)] + ", " + praenomen_f[irandom(array_length(praenomen_f) - 1)]);
    }
}

frames = 0;
total_time_ms = 0;