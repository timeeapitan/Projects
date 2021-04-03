uid=id.u;
ceva=sort(uid)

index=0;
for i=1:length(yid)-1
    if(ceva(i)~=ceva(i+1))
        index=index+1;
        altceva(index)=ceva(i);
    end
end

index=index+1;
altceva(index)=ceva(end)
