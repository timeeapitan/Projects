function v = Powers(m, na, nb)

linie=1;
coloana=1;

if(na==1 && nb==1)
    for i=0:m
        for j=0:m
            if(i+j<=m)
                v(linie,coloana)=i;
                v(linie,coloana+1)=j;
                coloana=1;
                linie=linie+1;
            end
        end
    end
else if(na==2 && nb==2 || na==1 && nb==3 || na==3 && nb==1)
for i=0:m
    for j=0:m
        for k=0:m
            for l=0:m
                if(i+j+k+l<=m)
                v(linie,coloana)=i;
                v(linie,coloana+1)=j;
                v(linie,coloana+2)=k;
                v(linie,coloana+3)=l;
                coloana=1;
                linie=linie+1;
                end
            end
        end
    end
end
else if(na==3 && nb==3)
for i=0:m
    for j=0:m
        for k=0:m
            for l=0:m
                for a=0:m
                    for b=0:m
                      if(i+j+k+l+a+b<=m)
                        v(linie,coloana)=i;
                        v(linie,coloana+1)=j;
                        v(linie,coloana+2)=k;
                        v(linie,coloana+3)=l;
                        v(linie,coloana+4)=a;
                        v(linie,coloana+5)=b;
                        coloana=1;
                        linie=linie+1;
                    end
                 end
             end
           end
        end
    end
end
else if(na==2 && nb==3 || na==3 && nb==2)
   for i=0:m
     for j=0:m
        for k=0:m
            for l=0:m
                for a=0:m
                      if(i+j+k+l+a<=m)
                        v(linie,coloana)=i;
                        v(linie,coloana+1)=j;
                        v(linie,coloana+2)=k;
                        v(linie,coloana+3)=l;
                        v(linie,coloana+4)=a;
                   
                        coloana=1;
                        linie=linie+1;
                    end
                 end
             end
           end
        end
   end
 else if(na==1 && nb==2 || na==2 && nb==1)
      for i=0:m
        for j=0:m
            for k=0:m
            if(i+j+k<=m)
                v(linie,coloana)=i;
                v(linie,coloana+1)=j;
                v(linie,coloana+2)=k;
                coloana=1;
                linie=linie+1;
            end
        end
    end
        end
    end
    end
    end
    end
end
end 