// Set the second arguments to false to print out the values
qs_test_list(10000, false);
qs_test_array(10000, false);
qs_test_list_colors_by_hue(10000, false);
qs_test_list_people_by_name(1000, false);

function qs_test_list(n, print) {
    var data = ds_list_create();
    repeat (n) {
        ds_list_add(data, irandom(100));
    }

    var t = get_timer();
    quicksort(data, function(a, b) { return a < b; });
    
    if (print) {
        for (var i = 0; i < n; i++) {
            show_debug_message(data[| i])
        }
    }
    
    show_debug_message("quicksort on a list of " + string(ds_list_size(data)) + " took " + string((get_timer() - t) / 1000) + " ms");
    
    ds_list_destroy(data);
}

function qs_test_array(n, print) {
    var data = [];
    for (var i = n - 1; i >= 0; i--) {
        data[i] = irandom(100);
    }

    var t = get_timer();
    quicksort(data, function(a, b) { return a < b; });
    
    if (print) {
        for (var i = 0; i < size; i++) {
            show_debug_message(data[i])
        }
    }
    
    show_debug_message("quicksort on an array of " + string(array_length(data)) + " took " + string((get_timer() - t) / 1000) + " ms");
}

function qs_test_list_colors_by_hue(n, print) {
    var data = ds_list_create();
    repeat (n) {
        ds_list_add(data, make_colour_hsv(irandom(255), irandom(51) * 5, irandom(51) * 5));
    }

    var t = get_timer();
    quicksort(data, function(a, b) { return colour_get_hue(a) < colour_get_hue(b); });
    
    if (print) {
        for (var i = 0; i < n; i++) {
            show_debug_message([colour_get_hue(data[| i]), colour_get_saturation(data[| i]), colour_get_value(data[| i])]);
        }
    }
    
    show_debug_message("quicksort on a list of " + string(ds_list_size(data)) + " colors by hue took " + string((get_timer() - t) / 1000) + " ms");
    
    ds_list_destroy(data);
}

function qs_test_list_people_by_name(n, print) {
    static praenomen = [
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
    static nomen = [
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
    
    var data = ds_list_create();
    // This is a ds_list of arrays consisting of [name_first, name_last]
    repeat (n) {
        ds_list_add(data, [praenomen[irandom(array_length(praenomen) - 1)], nomen[irandom(array_length(nomen) - 1)]]);
    }
    
    var t = get_timer();
    quicksort(data, function(a, b) {
        if (a[1] == b[1]) {
            return a[0] < b[0];
        }
        return a[1] < b[1];
    });
    
    if (print) {
        for (var i = 0; i < n; i++) {
            show_debug_message(data[| i]);
        }
    }
    
    show_debug_message("quicksort on a list of " + string(ds_list_size(data)) + " names (last name first)" + string((get_timer() - t) / 1000) + " ms");
    
    ds_list_destroy(data);
}