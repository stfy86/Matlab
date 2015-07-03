% test de morfologia matematica en escala de grises

clc;
close all

% I = [6 7 3 4 ; 5 6 6 8;  6 4 5 2; 6 4 2 3]
I = imread('rosa.tif');
I = double(I);
ele = [ 1 1 1 
        1 2 1
        1 1 1]

% morfologia matematica
    
D = imdilateGray(I,ele);

E = imerodeGray(I,ele);

O = imopenGray(I,ele);

C = imcloseGray(I,ele);

% morfologia matematica con N

ND = imdilateNGray(I,ele,3);

NE = imerodeNGray(I,ele,3);

NO = imopenNGray(I,ele,3);

NC = imcloseNGray(I,ele,3);


MCL = mcl(I, ele, 1 , 6, .5)


%imshow([I, MCL]);
I = uint8(I);
figure, imshow(I); title(strcat('imagen original. entropia: ',num2str(entropia(I)), ', contraste:' , num2str(contrast(I))));
figure, imshow(MCL); title(strcat('imagen con mejora local: ',num2str(entropia(MCL)), ', contraste:' , num2str(contrast(MCL))));



