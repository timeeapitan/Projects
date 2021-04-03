% Computing dMatrix with values from y and u (identification & validation)
function [matrix] = dMatrix(na, nb, nk, y, u, N)

for k = 1:N
    for i = 1:na
        value = k - i;
        if(value <= 0)
            matrix(k, i) = 0;
        else
            matrix(k, i) = y(value);
        end
    end
    
    for i = (na + 1):(na + nb)
            value = k - (i - na)-nk + 1;
            if(value <= 0)
                matrix(k, i) = 0;
            else
                matrix(k, i) = u(value);
            end
    end
end