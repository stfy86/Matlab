function y = simple(x)
I = imread('mdb219.pgm');
MCL = mcl(I, getElemento(x, 10), 1 , 2, .5) 
y(1) = entropia(MCL);
y(2) = contrast(MCL);

