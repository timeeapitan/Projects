clc; clear; 
close all;

load iddata-08;

%Identification data 
uid = id.u; 
yid = id.y; 
Nid = length(yid); 

%Validation data
uval = val.u; 
yval = val.y;
Nval = length(yval);

%Plots for the identification & validation data
plot(id); 
title('Identification data');
figure; 
plot(val);
title('Validation data'); 


line = 1;
max = 3; 
mmax = 5;

% Creating a table with all the possible combinations of na, nb, nk & m 
for na = 1:max
    for nb = 1:max 
        for nk = 1:max 
            for m = 1:mmax
                
              % Computing ypred & ysim on validation and identification data sets 
              [ypredid, ypredval, ysimid, ysimval] = predANDval (m, na, nb, nk, yid, uid, Nid, yval, uval, Nval);
               
              msepredid(line)  = MSE(ypredid, yid, Nid);
              msepredval(line) = MSE(ypredval, yval, Nval);
              
              msesimid(line)  = MSE(ysimid', yid, Nid);
              msesimval(line) = MSE(ysimval', yval, Nval);
              
              %Adding the data into the table
              table{line+1,1} = na;
              table{line+1,2} = nb;
              table{line+1,3} = nk;
              table{line+1,4} = m;
              table{line+1,5} = msepredid(line);
              table{line+1,6} = msepredval(line);
              table{line+1,7} = msesimid(line);
              table{line+1,8} = msesimval(line);
              
              line = line+1;
             
            end 
        end 
    end 
end 

%Creating table headings 
table{1,1} = 'na';
table{1,2} = 'nb';
table{1,3} = 'nk';
table{1,4} = 'm';
table{1,5} = 'MSEpredid';
table{1,6} = 'MSEpredval';
table{1,7} = 'MSEsimid';
table{1,8} = 'MSEsimval';

%Getting the minimum values for MSEpredval & MSEsimval 
[minMSEpredval, napred, nbpred, nkpred, mpred] = minimumMSE(msepredval, table);
[minMSEsimval, nasim, nbsim, nksim, msim] = minimumMSE(msesimval, table);

%Generating ypredval & ysimval for the best na, nb, nk, m combinations
[ypredid, ypredvalbest, ysimid, ysimval] = predANDval (mpred, napred, nbpred, nkpred, yid, uid, Nid, yval, uval, Nval);
[ypredid, ypredval, ysimid, ysimvalbest] = predANDval (msim, nasim, nbsim, nksim, yid, uid, Nid, yval, uval, Nval);

%Comparing the results
figure;
prediction = iddata(ypredvalbest, uval, val.tstart);
compare(prediction, val);

figure;
simulation = iddata(ysimvalbest.', uval, val.tstart);
compare(simulation, val);

%% Ypred for best na, nb, m when nk varies 
%% When nk = 1
[ypredid, ypredvalbest, ysimid, ysimval] = predANDval (mpred, napred, nbpred, 1, yid, uid, Nid, yval, uval, Nval);
figure;
prediction = iddata(ypredvalbest, uval, val.tstart);
compare(prediction, val); title('nk = 1'); 

%% nk = 2 
[ypredid, ypredvalbest, ysimid, ysimval] = predANDval (mpred, napred, nbpred, 2, yid, uid, Nid, yval, uval, Nval);
figure;
prediction = iddata(ypredvalbest, uval, val.tstart);
compare(prediction, val); title('nk = 2');

%% nk = 3 
[ypredid, ypredvalbest, ysimid, ysimval] = predANDval (mpred, napred, nbpred, 3, yid, uid, Nid, yval, uval, Nval);
figure;
prediction = iddata(ypredvalbest, uval, val.tstart);
compare(prediction, val); title('nk = 3');

%% Ysim for best na, nb, m when nk varies 
%% When nk = 1
[ypredid, ypredval, ysimid, ysimvalbest] = predANDval (msim, nasim, nbsim, 1, yid, uid, Nid, yval, uval, Nval);
figure;
simulation = iddata(ysimvalbest.', uval, val.tstart);
compare(simulation, val); title('nk = 1'); 

%% When nk = 2
[ypredid, ypredval, ysimid, ysimvalbest] = predANDval (msim, nasim, nbsim, 2, yid, uid, Nid, yval, uval, Nval);
figure;
simulation = iddata(ysimvalbest.', uval, val.tstart);
compare(simulation, val); title('nk = 2'); 

%% When nk = 3
[ypredid, ypredval, ysimid, ysimvalbest] = predANDval (msim, nasim, nbsim, 3, yid, uid, Nid, yval, uval, Nval);
figure;
simulation = iddata(ysimvalbest.', uval, val.tstart);
compare(simulation, val); title('nk = 3'); 