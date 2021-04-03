function finalPolynomial=regressor(na, nb, nk, order, yid, uid, N)
% clear
% load('iddata-08.mat')
% na=3; nb=3; nk=1; order=2;
% yid=id.y;
% uid=id.u;
% N=length(yid);
m=order;
matrixD=[];
final=[];
syms a b c d e f

for k=1:N
        for i=1:na
            value=k-i;
            if(value<=0)
                matrixD(k,i)=0;
            else
                matrixD(k,i)=yid(value);
            end
        end
        for i=(na+1):(na+nb)
            value=k-(i-na)-nk+1;
            if(value<=0)
                matrixD(k,i)=0;
            else
                matrixD(k,i)=uid(value);
            end
        end
end         
 
%%
% nu mai stiu sau stiu
for k=1:N
    if(na==3 && nb==3)
        incercare=[a b c d e f];
    else if (na == 2 && nb == 2)
            incercare=[a b c d];
    else if (na == 1 && nb == 1)
                incercare=[a b];
        end
        end
    end
    
    index=0;
    for p=1:(na+nb) % na+nb=length(matrixD)
        check=1;
        pointer=p+1;
        while(check<=(na+nb-p)) % na+nb=length(matrixD)
            for i=0:m
                for j=0:m
                    if(i+j<=m)
                        index=index+1;
                        output(index)=(incercare(p)^i)*(incercare(pointer)^j);
                    end
                end
            end
        pointer=pointer+1;
        check=check+1;
        end  
    end
    
    sortedVector=sort(output);
    index=0;
for i=1:(length(sortedVector)-1)
    if(sortedVector(i)~=sortedVector(i+1))
        index=index+1;
        vectorFinal(index)=sortedVector(i);
    end
end
        index=index+1;
        vectorFinal(index)=sortedVector(end);
        
        if(length(incercare)==4)
            vectorFinal=subs(vectorFinal,{a,b,c,d},{matrixD(k,1),matrixD(k,2),matrixD(k,3),matrixD(k,4)});
        else if(length(incercare)==2)
                vectorFinal=subs(vectorFinal,{a,b},{matrixD(k,1),matrixD(k,2)});
            else if(length(incercare)==6)
                    vectorFinal=subs(vectorFinal,{a,b,c,d,e,f},{matrixD(k,1),matrixD(k,2),matrixD(k,3),matrixD(k,4),matrixD(k,5),matrixD(k,6)});
                end % double to transform them into numerical values
            end
        end
        finalPolynomial(k,:)=double(vectorFinal);
        
end
end