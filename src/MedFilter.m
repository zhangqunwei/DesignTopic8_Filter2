%% MediumFilter 中值滤波器
%   函数原型：I = MedFilter(X,N)
%   参数说明：
%       X：图像数据
%       N：模板大小，N*N
%       I：结果，double类型
% 

%% 
function I = MedFilter(X,N)
    [m,n] = size(X);     % 检索图像大小
    dI = double(X);      % 保存计算后的图像（double类型）
    % 对图像使用模版
    for i=1 : m-N+1      % 行
        for j=1 : n-N+1       % 列
            temp   = X(i:i+(N-1),j:j+(N-1));        % 取出图像中与模版对应的数据
            vector = temp(:);                       % 将矩阵转变为一个矢量
            medval = median(vector);                % 计算矢量的中值
            dI(i:i+(N-1)/2,j:j+(N-1)/2)=medval;     % 将中值写入中心位置
        end
    end
    I = uint8(dI);
end          