function [ypredid, ypredval, ysimid, ysimval] = predANDval (m, na, nb, nk, yid, uid, Nid, yval, uval, Nval,ok) 

%Computing ypred for the VALIDATION data 
[Rid, Dk, Pow] = regressor(m, na, nb, nk, yid, uid, Nid);
theta = Rid\yid; 

[Rval, Dkval, Powval] = regressor(m, na, nb, nk, yval, uval, Nval);
ypredval = Rval*theta; 


%Computing ypred for the IDENTIFICATION data 
[Rid, Dkval, Powval] = regressor(m, na, nb, nk, yid, uid, Nid);
ypredid = Rid*theta; 

 
%Computing ysim for VALIDATION 
ysimval(1) = 0;
for k = 2:length(Dk)
    %Computing a line of Dk 
    dk = dMatrix_line(na, nb, nk, ysimval, uval, k); 
   
    %Computing a line of the regressor
    reg_line = regressor_line(na, nb, dk, Pow);
   
    ysimval(k) = reg_line*theta;
end   
 
%Computing ysim for IDENTIFICATION 
ysimid(1) = 0;
for k = 2:length(Dk)
    %Computing a line of Dk 
    dk = dMatrix_line(na, nb, nk, ysimid, uid, k); 
    
    %Computing a line of the regressor
    reg_line = regressor_line(na, nb, dk, Pow);
   
    ysimid(k) = reg_line*theta;
end  

 % Plotting only when ok takes 1 in the parameters list
 if ok == 1
     plot(ypredval); 
     hold on
     plot(yval); 
     legend('Ypredval', 'Yval'); 
     

     figure
     plot(ypredid); 
     hold on
     plot(yid); 
     legend('Ypredid', 'Yid');   
     
     figure
     plot(ysimval);
     hold
     plot(yval);
     legend('Ysimval', 'Yval');  
     
     figure
     plot(ysimid);
     hold
     plot(yid);
     legend('Ysimid', 'Yid'); 
 end 
end 