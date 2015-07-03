function g = imopenNGray(f, ele, n)
EN = imerodeNGray(f,ele,n);
g = imdilateNGray(EN, ele, n);
%figure, imshow([f, g]);
end