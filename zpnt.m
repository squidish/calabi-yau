function z = zpnt(r,th,al,k1,k2,n)
z = cos(al).*imag(u1(r,th,k1,n)) + sin(al).*imag(u2(r,th,k2,n));
end