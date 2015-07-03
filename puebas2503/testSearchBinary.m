clc;
close all
vec = zeros(1, 10);

for i=1:10
    vec(i) = rand() * 100;
end
 
vec = int32(sort(vec))


v = input('valor?:')

enc = searchBinary(vec, v);
if enc
    disp('si hay');
else
    disp('no hay');
end

enc = searchBinaryR(vec, 1, 10, v);

if enc
    disp('si hay');
else
    disp('no hay');
end
