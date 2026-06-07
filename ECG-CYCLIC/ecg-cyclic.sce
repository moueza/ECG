clc
clf
t=linspace(0,1,11)
R=1

tuplesCycleSTANDARDALPHAUNITEDx=[[0 0];[0.1 0];[.2 0.1];[.3 0];[0.4 -.1];[0.6 1];[0.7 -.9];[0.8 0];[0.9 0];[1 .2];[1.1 0];[1.2 0]];//[percent0To1 z]
//plot2d(tuplesCycleSTANDARDALPHAUNITEDx(:,1),tuplesCycleSTANDARDALPHAUNITEDx(:,2))

divisor=max(tuplesCycleSTANDARDALPHAUNITEDx(:,1))

tupleCycleSTANDARDALPHAUNITEDu=tuplesCycleSTANDARDALPHAUNITEDx(:,1)/divisor
disp(tupleCycleSTANDARDALPHAUNITED)
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


function param3d_cycleUnitaire(t0To1,z)
    
endfunction
//param3d(x, y, z)
