%% MinimumFilter ��Сֵ�˲���
%   ����ԭ�ͣ�I = MinFilter(X,N)
%   ����˵����
%       X��ͼ������
%       N��ģ���С��N*N
%       I�������double����
%
%% 
function I = MinFilter(X,N)
    [height,width] = size(X);     % ����ͼ���С
    dI = double(X);               % ΪI����ռ䣨double���ͣ�
    % ��ͼ��ʹ��ģ��
    for i=1 : height-N+1      % ��
        for j=1 : width-N+1       % ��
            temp   = X(i:i+(N-1),j:j+(N-1));        % ȡ��ͼ������ģ���Ӧ������
            vector = temp(:);                       % ������ת��Ϊһ��ʸ��
            minval = min(vector);                   % ����ʸ������Сֵ
            dI(i:i+(N-1)/2,j:j+(N-1)/2) = minval;   % ����Сֵд������λ��
        end
    end
   I = uint8(dI);
end   