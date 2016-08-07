function [domainS oS sS]= find_domain(range,ImDomain)


num=1;
for k=1:8:size(ImDomain,1)
    for l= 1:8:size(ImDomain,2)
        
        domain= ImDomain(k:k+7,l:l+7);
        [s o]=scale_offset(range,domain);
        
        diff(num)=sum((range(:)-(s*domain(:) + o)).^2);
        
        D(:,:,num)=domain;
        S(num)=s;
        Off(num)=o;
        num=num+1;
    end
end

[minval ind]=min(diff);
domainS=ind;
oS=Off(ind);
sS=S(ind);