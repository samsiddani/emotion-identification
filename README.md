# emotion identification <br/>
I have retrained a neural network (deep learning) using my data with transfer learning technique on Matlab.<br/>
Tools used: Matlab, VGG16. <br/>
I have trained a VGG16 neural net on matlab with my data(face images).<br/>
I have uploaded a file resize.m, which helps you to resize your data(images) as the VGG16 neural network needs 224X224X3.<br/>
I have also uploaded files training-neuralnetwork and camera-view.<br/>
Training-neural network is to train the neural network (VGG16) with your data(resized data).<br/>
camera-view is to classify the real time video and to identify the emotion with percentage.<br/>

# Instructions to Run  <br/>

firstly, you have to divide the images in to different and label as expression name like angry, happy, suprise..etc. <br/>
I have trained the network with four folders.<br/>
If you don't want to change the code, you have to create four folders with your desired expression.<br/>
Next, run the resize.m for all this four folders.<br/>
Next, train your network by running training-neuralnetwork on this four folders.<br/>
Next, run to camera-view to identify your emotions.<br/>


If you have any doubts, mail me @ sam61777@gmail.com
