//in A4  conventional many lines of ECG to 1 unique line
function [MATRIX1line]=many_to_one(MATRIXmultilines)
    
endfunction
MATRIXmultilinesPRE=[[1 9 10 9 0 0 0 1 9 10 99];[1 9 10 9 0 0 0 1 9 10 7];[1 9 10 9 0 0 0 1 9 10 7];[1 9 10 99 0 0 0 1 9 10 9];[];[]];MATRIXmultilines=MATRIXmultilinesPRE'; //Hadamard
//:                   1st line        2nd
MATRIX1line=many_to_one(MATRIXmultilines)
//MUST 
