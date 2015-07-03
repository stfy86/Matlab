function fD = FDark(I, ele, n, m)
I = double(I);
[M N] = size(I);
fD = zeros(M,N);
for i=n:m
    IC = double(imcloseNGray(I,ele,i));    
    fD = fD + (IC - I);
end
end