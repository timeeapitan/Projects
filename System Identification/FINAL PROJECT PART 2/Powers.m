function matrix = Powers(m, na, nb)

line = 1;
column = 1;

if(na == 1 && nb == 1)
    for i = 0:m
        for j = 0:m
            if(i + j <= m)
                matrix(line, column) = i;
                matrix(line, column + 1) = j;
                
                column = 1;
                line = line + 1;
            end
        end
    end
    
elseif(na == 2 && nb == 2 || na == 1 && nb == 3 || na == 3 && nb == 1)
        for i = 0:m
            for j = 0:m
                for k = 0:m
                    for l = 0:m
                        if(i + j + k + l <= m)
                            matrix(line, column) = i;
                            matrix(line, column + 1) = j;
                            matrix(line, column + 2) = k;
                            matrix(line, column + 3) = l;
                            
                            column = 1;
                            line = line+1;
                        end
                    end
                end
            end
        end
        
elseif(na == 3 && nb == 3)
        for i = 0:m
            for j = 0:m
                for k = 0:m
                    for l = 0:m
                        for a=0:m
                            for b = 0:m
                                if(i + j + k + l + a + b <= m)
                                    matrix(line, column)=i;
                                    matrix(line, column + 1) = j;
                                    matrix(line, column + 2) = k;
                                    matrix(line, column + 3) = l;
                                    matrix(line, column + 4) = a;
                                    matrix(line, column + 5) = b;
                                    
                                    column = 1;
                                    line = line + 1;
                                end
                            end
                        end
                    end
                end
            end
        end
        
elseif(na == 2 && nb == 3 || na == 3 && nb == 2)
        for i = 0:m
            for j = 0:m
                for k = 0:m
                    for l = 0:m
                        for a = 0:m
                            if(i + j + k + l + a <= m)
                                matrix(line, column) = i;
                                matrix(line, column + 1) = j;
                                matrix(line, column + 2) = k;
                                matrix(line, column + 3) = l;
                                matrix(line, column + 4) = a;
                   
                                column = 1;
                                line = line + 1;
                            end
                        end
                    end
                end
            end
        end
        
elseif(na == 1 && nb == 2 || na == 2 && nb == 1)
         for i=0:m
             for j=0:m 
                 for k=0:m
                     if(i+j+k<=m)
                         matrix(line, column) = i;
                         matrix(line, column + 1) = j;
                         matrix(line, column + 2) = k;
                         
                         column = 1;
                         line = line + 1;
                     end
                 end
             end
         end
end
end

     
        