%% Prewitt算子
%   函数原型：I = Prewitt(X)
%   参数说明：
%       X：图像数据,double类型
%       I：结果，double类型
%  

%%
function I = Prewitt(X)
    % 设置算子
    plateX = [1 0 -1;1 0 -1;1 0 -1];
    plateY = [1 1  1;0 0 0;-1 -1 -1];  
    % 检索图像大小  
    [m,n] = size(X);     
    % 创建dX,dY，用于保存X,Y方向结果
    dX = double(X);               % 保存计算后X方向的图像（double类型）
    dY = double(X);               % 保存计算后Y方向的图像（double类型）    
    % 对图像使用模版
    for i=1 : m-2    % 行
        for j=1 : n-2     % 列
            % X方向使用模板
            tempX = plateX .* X(i:i+2,j:j+2);         % 模板与图像数据位置对应相乘
            SumX  = sum(sum(tempX));                  % 求和
            dX(i:i+1,j:j+1) = SumX ^ 2;               % 平方并写入图像
            % Y方向使用模板
            tempY = plateY .* X(i:i+2,j:j+2);         % 模板与图像数据位置对应相乘
            SumY  = sum(sum(tempY));                  % 求和
            dY(i:i+1,j:j+1) = SumY ^ 2;               % 平方并写入图像
        end
    end
    % 计算S
    S = sqrt(dX+dY);
    % 加上原图
    I = uint8(X+S);
end   