imagefiles = dir('*.jpg');      
nfiles = length(imagefiles);    % Number of files found
for ii=1:nfiles
   currentfilename = imagefiles(ii).name;
   currentfilename
   currentimage = imread(currentfilename);
   p=imresize(currentimage,[224,224]);
   imwrite(p,currentfilename)
end
