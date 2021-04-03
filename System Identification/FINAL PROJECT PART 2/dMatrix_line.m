 %Computing a line of dMatrix 
 function line = dMatrix_line(na, nb, nk, y, u, k) 
 
 for i = 1:na
     value = k - i;
     if(value <= 0)
         line(i) = 0;
     else
         line(i) = y(value);
     end
 end
 
 for i = (na + 1):(na + nb)
     value = k - (i - na) - nk + 1;
     if(value <= 0)
         line(i) = 0;
     else
         line(i) = u(value);
     end
 end
 end