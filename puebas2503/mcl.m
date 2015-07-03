function f = mcl(I, ele, n, m, alfa)
disp('elemento estructurante');
ele
disp(strcat('n= ',num2str(n), ', m= ' , num2str(m), ', alfa=' ,num2str(alfa)));
a = uint8(alfa * FBright(I,ele,n,m));
b = uint8(alfa * FDark(I,ele,n,m));
f = uint8(I) + a - b;

end