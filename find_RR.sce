clc
//clf
t=[0 .15 .23  .315  .57    .97     1     1.15     1.2    1.31   1.4     ]
y=[0 .5  1.13 1.5   0.7    .37     .1      .5     1.0512   1    .24]
ts=timeseries(seconds(t)',y')
disp('ts',ts)


function [Timess0]=findUpperThreshold(timeseriess, threshold)
    table_t=timeseries2table(timeseriess)(:,1)
    table_y=timeseries2table(timeseriess)(:,2)
    matrix_y=table2matrix(table_y)
    disp("table_t:",table_t)
    disp("table_y:",table_y)
    disp("matrix_y:",matrix_y)
    Timess0=find(matrix_y>=threshold)
endfunction
//test
[Timess]=findUpperThreshold(ts, 1)
disp("Timess:",Timess)
if ((Timess(1)==3)&&(Timess(4)==10))  then
    disp("ok")
else
    disp("KO")
end



//REQUIRED: time sorted
function [Timess]=findRR(timeseriess, threshold)

endfunction


//Complete : for each column, at least a 1
//Out : unique 1 per column
//Floor = minimize
function [SCREENOFPIX]=blackAndWhiteFloorPerPixcolumnCompleteThick2Thin(BINARIESCREEN)
    [height,width]=size(BINARIESCREEN)
    zeros(height,width)
    for j=1:width
        //minMet=%F
        i=height
        while(i<=height)

            if 	(BINARIESCREEN(i,j)==1) then
                SCREENOFPIX(i,j)=1
                i=i-1
                done
                done
            endfunction
            BINARIESCREEN2=[0 0 1 1]
            [1 0 0 1]
            [1 1 0 1]

            //Answer  [0 0 1 0]
            //         0 0 0 0
            //         1 1 0 1
            [SCREENOFPIX]=blackAndWhiteFloorPerPixcolumnCompleteThick2Thin(BINARIESCREEN2)
            if ((SCREENOFPIX(3,1)==1)&&(SCREENOFPIX(3,3)==0))  then
                disp("ok")
            else
                disp("KO")
            end
