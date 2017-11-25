%% Sobel���� 
%   ����ԭ�ͣ�I = Sobel(X)
%   ����˵����
%       X��ͼ�����ݣ�double����
%       I�������double����
%

%%
function I = Sobel(X)
    % ��������
    plateX = [-1 -2 -1;0 0 0;1 2 1];
    plateY = [-1 0  1;-2 0 2;-1 0 1];    
    % ����ͼ���С  
    [m,n] = size(X);     
    % ����dX,dY�����ڱ���X,Y������
    dX = double(X);               % ���������ͼ��double���ͣ�
    dY = double(X);               % ���������ͼ��double���ͣ�
    % ��ͼ��ʹ��ģ��
    for i=1 : m-2    % ��
        for j=1 : n-2     % ��
            % X����ʹ��ģ��
            tempX = plateX .* X(i:i+2,j:j+2);       % ģ����ͼ�����ݶ�ӦԪ�����
            SumX  = sum(sum(tempX));                % ���
            dX(i:i+1,j:j+1) = SumX ^ 2;             % ƽ����д��ͼ��
            % Y����ʹ��ģ��
            tempY = plateY .* X(i:i+2,j:j+2);       % ģ����ͼ�����ݶ�ӦԪ�����
            SumY  = sum(sum(tempY));                % ���
            dY(i:i+1,j:j+1) = SumY ^ 2;             % ƽ����д��ͼ��
        end
    end
    % ����S
    S = sqrt(dX+dY);
    % ����ԭͼ
    I = X+S;
end           