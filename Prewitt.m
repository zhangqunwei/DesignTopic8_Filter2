%% Prewitt����
%   ����ԭ�ͣ�I = Prewitt(X)
%   ����˵����
%       X��ͼ������,double����
%       I�������double����
%  

%%
function I = Prewitt(X)
    % ��������
    plateX = [1 0 -1;1 0 -1;1 0 -1];
    plateY = [1 1  1;0 0 0;-1 -1 -1];  
    % ����ͼ���С  
    [m,n] = size(X);     
    % ����dX,dY�����ڱ���X,Y������
    dX = double(X);               % ��������X�����ͼ��double���ͣ�
    dY = double(X);               % ��������Y�����ͼ��double���ͣ�    
    % ��ͼ��ʹ��ģ��
    for i=1 : m-2    % ��
        for j=1 : n-2     % ��
            % X����ʹ��ģ��
            tempX = plateX .* X(i:i+2,j:j+2);         % ģ����ͼ������λ�ö�Ӧ���
            SumX  = sum(sum(tempX));                  % ���
            dX(i:i+1,j:j+1) = SumX ^ 2;               % ƽ����д��ͼ��
            % Y����ʹ��ģ��
            tempY = plateY .* X(i:i+2,j:j+2);         % ģ����ͼ������λ�ö�Ӧ���
            SumY  = sum(sum(tempY));                  % ���
            dY(i:i+1,j:j+1) = SumY ^ 2;               % ƽ����д��ͼ��
        end
    end
    % ����S
    S = sqrt(dX+dY);
    % ����ԭͼ
    I = uint8(X+S);
end   