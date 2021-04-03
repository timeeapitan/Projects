function reg_line = regressor_line(na, nb, dk, Pow) 
% Creating a line of the regressor matrix 
column = 1;
    for i = 1:length(Pow)
        pow = Pow(i, :); 
        term = 1; 
        for j = 1:(na+nb) 
            term = term * (dk(j).^pow(j));
        end 
        
        reg_line(column) = term; 
        column = column + 1; 
    end
    
end 