function [s o]=scale_offset(range,domain)

[r c]=size(range);
n=r*c;
k=n^2*(sum(range(:).*domain(:)));
l= sum(range(:))*sum(domain(:));
m=n^2* (sum(domain(:).^2))-(sum(domain(:)))^2;

s=(k-l)/m;

o=(sum(range(:))-s*(sum(domain(:))))/(n^2);