function [ir,fe]=cred_ret(irf,fev,h,TT,HO,NS)

ir=zeros(TT,HO,NS);
fe=zeros(TT,NS);

for i=1:TT
   temp=irf{i,1}(9,1,:,:);
   ir(i,:,:)=squeeze(temp);
   temp=fev{i,1}(9,1,h,:);
   fe(i,:)=squeeze(temp);
end



end