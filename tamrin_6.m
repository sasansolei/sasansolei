clc;clear;close all;
img = rgb2gray(imread('image6.jpg'));
[h ,w ,c] = size(img);
img2 = zeros(h , w);

Gx = [-1,0,1;-2,0,2;-1,0,1];
Gy = [-1,-2,-1;0,0,0,1,2,1];
for i = 2 :h-1
    for j = 2 : w - 1
        target = GetTarget(img,i,j);
        G1 = ApplayMask(Gx ,target);
        g2 = ApplayMask(Gy ,target);
        G = G1 + G2;
        img2(i,j) = G;
    end
end
imshow(img);figure;
img2 = uint8(img2);imshow(img2);