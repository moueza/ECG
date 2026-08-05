//in A4  conventional many lines of ECG to 1 unique line
function [Line0]=many_to_one(MATRIXmultilines)
    clc;
    Line0=[];
    disp("size(MATRIXmultilines) : ",size(MATRIXmultilines))
    disp("size(MATRIXmultilines)(1) : ",size(MATRIXmultilines)(1))
    for i = 1:size(MATRIXmultilines)(1)
        LineVector=MATRIXmultilines(i,:)
        disp("LineVector : ",LineVector)
        Line0=[Line0,LineVector]
        disp("Line0 : ",Line0)
    end
endfunction
MATRIXmultilinesPRE=[[1 9 10 9 0 0 0 1 9 10 99];[1 9 10 9 0 0 0 1 9 10 7];[1 9 10 9 0 0 0 1 9 10 7];[1 9 10 99 0 0 0 1 9 10 9];[];[]];//MATRIXmultilines=MATRIXmultilinesPRE'; //Hadamard

//:                   1st line        2nd


//Line1=many_to_one(MATRIXmultilines)
Line1=many_to_one(MATRIXmultilinesPRE)
disp("Line1 : ",Line1)
//MUST Line1(12) ... 1  ;   Line1(13) ... 9
