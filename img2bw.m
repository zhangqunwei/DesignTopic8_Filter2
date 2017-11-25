%% img2bw ������ֵʵ��ͼ��Ķ�ֵ��
%   ����ԭ�ͣ�BW = img2bw(image,level)
%   ����˵����
%       image��ͼ������
%       level����ֵ
%       BW���������ֵͼ��
%

%% 
function BW = img2bw(image,level)
    BW = image;                   % ������ֵͼ�����
    maxVal = max(max(image));     % �������ֵ
    minVal = min(min(image));     % ������Сֵ
    levelVal = (maxVal - minVal) * level + minVal;  % ������ֵ         
    BW(image>levelVal) = 255;     % ������ֵΪ��ɫ
    BW(image<levelVal) = 0;       % С����ֵΪ��ɫ
end