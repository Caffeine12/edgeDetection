%Read image file from UI
[fn pn] = uigetfile('*.jpg', 'Select image file');
filepath= strcat(pn,fn);
I = imread(filepath);

figure,imshow(I)