clear all
clc
close all

I=imread('LENA.tif');
Im_range=imresize(I,0.5);
Im_domain=imresize(Im_range,0.5);

num=1;

for i=1:8:size(Im_range,1)
    for j=1:8:size(Im_range,2)
    
        range=Im_range(i:i+7,j:j+7);
        [domain(num) o(num) s(num)]=find_domain(range,Im_domain);
        num=num+1;   
    end
    
end
% 
table=[(1:256)',domain',s',o'];


% decode


In=imread('CIMET.tif');
In=imresize(In,0.5);

Im_domain=imresize(In,0.5);


num=1;

for i=1:8:size(In,1)
    for j=1:8:size(I,2)
    
        range=Im_range(i:i+7,j:j+7);
        [domain(num) o(num) s(num)]=find_domain(range,Im_domain);
        num=num+1;   
    end
    
end