% method de 1 al 5 y dim de 1 a N


function ele = getElemento(method, dim)
switch method
    case 1
        ele = getnhood(strel('disk',dim));
    case 2
        ele = getnhood(strel('diamond',dim));
    case 3        
        while mod(dim, 3) ~= 0
            dim = dim + 1;
        end
        ele = getnhood(strel('octagon',dim));
    case 4
        ele = getnhood(strel('rectangle',[dim  dim]));
    otherwise
        ele = getnhood(strel('square',dim));
end
end

