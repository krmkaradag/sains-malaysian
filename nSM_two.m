

% nSM for 2 class
clear;clc
load data;


x1=small_data;
x2=big_data;
eks1=size(x1,1);
eks2=size(x2,1);
kat=ceil(eks2/eks1);

for i = 1:(eks2-eks1)
    int_value=x1(i:i+kat-1,:);
    x1=[x1;mean(int_value)];
end

