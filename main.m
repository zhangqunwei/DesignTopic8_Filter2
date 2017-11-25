%% ��ʼ��
clear
clc
% ��ȡԭͼ
X_src=imread('LBimage2.bmp');
%%


%%                          ����ʽһ

%@@ ������ƽ���˲���
%@ ��ͳ���˲���
% 1����Сֵ�˲�1�����ͼ�����
X_min1=MinFilter(double(X_src),3); 
% 2����Сֵ�˲�1�����ͼ�����
X_min2=MinFilter(X_min1,7); 
% 3����ֵ�˲�������������������ǿ����ģ��С
X_med=MedFilter(X_min2,3);

%@@ ���������˲���
% 4��Prewitt���ӣ���������
X_prewitt=Prewitt(double(X_med));

% 5���߽紦�����߽紦����������Ϊ0 
X_edge = zeros(size(X_prewitt));                                % ����ͬ�ȴ�С�������
[height,width]=size(X_prewitt);                                 % ����ͼ���С
X_edge(7:height-6,7:width-6) = X_prewitt(7:height-6,7:width-6); % ���м䲿�ַ��������

% 6����ֵ������ֵΪ0.4
X_bw=img2bw(X_edge,0.4); 

% ��ʾ���
h1 = figure('name','�˲���ʽ1','NumberTitle','off');
set(h1,'units','normalized','position',[0.1 0.1 0.7 0.7]);
subplot(2,4,1); imshow(uint8(X_src));     title('\fontsize{11}\color{blue}ԭͼ');
subplot(2,4,2); imshow(uint8(X_min1));    title('\fontsize{11}\color{blue}1����Сֵ�˲�1[3]');
subplot(2,4,3); imshow(uint8(X_min2));    title('\fontsize{11}\color{blue}2����Сֵ�˲�2[7]');
subplot(2,4,4); imshow(uint8(X_med));     title('\fontsize{11}\color{blue}3����ֵ�˲�[3]');
subplot(2,4,6); imshow(uint8(X_prewitt)); title('\fontsize{11}\color{blue}4��Prewitt����');
subplot(2,4,7); imshow(uint8(X_edge));    title('\fontsize{11}\color{blue}5���߽紦��');
subplot(2,4,8); imshow(uint8(X_bw));      title('\fontsize{11}\color{blue}6����ֵ��');





%%                          ����ʽ��

%@@ ����ƽ���˲���
% 1������ƽ��������ͼ�����ƽ������,ģ��ͼ���Ա�ȥ��ͼ��̫С��ϸ��,��ȡ�ϴ��Ŀ��
Y_ave=Average(X_src,15); 

%@@ ������ƽ���˲���
%@ ��ͳ���˲���
% 2����Сֵ�˲�1�����ͼ�����
Y_min1=MinFilter(Y_ave,3); 
% 3����Сֵ�˲�2�����ͼ�����
Y_min2=MinFilter(Y_min1,5); 
% 4����ֵ�˲�������������������ǿ����ģ��С
Y_med=MedFilter(Y_min2,5); 

%@@ ���������˲���
% 5��Sobel����:ƽ������
Y_sobel=Sobel(double(Y_med));

% 6���߽紦��:���߽紦����������Ϊ0 
Y_edge = zeros(size(Y_sobel));                                    % ����ͬ�ȴ�С�������
[height,width]=size(Y_sobel);                                     % ����ͼ���С
Y_edge(7:height-6,7:width-6) = Y_sobel(7:height-6,7:width-6);     % ���м䲿�ַ��������

% 7����ֵ��:��ֵΪ0.5
Y_bw=img2bw(Y_edge,0.5);          

% ��ʾ���
h2 = figure('name','�˲���ʽ2','NumberTitle','off');
set(h2,'units','normalized','position',[0.1 0.1 0.7 0.7]);
subplot(2,4,1); imshow(uint8(X_src));   title('\fontsize{11}\color{blue}ԭͼ');
subplot(2,4,2); imshow(uint8(Y_ave));   title('\fontsize{11}\color{blue}1��ƽ���˲�');
subplot(2,4,3); imshow(uint8(Y_min1));  title('\fontsize{11}\color{blue}2����Сֵ�˲�1[3]');
subplot(2,4,4); imshow(uint8(Y_min2));  title('\fontsize{11}\color{blue}3����Сֵ�˲�2[5]');
subplot(2,4,6); imshow(uint8(Y_med));   title('\fontsize{11}\color{blue}4����ֵ�˲�');
subplot(2,4,7); imshow(uint8(Y_sobel)); title('\fontsize{11}\color{blue}5��Sobel����');
subplot(2,4,8); imshow(uint8(Y_bw));    title('\fontsize{11}\color{blue}6����ֵ��');
