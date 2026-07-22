//in A4  conventional many lines of ECG to 1 unique line
//v2026.1.0
clc;clf()
function [MERGEE]=many_to_one(SCAN1,SCAN2)
    
endfunction
 
//ACP PCA https://help.scilab.org/docs/2026.1.0/en_US/pca.html

M=[ 0 0;
.5 .5
1 1

1 -1
.5 -.5
]
disp("M:",M)
[comprinc, scores, lambda] = pca(M);
disp("comprinc:",comprinc)

x1=[0 1 2];y1=x1;
x2=x1; y2=-y1;
Xs=[x1' x2'];
Ys=[y1' y2']
//plot2d(x1,y1)
//plot2d(x1',y1')
scf(0);// deprecated xset("window",0);//figure 0
Xs=[];Ys=Xs;
Xs(1,1)=0;Xs(2,1)=comprinc(1,1);Xs(1,2)=0;Xs(2,2)=comprinc(2,1);
Ys(1,1)=0;Ys(2,1)=comprinc(1,2);Ys(1,2)=0;Ys(2,2)=comprinc(2,2);
plot2d(Xs,Ys)

scf(2);//xset("window",2)
Xs=[];Ys=Xs;
Xs(1,1)=0;Xs(2,1)=comprinc(1,1);Xs(1,2)=0;Xs(2,2)=comprinc(2,1);
Ys(1,1)=0;Ys(2,1)=comprinc(1,2);Ys(1,2)=0;Ys(2,2)=comprinc(2,2);
plot2d(Xs,Ys)


//show_pca(lambda, comprinc)
