%% Average ����ƽ���˲���������ƽ���˲�����
%   ����ԭ�ͣ�I = Average(X,N)
%   ����˵����
%       X��ͼ������
%       N��ģ���С��N*N
%       I�������double����

%% 
function I = Average(X,N)
    [m,n] = size(X);     % ����ͼ���С
    dI = double(X);                % ���������ͼ��double���ͣ�
    % ��ͼ��ʹ��ģ��
    for i=1 : m-N+1  % ��
        for j=1 : n-N+1   % ��
            % ��N*N��ģ���Ӧ�������������ƽ��ֵ
            dI(i:i+(N-1)/2, j:j+(N-1)/2) = sum(sum(  X(i:i+(N-1),j:j+(N-1))  )) / (N*N);
        end
    end 
    I = uint8(dI);
end 