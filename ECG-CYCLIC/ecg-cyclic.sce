clc
clf
t=linspace(0,1,11)
R=1



l={{255,255,0},{255,255,11};
{255,255,85},{12,255,14}};
//or by Point obj OOP
function [M3D]=vectorization(Cells)
    [dimI,dimJ]=size(Cells)
    for j=1:dimJ
        for i=1:dimI
            vector=Cells{i,j};//vector(1)=Cells(i,j)(1);
            M3D(i,j,1:3)=vector; //tridimensional
        end
    end
endfunction
//vectorization(l)(2,2,3) ...14  (l{1}  l{1,1} )

function printCells(Cells)
     [dimI,dimJ]=size(Cells)
        for i=1:dimI
               for j=1:dimJ
disp(Cells{i,j})
        end
    end
endfunction
// printCells(l)

//~map  ... find
//can we enter a function as param ?
function [MATRIXX]=indices(dimI,dimJ)
    for j=1:dimJ
        for i=1:dimI
            formula=i*3*j
            MATRIXX(i,j)=formula;    
        end
    end
endfunction
//indices(2,3)(2,3) ... 18

tuplesCycleSTANDARDALPHAUNITEDx=[[0 0];[0.1 0];[.2 0.1];[.3 0];[0.4 -.1];[0.6 1];[0.7 -.9];[0.8 0];[0.9 0];[1 .2];[1.1 0];[1.2 0]];//[percent0To1 z]
//plot2d(tuplesCycleSTANDARDALPHAUNITEDx(:,1),tuplesCycleSTANDARDALPHAUNITEDx(:,2))

divisor=max(tuplesCycleSTANDARDALPHAUNITEDx(:,1))

tupleCycleSTANDARDALPHAUNITEDu=tuplesCycleSTANDARDALPHAUNITEDx(:,1)/divisor
disp(tupleCycleSTANDARDALPHAUNITEDu)
//plot2d(tupleCycleSTANDARDALPHAUNITEDu,tuplesCycleSTANDARDALPHAUNITEDx(:,2))


alphasDEGRES=tupleCycleSTANDARDALPHAUNITEDu*360
disp("alphasDEGRES : ",alphasDEGRES)
x=R*cos(tupleCycleSTANDARDALPHAUNITEDu*2*%pi)
y=R*sin(tupleCycleSTANDARDALPHAUNITEDu*2*%pi)
curve1=param3d(x,y,tuplesCycleSTANDARDALPHAUNITEDx(:,2)); //multi-curves https://chatgpt.com/c/68b7feaf-05c8-832c-9770-9e64d304f2c1
curve1.mark_mode = "on";
curve1.mark_style = 10;
//curve1.mark_style.line_style = 2; 
curve1.mark_foreground = color("blue");
curve1.foreground = color("blue");

translatorZ=ones( size(x)(1),1)*-1
curve2shadow=param3d(x,y,translatorZ)//shadow on ground
curve2shadow.mark_mode = "on";
curve2shadow.mark_style = 10;
//curve2shadow.mark_style.line_style = 2; 
curve2shadow.mark_foreground = color("grey");




translatorY=ones( size(x)(1),1)*-1
curve2shadow2Y=param3d(x,translatorY,tuplesCycleSTANDARDALPHAUNITEDx(:,2))//shadow on ground
curve2shadow2Y.mark_mode = "on";
curve2shadow2Y.mark_style = 10;
//curve2shadow2Y.mark_style.line_style = 2; 
curve2shadow2Y.mark_foreground = color("grey");





translatorX=ones( size(x)(1),1)*-1
curve2shadow2X=param3d(translatorX,y,tuplesCycleSTANDARDALPHAUNITEDx(:,2))//shadow on ground
curve2shadow2X.mark_mode = "on";
curve2shadow2X.mark_style = 10;
//curve2shadow2X.mark_style.line_style = 1; 
curve2shadow2X.mark_foreground = color("grey");



function [MATRIXofGREY]=greying(MATRIXofRGBs )
    dimMATRIXofRGBs=size(MATRIXofRGBs)
    for j=1:dimMATRIXofRGBs(2)
        for i=1:dimMATRIXofRGBs(1)
            greyLevel=MATRIXofRGBs(i,j)(1)*MATRIXofRGBs(i,j)(2)*MATRIXofRGBs(i,j)(3)//tridimensionnal P(1,1,1)=P(1,1)(1)
            MATRIXofGREY(i,j)=greyLevel
        end
    end
endfunction

M=[[255,255,0],[255,255,11];
[255,255,85],[12,255,11]]; //1)KO : merges vectors
n=[255,255,0];
N=[n,n; n,n];//2)KO : merges vectors
o=[255,255,0];
O(1,1,1:3)=o;
p=[255,255,0];
P=[];
P(1,1,1:3)=p; //3) OK ++++ +++++++ (another workaroud = cells {} but no arithmetic possible)
p=[255,255,11];
P(1,2,1:3)=p;
p=[255,255,85];
P(2,1,1:3)=p;
p=[12,255,11];
P(2,2,1:3)=p;
//greying(P) ... []


//pixels (vector of heights) to vector of Points=dots(x,y)
function [vectorM]=modelization(vectorH)
    for ii=1:size(vectorH)(2)
        vectorM(ii)=ii+%i*vectorH(ii)
    end
endfunction
vectorH=[2 3 8 2 1]
//modelization(vectorH)(3) ..(3,8)     ... vM=[(1,2),(2,3),(3,8),(4,2),(5,1) )]


//https://en.wikipedia.org/wiki/Signal-averaged_electrocardiogram?utm_source=chatgpt.com
//vectorShortOfPoints : short <- unique cycle
//vectorLongOfPoints : long <- multiple cycles
function [vectorShortOfPoints]=averaging(vectorLongOfPoints)
endfunction


function param3d_unityCycle(t0To1,z)

endfunction
//param3d(x, y, z)


//for coarse lines (so which is gradient, + untracks unuseful graduations,so it selects the darkest dot per column)
//=netter
function oneDotPerColumn(MATRIXofECGgreylevels)

endfunction

