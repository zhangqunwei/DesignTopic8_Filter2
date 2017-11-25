%% Average 领域平均滤波器（线性平滑滤波器）
%   函数原型：I = Average(X,N)
%   参数说明：
%       X：图像数据
%       N：模板大小，N*N
%       I：结果，double类型

%% 
function I = Average(X,N)
    [m,n] = size(X);     % 检索图像大小
    dI = double(X);                % 保存计算后的图像（double类型）
    % 对图像使用模版
    for i=1 : m-N+1  % 行
        for j=1 : n-N+1   % 列
            % 将N*N的模板对应的数据求和再求平均值
            dI(i:i+(N-1)/2, j:j+(N-1)/2) = sum(sum(  X(i:i+(N-1),j:j+(N-1))  )) / (N*N);
        end
    end 
    I = uint8(dI);
end 