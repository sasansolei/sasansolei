clc;clear;close all;
img = imread("image3.jpg");

x_size = input("enter x : ");
y_size = input("enter y : ");

%imgshow(img);

a = size(img,1);
b = size(img,2);

nesbat_x = x_size / a ;
nasbat_y = y_size / b ;

img2 = zeros(a * nesbat_x ,b * nesbat_y ,3);

for i=1:a/nesbat_x
    for j=1:b/nesbat_y
        img2(i,j, :) = img((i * 2 + 1) , (j * 2 + 1));
    end
end

img2 = unit8(img2);
figure
imgshow(img2);


