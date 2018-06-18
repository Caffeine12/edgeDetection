%Read image file from UI
[fn pn] = uigetfile('*.jpg', 'Select image file');
filepath= strcat(pn,fn);
I = imread(filepath);

%Extracting R G B values
R = double(I(:,:,1));
G = double(I(:,:,2));
B = double(I(:,:,3));

% Converting to gray image
dbl = double((R+G+B)/3);
Final = uint8(dbl);
Gray = double(Final);

figure,imshow(Final)