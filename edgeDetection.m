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

%Applying Sobel gradient algorithm

for i = 1:size(Gray,1)-2
    for j = 1:size(Gray,2)-2
        Gx =((2*Gray(i+2,j+1)+Gray(i+2,j)+Gray(i+2,j+2))-(2*Gray(i,j+1)+Gray(i,j)+Gray(i,j+2)));
        Gy =((2*Gray(i+1,j+2)+Gray(i,j+2)+Gray(i+2,j+2))-(2*Gray(i+1,j)+Gray(i,j)+Gray(i+2,j)));
        Edg(i,j) = sqrt(Gx.^2+Gy.^2);
    end
end
sobgradient = uint8(Edg);
figure, imshow(sobgradient);
title('Sobel Gradient');

%Detection of edge using threshold 255

edges = sobgradient;
for i=1:size(Gray,1)-2
    for j=1:size(Gray,2)-2
        if sobgradient(i,j) < 255
            edges(i,j) = 0;
        else
            edges(i,j)= 1;
        end
    end
end
edges = logical(edges);
figure,imshow(edges);
title('Detected Edges');