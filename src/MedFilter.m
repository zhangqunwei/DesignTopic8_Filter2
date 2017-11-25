%% MediumFilter ��ֵ�˲���
%   ����ԭ�ͣ�I = MedFilter(X,N)
%   ����˵����
%       X��ͼ������
%       N��ģ���С��N*N
%       I�������double����
% 

%% 
function I = MedFilter(X,N)
    [m,n] = size(X);     % ����ͼ���С
    dI = double(X);      % ���������ͼ��double���ͣ�
    % ��ͼ��ʹ��ģ��
    for i=1 : m-N+1      % ��
        for j=1 : n-N+1       % ��
            temp   = X(i:i+(N-1),j:j+(N-1));        % ȡ��ͼ������ģ���Ӧ������
            vector = temp(:);                       % ������ת��Ϊһ��ʸ��
            medval = median(vector);                % ����ʸ������ֵ
            dI(i:i+(N-1)/2,j:j+(N-1)/2)=medval;     % ����ֵд������λ��
        end
    end
    I = uint8(dI);
end          