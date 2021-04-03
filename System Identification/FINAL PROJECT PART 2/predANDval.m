function [ypredid, ypredval, ysimid, ysimval] = predANDval (m, na, nb, nk, yid, uid, Nid, yval, uval, Nval) 

% Computing ypred for the VALIDATION data 
[Rid, Dk, Pow] = regressor(m, na, nb, nk, yid, uid, Nid);
theta = Rid\yid; 

[Rval, Dkval, Powval] = regressor(m, na, nb, nk, yval, uval, Nval);
ypredval = Rval*theta; 


%Computing ypred for the IDENTIFICATION data 
[Rid, Dkid, Powid] = regressor(m, na, nb, nk, yid, uid, Nid);
ypredid = Rid*theta; 

 
%Computing ysim for VALIDATION data
ysimval(1) = 0;
for k = 2:length(Dk)
    %Computing a line of Dk 
    dk = dMatrix_line(na, nb, nk, ysimval, uval, k); 
   
    %Computing a line of the regressor
    reg_line = regressor_line(na, nb, dk, Pow);
   
    ysimval(k) = reg_line*theta;
end   
 
%Computing ysim for IDENTIFICATION data
ysimid(1) = 0;
for k = 2:length(Dk)
    %Computing a line of Dk 
    dk = dMatrix_line(na, nb, nk, ysimid, uid, k); 
    
    %Computing a line of the regressor
    reg_line = regressor_line(na, nb, dk, Pow);
   
    ysimid(k) = reg_line*theta;
end  
end 