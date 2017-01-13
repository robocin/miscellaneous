#include <QCoreApplication>
#include <opencv2/opencv.hpp>
#include <iostream>

#define WINDOW_NAME "Teste OpenCV + Qt"

int main()
{
    cv::Mat image;
    image = cv::imread("lena.jpg");   // Read the file
    if(!image.data)
    {
        std::cout << "No image!" << std::endl;
        image = cv::Mat::zeros(240, 320, CV_8UC3);
        //cv::putText(image, "No image!", cv::Point(80, 120), cv::FONT_HERSHEY_SIMPLEX, 1, cv::Scalar(255,255,255));
        cv::putText(image, "Lena not found!", cv::Point(30, 120), cv::FONT_HERSHEY_SIMPLEX, 1, cv::Scalar(255,255,255));
    }
    else
    {
        std::cout << "Image loaded!" << std::endl;
    }

    cv::namedWindow(WINDOW_NAME);
    cv::imshow(WINDOW_NAME, image);
    cv::waitKey(0);

    return 0;
}
