#include "opencv2/core/core.hpp"
#include "opencv2/highgui/highgui.hpp""
#include "opencv2/imgproc/imgproc.hpp"
#include "iostream"



/*************************************************** 
	Aim of this file is to start from a color image,
	threshold it to gray black and white,
	use findContours to get contours,
	draw contours. 
*****************************************************/

using namespace cv;
using namespace std;
int canny_threshold;


int main (void)
{ 
	/* 1) take a picture from webcam */
	Mat image, grayimage;
	VideoCapture cap(0);

	if (!cap.isOpened())
		return -1;

	cap.read(image);	
	imwrite("test.jpg",image);
	/* Display Original */
	namedWindow("Original",CV_WINDOW_AUTOSIZE);
	namedWindow("Grayscaled",CV_WINDOW_AUTOSIZE);
	image = imread("test.jpg");
	
	/*2) Convert to Grayscale  */
	cvtColor(image, grayimage, CV_BGR2GRAY);
	/*3) Find edges */
	Canny(grayimage, grayimage, 50, 90, 3);

	/*4) find contours  */
	vector<vector<Point> > contours;
    vector<Vec4i> hierarchy;
    RNG rng(12345);
    findContours( grayimage, contours, hierarchy, CV_RETR_TREE, CV_CHAIN_APPROX_SIMPLE, Point(0, 0) );
    /*5) Draw contours*/
	Mat drawing = Mat::zeros( grayimage.size(), CV_8UC3 );
	for (int i = 0; i < contours.size(); i++) {
	Scalar color = Scalar( 100, 100, 200 );
        drawContours( drawing, contours, i, color, 2, 8, hierarchy, 0, Point() );
	}
	imshow("Original", image);
	imshow("Grayscale", image + drawing);
	waitKey(0);	

	return 0;
}
