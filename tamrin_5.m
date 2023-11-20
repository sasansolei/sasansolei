clc;clear;close all;
img = imread("image6.jpg");
img = rgb2gray(img);
[x,y] = size(img);
newX = 512;
newY = 512;
img2 = zeros(newX , newY);
%img2 = unit8(img2);
ratioX = newX / x;
ratioY = newY / y;
for i = 1 : newX
    for j = 1 : newY
        img2(i,j) = img(ceil(i/ratioX),ceil(j / ratioY));
    end
end
figure;
imshow(img2)

center = [256 ,256];
img2(center(1),center(2)) = 255;
r = 256;
for i= center(1) - r : center(1) + r
    for j = center(2) - r : center(2) + r
        sum = (center(1) - i) * (center(1) - i) + (center(2) - j)* (center(2)-j);
        distance = round(sqrt(sum));
        img2(j,i) = 255;
        if (distance >= r)
            img(j,i,1) = 255;
        end
    end
end
%img = unit8(img);
imshow(img);










