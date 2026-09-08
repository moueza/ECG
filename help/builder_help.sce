help_dir = get_absolute_file_path("builder_help.sce");
macros_dir = pathconvert(help_dir + "../macros/");

// 1. S'assurer que le dossier destination existe
if ~isdir(help_dir + "en_US") then
    mkdir(help_dir + "en_US");
end

// 2. Générer les fichiers XML depuis le dossier macros/
help_from_sci(macros_dir, help_dir + "en_US/");

// 3. Compiler les fichiers XML en archive .jar
xmltojar(help_dir + "en_US/", "mon_module", "en_US");


