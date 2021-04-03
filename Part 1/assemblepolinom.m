function [out] = assemblepolinom(x1, x2, m)
index = 0;
for i = 0:m
    for j = 0:m
        if i+j <= m
            index = index + 1;
            out(index) = (x1^i)*(x2^j);
        end
    end
end
