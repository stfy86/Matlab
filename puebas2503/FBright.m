function fB = FBright(I, ele, n, m)
I = double(I);
[M N] = size(I);
fB = zeros(M,N);
for i=n:m
    IO = double(imopenNGray(I,ele,i));    
    fB = fB + (I - IO);
end
end
