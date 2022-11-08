
% % nSM for multi Class

clear;clc
load data;
class_c=4;
x1=class1; %class1
x1(:,5)=0; % output class
x2=class2; %class2
x2(:,5)=1; % output class
x3=class3; %class3
x3(:,5)=2; % output class
x4=class4; %class4
x4(:,5)=3; % output class

x=[x1;x2;x3;x4];
maks_size=0;
for i=0:3
    if maks_size < size(find(x(:,5)==i),1)
        maks_size=size(find(x(:,5)==i));
    end
end
new_x=[];
for i=0:3
    y=x(find(x(:,5)==i),:);
    y=data_size2(y,maks_size(1));
    new_x=[new_x;y];
end
