# Image Processing : Detection of edge of any object #

In the applications of computer vision or robot vision like autonomous vehicles, medical image processing, it is necessary to detect the edges of objects. There are several operator mask to detect edge of an object. In this project, edge of a vehicle is detected using Sobel operator.
1. First a color image has been taken as input.

2. Then the image has been converted to grayscale image
3. Then Sobel operator mask has been applied to every pixel of the image
4. A Sobel gradient output has been shown

5. Edges of the vehicle has been detected using a threshold value 255.


### Sample Input ###
![Sample Input](https://github.com/Caffeine12/edgeDetection/blob/master/car.jpg "Sample Input")

### Sample Sobel Gradient Output ###
![Sobel Gradient Output](https://github.com/Caffeine12/edgeDetection/blob/master/SobelGradientOutpur.jpg "Sobel Gradient Output")

### Final Detected Edge ###
![Final Detected Edge](https://github.com/Caffeine12/edgeDetection/blob/master/edgeDetected.jpg "Final Detected Edge")
