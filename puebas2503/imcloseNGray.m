function g = imcloseNGray(f, ele, n)
ID = imdilateNGray(f, ele, n);
g = imerodeNGray(ID, ele, n);
%figure, imshow([f, g]);
end