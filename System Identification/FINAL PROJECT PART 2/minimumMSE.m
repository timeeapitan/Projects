function [minimumMSE, na, nb, nk, m] = minimumMSE(MSE, table)

%Getting the minimum value from MSE vector 
minimumMSE = min(MSE); 

%Getting the index and returning the corresponding values for na, nb, nk, m
minindex = 0; 
for i=1:length(MSE) 
    if MSE(i) == minimumMSE 
        minindex = i; 
    end 
end 

minindex = minindex+1; 

na = cell2mat(table(minindex, 1));
nb = cell2mat(table(minindex, 2));
nk = cell2mat(table(minindex, 3));
m = cell2mat(table(minindex, 4));

end 