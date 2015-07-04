% test de mejora de contraste

clc;
close all

%I = [6 7 3 4 ; 5 6 6 8;  6 4 5 2; 6 4 2 3]
%ele = [ 1 1 1;1 2 1; 1 1 1]
%ele = [0 1 0; 1 1 1; 0 1 0];

I = imread('mdb219.pgm'); 
%ele = getnhood(strel('disk',5)); [N N] = size(ele); ele = ele .* magic(N)
%ele = getnhood(strel('disk',5))

% mejora de contraste local
tic
n = 1;
m = 2;
alfa = .5;
disp(strcat('-----test mejora de contraste local-----'));
MCL = mcl(I, getElemento(1, 10), n , m, alfa);
toc


