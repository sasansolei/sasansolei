clc;
clear;
pic = zeros(100 ,100);
x1 = input("x1  ");
y1 = input("y1  ");
x2 = input("x2  ");
y2 = input("y2  ");

n1 = [x1 ,y1];
n2 = [x2 ,y2];

m = ((n2(2) - n1(2)) / (n2(1) - n1(1)));
step = 0.05;

if(n2(1) > n1(1))
    step = -0.05;
end
for x= n2(1) : step :n1(1)
    y = m * (x-n2(1)) + n2(2);
    y = round(y);
    x = round(x);
    pic(x ,y) = 225;
end
pic(n1(1) , n1(2)) = 255;
pic(n2(1) , n2(2)) = 255;

imshow(pic);

