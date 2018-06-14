ds = imageDatastore('neural','IncludeSubfolders',true, 'LabelSource', 'foldernames');

ds = shuffle(ds);
net = vgg16;
layers = net.Layers;
[train, test] = splitEachLabel(ds,0.8,'randomized');
fc = fullyConnectedLayer(4);
layers(39) = fc;
layers(41) = classificationLayer;
opts = trainingOptions('sgdm','MaxEpochs',18,'InitialLearnRate',0.001,'VerboseFrequency', 10,'ValidationFrequency', 10);
[final,info] = trainNetwork(train, layers, opts);
Preds = classify(final,test);
Actual = test.Labels;
numCorrect = nnz(Preds == Actual)
numel(Preds)