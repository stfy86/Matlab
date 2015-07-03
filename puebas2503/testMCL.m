% test de mejora de contraste

clc;
close all

%I = [6 7 3 4 ; 5 6 6 8;  6 4 5 2; 6 4 2 3]
%ele = [ 1 1 1;1 2 1; 1 1 1]
%ele = [0 1 0; 1 1 1; 0 1 0];

%I = imread('rosa.tif'); 
I = imread('mdb219.pgm'); 
%ele = getnhood(strel('disk',5)); [N N] = size(ele); ele = ele .* magic(N)
%ele = getnhood(strel('disk',5))
% mejora de contraste local
MCL = mcl(I, getElemento(1, 10), 1 , 2, .5) 

% resultado
figure
subplot(1,2,1)
imshow(uint8(I)); title(strcat('original. E= ',num2str(entropia(I)), ', contraste= ' , num2str(contrast(I))));

subplot(1,2,2)
imshow(MCL); title(strcat('con mejora local. E=',num2str(entropia(MCL)), ', contraste= ' , num2str(contrast(MCL))));
