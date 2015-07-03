function g = imerodeNGray(img, ele, n)
   nele = nElementoGrayV2(ele, n);
   g =  imerodeGray(img,double(nele));
end