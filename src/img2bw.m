%% img2bw 根据阈值实现图像的二值化
%   函数原型：BW = img2bw(image,level)
%   参数说明：
%       image：图像数据
%       level：阈值
%       BW：输出，二值图像
%

%% 
function BW = img2bw(image,level)
    BW = image;                   % 创建二值图像矩阵
    maxVal = max(max(image));     % 计算最大值
    minVal = min(min(image));     % 计算最小值
    levelVal = (maxVal - minVal) * level + minVal;  % 计算阈值         
    BW(image>levelVal) = 255;     % 大于阈值为白色
    BW(image<levelVal) = 0;       % 小于阈值为黑色
end