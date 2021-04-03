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
% plot(id); 
% title('Identification data');
% figure; 
% plot(val);
% title('Validation data'); 

max = 3; 
mmax = 10;
c = 1;

for na = 1:max
    for nb = 1:max 
        for nk = 1:1 
            for m=1:mmax 
              %Computing ypred & ysim on validation and identification data sets 
              [ypredid, ypredval, ysimid, ysimval] = predANDval (m, na, nb, nk, yid, uid, Nid, yval, uval, Nval,0);
               
              msepredid(c)  = MSE(ypredid, yid, Nid);
              msepredval(c) = MSE(ypredval, yval, Nval);
              
              msesimid(c)  = MSE(ysimid', yid, Nid);
              msesimval(c) = MSE(ysimval', yval, Nval);
              
              
              table{c+1,1}=na;
              table{c+1,2}=nb;
              table{c+1,3}=nk;
              table{c+1,4}=m;
              table{c+1,5}=msepredid(c);
              table{c+1,6}=msepredval(c);
              table{c+1,7}=msesimid(c);
              table{c+1,8}=msesimval(c);
              
              c = c+1;
            end 
        end 
    end 
end 

table{1,1}='na';
table{1,2}='nb';
table{1,3}='nk';
table{1,4}='m';
table{1,5}='MSEpredid';
table{1,6}='MSEpredval';
table{1,7}='MSEsimid';
table{1,8}='MSEsimval';

figure; 
plot(msepredid); title('MSEpredid'); 
figure; 
plot(msepredval); title('MSEpredval');
figure; 
plot(msesimid); title('MSEsimid');
figure; 
plot(msesimval); title('MSEsimval');
  
 %% 
 na = 1; 
 nb = 3; 
 nk = 2; 
 m= 3; 
 [ypredid, ypredval, ysimid, ysimval] = predANDval (m, na, nb, nk, yid, uid, Nid, yval, uval, Nval,1);


 
%% 
% plot(ypred);
% legend('ysimulation', 'yvalidation', 'yprediction');

% figure
% simulation = iddata(ysim.', uval, val.tstart);
% prediction = iddata(ypred, uid, id.tstart);
% compare(simulation, prediction, val); 