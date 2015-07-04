function g = imcloseNGray(f, ele, n)
disp(strcat('[imcloseNGray, n= ',num2str(n),']'));
ID = imdilateNGray(f, ele, n);
g = imerodeNGray(ID, ele, n);
%figure, imshow([f, g]);
end