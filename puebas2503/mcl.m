function f = mcl(I, ele, n, m, alfa)
disp(strcat('Parametros [n= ',num2str(n), ', m= ' , num2str(m), ', alfa=' ,num2str(alfa),']'));
disp(strcat('1. calcula alfa * FBright..'));
a = alfa * FBright(I,ele,n,m);
disp(strcat('2. calcula alfa * FDark.. '));
b = alfa * FDark(I,ele,n,m);
disp(strcat('3. calcula i + alfa * FBright - alfa * FBright...'));
f =  uint8(I) + uint8(a) - uint8(b);

% resultado
figure(1)
subplot(1,2,1)
imshow(uint8(a)); title('alfa * FBright');
subplot(1,2,2)
imshow(uint8(b)); title('alfa * FDark');

figure(2)
subplot(1,2,1)
imshow(uint8(I)); title(strcat('original. entropia= ',num2str(entropia(uint8(I))), ', contraste= ' , num2str(contrast(uint8(I)))));
subplot(1,2,2)
imshow(uint8(f)); title(strcat('con mejora local. entropia=',num2str(entropia(uint8(f))), ', contraste= ' , num2str(contrast(uint8(f)))));
end