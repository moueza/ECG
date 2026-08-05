function subdemalist = demo_gateway()
    demopath = get_absolute_file_path("/home/peter/POUB/ECG/demos/ecg.dem.gateway.sce");

    subdemalist = [ ..
        "Calcul basique", "demo_1.dem.sce" ; ..
        "Graphique avancé", "demo_2.dem.sce" ..
    ];

    subdemalist(:,2) = demopath + subdemalist(:,2);
endfunction

subdemalist = demo_gateway();
clear demo_gateway;
