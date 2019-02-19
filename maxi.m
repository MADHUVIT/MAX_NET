%MAX NET
function z=maxi(b)
a=b;
l=length(a);
e=0.1;
w=ones(l)*-e;
for k=1:l
    w(k,k)=1;
end
%diag(w)=ones(l,1); not working
while sum(a==0)~=l-1
    a=w*a;
    a(a<0)=0;
end
z=b((a~=0));
return 
    
    
