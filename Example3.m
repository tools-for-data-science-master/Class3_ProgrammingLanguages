% image processing

% Exercise 1: Contrast Improvement
% Loading the our image into the workspace
Image= imread('pout.tif');

% For comparison, it is better to have a predefined width
width= 200;

% Resizing the image using bicubic interpolation
dim = size(Image);
Image= imresize(Image , width * [dim(1) / dim(2) 1] , 'bicubic');

% Adjusting the contrast using imadjust
Image_imadjust= imadjust(Image);

% Adjusting the contrast using histogram equalization
Image_histeq= histeq(Image);

% Adjusting the contrast using adaptive histogram equalization
Image_adapthisteq= adapthisteq(Image);

% Displaying the original image and the results in a single figure to compare with each other
figure
subplot(2 , 2 , 1);
imshow(Image);
title('Original Image');

subplot(2 , 2 , 2);
imshow(Image_imadjust);
title('Enhanced Image using Imadjust');

subplot(2 , 2 , 3);
imshow(Image_histeq);
title('Enhanced Image using Histeq');

subplot(2 , 2 , 4);
imshow(Image_adapthisteq);
title('Enhanced Image using Adapthisteq');

%% Edge Detection
I = imread('circuit.tif');
I1 = edge(I , 'sobel');
I2 = edge(I , 'canny');
I3 = edge(I , 'prewitt'); 

figure
subplot(2 , 2 , 1);
imshow(I);
title('Original Image'); 
subplot(2 , 2 , 2);
imshow(I1);
title('Edges found using sobel filter'); 
subplot(2 , 2 , 3);
imshow(I2);
title('Edges found using the "canny" method'); 
subplot(2 , 2 , 4);
imshow(I3);
title('Edges found using prewitt filter');

%% Filtering and Deblurring
im = imread('pout.tif');
% create a 2D circular averaging filter (pillboox), radius = 10 
f = fspecial('disk',5);

% apply the filter
imblur = imfilter(im,f);

% deblur image using blind deconvolution
im2 = deconvblind(imblur,f);

figure
subplot(3,1,1)
imshow(im);

subplot(3,1,2)
imshow(imblur)

subplot(3,1,3)
imshow(im2)

%% find circles
im = imread('coins.png');
% Find circles using circular Hough transform with radii within range, ordered by strength
[centers,radii,metric] = imfindcircles(im, [15 30]);

imshow(im)
viscircles(centers(1:5,:), radii(1:5));


%% Train a cascade object detector

open TrainAStopSignDetectorExample.m


