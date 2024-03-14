clear all
clc;

obj = imread('2.jpg.png');
imshow(obj)

red = obj(:,:,1);
green = obj(:,:,2);
blue = obj(:,:,3);

figure(1)
subplot(2,2,1); 
imshow(obj); title('imagie originala');
subplot(2,2,2); 
imshow(red); title('rosu');
subplot(2,2,3); 
imshow(green); title('verde');
subplot(2,2,4);
imshow(blue); title('albastru');

figure(2)
level = 0.37;
bw2 = im2bw(blue,level);
subplot(2,2,1);
imshow(bw2); title('pragul albastru')

fill = imfill(bw2, 'holes');
subplot(2,2,2);
imshow(fill);

clear = imclearborder(fill);
subplot(2,2,3); 
imshow(clear);

s = strel('disk', 7);
open = imopen(fill,s);
subplot(2,2,4);
imshow(open);

diametru = regionprops(open,'MajorAxisLength')

figure(3)
imshow(obj)
d = imdistline;





