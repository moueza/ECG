function buildmacros()
    macros_path = get_absolute_file_path("buildmacros.sce");
    tbx_build_macros("ECGlib", macros_path);
endfunction

buildmacros();
clear buildmacros;
