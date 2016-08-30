#include "opencv2/highgui/highgui.hpp"
#include "opencv2/imgproc/imgproc.hpp"
#include <iostream>

using namespace cv;
using namespace std;

int main(int argc, char* argv[])
{

     int iLowH = 0;
     int iHighH = 179;

     int iLowS = 0;
     int iHighS = 255;

     int iLowV = 0;
     int iHighV = 255;
    

     namedWindow("Control",CV_WINDOW_AUTOSIZE);

     /* Create sliders to get precise values for color filtering */
     cvCreateTrackbar("LowH", "Control", &iLowH, 100);
     cvCreateTrackbar("HighH", "Control", &iHighH, 179);

     cvCreateTrackbar("LowS", "Control", &iLowS, 255);
     cvCreateTrackbar("HighS", "Control", &iHighS, 255);

     cvCreateTrackbar("LowV", "Control", &iLowV, 255);
     cvCreateTrackbar("HighV", "Control", &iHighV, 255);

     VideoCapture cap(0); // open the video file for reading
       if ( !cap.isOpened() )  // if not success, exit program
       {
            cout << "Cannot open the video file" << endl;
            return -1;
       }

     namedWindow("Webcam Stream",CV_WINDOW_AUTOSIZE); 
     namedWindow("Thresholded Stream",CV_WINDOW_AUTOSIZE); 
     while(1)
     {
         Mat frame;
         bool bSuccess = cap.read(frame); // read a new frame from video

         if (!bSuccess) //if not success, break loop
         {
             cout << "Cannot read the frame from video file" << endl;
             break;

         }


        Mat imgHSV;
        Mat imgThresholded;

        cvtColor(frame, imgHSV, COLOR_BGR2HSV); //Convert the captured frame from BGR to HSV
         
        /* in the first place we must threshold the frame to detect a particular color */
        /* Threshold the image */
        inRange(imgHSV, Scalar(iLowH, iLowS, iLowV), Scalar(255, 255, 255), imgThresholded);



        /* Then we do a morphological opening to put small threesholded object to background */
        erode(imgThresholded, imgThresholded, getStructuringElement(MORPH_ELLIPSE, Size(5, 5)) );
        dilate( imgThresholded, imgThresholded, getStructuringElement(MORPH_ELLIPSE, Size(5, 5)) ); 

        /* At least we do a morphological closing in order to affinate the foreground */
        erode(imgThresholded, imgThresholded, getStructuringElement(MORPH_ELLIPSE, Size(5, 5)) );
        dilate( imgThresholded, imgThresholded, getStructuringElement(MORPH_ELLIPSE, Size(5, 5)) ); 
        
        imshow("Webcam Stream", frame);
        imshow("Thresholded Stream", imgThresholded);

        if(waitKey(30) == 27) //wait for 'esc' key press for 30 ms. If 'esc' key is pressed, break loop
        {
            cout << "esc key is pressed by user" << endl;
            break;
        }
     }
     return 0;
}
