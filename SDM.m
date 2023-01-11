function [X,Y] = SDM(v0,f,tol)
%SGM Summary of this function goes here
%   Detailed explanation goes here
v[0] = v0;
v[1] = [0 0];
k = 0;
[fx,fy] = gradient(f,0.2);
while dot(v[k+1]-v[k],v[k+1]-v[k])>tol:
    d[k] = [fx(v[k]),fy(v[k])];
    a[k] = 0;
    v[k+1] = v[k] + a[k]*d[k];
    k = k+1
end
X = v[k][0]
Y = v[k][1]
end

