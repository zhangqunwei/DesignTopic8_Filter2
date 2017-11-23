%% MinimumFilter 最小值滤波器
%   函数原型：I = MinFilter(X,N)
%   参数说明：
%       X：图像数据
%       N：模板大小，N*N
%       I：结果，double类型
%
%% 
function I = MinFilter(X,N)
    [height,width] = size(X);     % 检索图像大小
    dI = double(X);               % 为I分配空间（double类型）
    % 对图像使用模版
    for i=1 : height-N+1      % 行
        for j=1 : width-N+1       % 列
            temp   = X(i:i+(N-1),j:j+(N-1));        % 取出图像中与模版对应的数据
            vector = temp(:);                       % 将矩阵转变为一个矢量
            minval = min(vector);                   % 计算矢量的最小值
            dI(i:i+(N-1)/2,j:j+(N-1)/2) = minval;   % 将最小值写入中心位置
        end
    end
   I = uint8(dI);
end   