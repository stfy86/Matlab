function nele = nElementoGray(ele, n)
if n == 0
    [M N] = size(ele); 
    nele = zeros(M, N);    
end
% Si n es mayor o igual a 1 se dilata n-1 veces el elemento estructurante 
if n >= 1   
 nele = ele; 
 for i=1:n-1  
   B = nele;
   nele = imdilateGray(B, ele);  
 end
end
