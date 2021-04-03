clc, clear
syms a b c d
vector=[a,b,c,d]
index=0;

for k=1:length(vector)
    smth=1;
    pointer=k+1;
    while(smth<=(length(vector)-k))
        for x=0:3
            for y=0:3
                for i=0:3
                    for j=0:3
                        if(i+j<=3)
                            index=index+1;
                            out(index)=(vector(k)^i)*(vector(pointer)^j);
                        end
                    end
                end
            end
        end
        pointer=pointer+1;
        smth=smth+1;
    end
end
    
sortedVector=sort(out)
index=0;
for i=1:(length(out)-1)
    if(sortedVector(i)~=sortedVector(i+1))
        index=index+1;
        vectorFinal(index)=sortedVector(i)
    end
end

if(sortedVector(end-1)==sortedVector(end))
        index=index+1
        vectorFinal(index)=sortedVector(end)
end
sort(vectorFinal)