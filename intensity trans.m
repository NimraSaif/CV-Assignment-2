% Load the original image
img = imread('liftingbody.png');

% Result 1: Negative Transformation
img_neg = 255 - img;

% Result 2: Contrast Stretching
img_stretch = imadjust(img, [0.2, 0.8], [0, 1]); % Adjust the limits as needed

% Result 3: Gamma Correction
img_gamma = imadjust(img, [], [], 0.5); % Adjust the gamma value as needed

% Result 4: Negative Transformation and Thresholding
img_thresh = 255 - img; % Invert the image
img_thresh = imbinarize(img_thresh, 'adaptive'); % Perform adaptive thresholding

% Display the results
figure;
subplot(2, 3, 1); imshow(img); title('Original');
subplot(2, 3, 2); imshow(img_neg); title('Negative');
subplot(2, 3, 3); imshow(img_stretch); title('Contrast Stretched');
subplot(2, 3, 4); imshow(img_gamma); title('Gamma Corrected');
subplot(2, 3, 5); imshow(img_thresh); title('Negative & Thresholded');