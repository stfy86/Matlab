function mid = searchBinaryR(list,low,high, value)
 
    if( high < low )
        mid = [];
        return
    end
 
    mid = floor((low + high)/2);
 
    if( list(mid) > value )
        mid = searchBinaryR(list,low,mid-1, value);
        return
    elseif( list(mid) < value )
        mid = searchBinaryR(list,mid+1,high, value);
        return
    else
        fprintf('searchBinaryR v(%d) ', mid);
        return
    end
 
end



