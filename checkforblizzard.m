function rep = checkforblizzard(stormdata)
rep = 0;%default is no blizzard
indi = 0;% checking each hour 

for i = 1:24;
    if indi<4
        %as long as no blizzard keeps checking
        if stormdata(i,1)>=30 && stormdata(i,2)<=0.5
            indi=indi+1;
        else
            indi=0
        end
        
    else
        %there was a blizzard, indi got to 4, no need to further check
        rep = 1
        
    end
end
end