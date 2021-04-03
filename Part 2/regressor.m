function [R, Dk, Pow] = regressor(m, na, nb, nk, y, u, N) 

%Generating d(k) matrix  
Dk = dMatrix(na, nb, nk, y, u, N);

%Generating the power matrix
Pow = Powers(m, na, nb);

%for q = 1:N % liniile din Dk
   
for k = 1:length(Dk)  
    column = 1;
    dk = Dk(k, :); 
    for i = 1:length(Pow)
        pow = Pow(i, :); 
        term = 1; 
        for j= 1:(na+nb) 
            term = term*(dk(j).^pow(j));
        end 
        R(k, column) = term; 
        column = column+1; 
    end

end 
%end 
    
end 