
camera = webcam; % Connect to the camera

camera
while true   
    picture = camera.snapshot;              % Take a picture    
    picture = imresize(picture,[224,224]);  % Resize the picture

    [label,info] = classify(final, picture)       % Classify the picture
    image(picture);
    if label== 'angry'
        title([char('neutral'),char('     '),num2str(info(1)*100), char(' %')])
    end
    if label == 'cry'
        title([char(label),char('     '),num2str(info(2)*100), char(' %')])
    end
    if label == 'happy'
        title([char(label),char('     '),num2str(info(3)*100), char(' %')])
    end
    if label == 'suprise'
        title([char(label),char('     '),num2str(info(4)*100), char(' %')])
    end

    drawnow;   
end
