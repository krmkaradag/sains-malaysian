%  SADE for 2 class
clc;
clear;

x1=small_data;
x1(:,5)=0;
x2=big_data;
x2(:,5)=1;
eks1=size(x1,1);
eks2=size(x2,1);
kat=floor(eks2/eks1);

new_data=[];
for i = 1:kat
    new_data = [new_data;x1;x2((i-1)*size(x1,1)+1:i*size(x1,1),:)];
    data=[x1;x2((i-1)*size(x1,1)+1:i*size(x1,1),:)];
    my_field = strcat('data_',num2str(i));
    variable.(my_field) = data;
end
