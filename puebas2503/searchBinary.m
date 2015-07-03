function enc = searchBinary(vec, v)
[x,y] = size(vec);
enc = false;
while (~enc && x<=y)
    m = int32((x+y)/2);
    if (v == vec(m))
        enc = true;
        fprintf('searchBinary v(%d) ', m);
    else if (v < vec(m))
            y = m - 1;
        else
            x = m + 1;
        end
    end
end
end