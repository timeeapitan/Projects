% Computing MSE for any outputs given as parameters
function mse = MSE(y1, y2, N)
   
    k = 1:N;
    mse = 1/N * sum((y1(k) - y2(k)).^2);
    
end 