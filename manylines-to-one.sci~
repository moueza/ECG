//in A4  conventional many lines of ECG to 1 unique line
function [Line0]=manyToOne(MATRIXmultilines)
    // Courte description explicative de la fonction (une seule ligne).
//
// Calling Sequence
//   [Line0] = manyToOne(MATRIXmultilines)
//
// Parameters
//   MATRIXmultilines : matrix of a multiline of one unique derivation,multilined because of A4... restriction (type, rôle)
//   Line0 : the whole derivation into one unique line vector
//
// Description
//   Gets lines, and concatenate one to the other
//   
//
// Examples
//   MATRIXmultilinesPRE=[[1 9 10 9 0 0 0 1 9 10 99];[1 9 10 9 0 0 0 1 9 10 7];[1 9 10 9 0 0 0 1 9 10 7];[1 9 10 99 0 0 0 1 9 10 9];[];[]];//MATRIXmultilines=MATRIXmultilinesPRE'; //Hadamard

//:                   1st line        2nd


//Line1=manyToOne(MATRIXmultilines)
//Line1=manyToOne(MATRIXmultilinesPRE)
//
// See also
//   autre_fonction
//   help
//
// Authors
//   Peter MOUEZA <moueza.forums@gmail.com>
    clc;
    Line0=[];
    //disp("size(MATRIXmultilines) : ",size(MATRIXmultilines))
    //disp("size(MATRIXmultilines)(1) : ",size(MATRIXmultilines)(1))
    for i = 1:size(MATRIXmultilines)(1)
        LineVector=MATRIXmultilines(i,:)
        //disp("LineVector : ",LineVector)
        Line0=[Line0,LineVector]
        //disp("Line0 : ",Line0)
    end
endfunction

//disp("Line1 : ",Line1)
//MUST Line1(12) ... 1  ;   Line1(13) ... 9
