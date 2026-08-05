clean:
	rm -f */*~
	rm -f loader.sce unloader.sce cleaner.sce
	rm macros/manylines-to-one.bin
	find . -iname "*~" -exec rm {} \; 
