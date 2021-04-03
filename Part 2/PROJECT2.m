clc; clear; 
load iddata-08;
uid = id.u; 
yid = id.y; 
Nid = length(yid); 
% plot(id)
% figure
% plot(val)

uval = val.u; 
yval = val.y;
Nval = length(yval);

na = 1;
nb = 3;
nk = 2;
m  = 3;

[Rid, Dk, Pow] = regressor(m, na, nb, nk, yid, uid, Nid);
theta = Rid\yid; 
% 
[Rval, Dk, Pow] = regressor(m, na, nb, nk, yval, uval, Nval);
% 
ypred = Rval*theta; 

plot(ypred); 
hold on
plot(yval); 
legend('ypred','yval')

%% 
% REGRESSORsim(1,:)=regressor(m,na,nb,nk,yval,uval,1); % first line

N=1;
%Generating d(k) matrix  
Dk = dMatrix(na, nb, nk, yval, uval, N);

%Generating the power matrix
Pow = Powers(m, na, nb);

% %for q = 1:N % liniile din Dk
%     k=1; % first line 
%     column = 1;
%     dk = Dk(k, :); 
%     for i = 1:length(Pow)
%         pow = Pow(i, :); 
%         term = 1; 
%         for j= 1:(na+nb) 
%             term = term*(dk(j).^pow(j));
%         end 
%         Rnou(k, column) = term; 
%         column = column+1; 
%     end
    

ysim(1)=0;

for k=2:Nval
        for i=1:na
            value=k-i;
            if(value<=0)
                dMatrix(k,i)=0;
            else
                dMatrix(k,i)=ysim(value);
            end
        end
        for i=(na+1):(na+nb)
            value=k-(i-na)-nk+1;
            if(value<=0)
                dMatrix(k,i)=0;
            else
                dMatrix(k,i)=uval(value);
            end
        end
            
     
    column = 1;
    dk = dMatrix(k, :); 
    for i = 1:length(Pow)
        pow = Pow(i, :); 
        term = 1; 
        for j= 1:(na+nb) 
            term = term*(dk(j).^pow(j));
        end 
        
        Rnou(k, column) = term; 
        column = column+1; 
    end
    
    ysim(k)=Rnou(k,:)*theta;

end 

figure
plot(yval)
hold on
plot(ypred)
plot(ysim')
hold off
 
