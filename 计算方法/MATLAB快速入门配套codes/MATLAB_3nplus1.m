%
% MATLAB ��ʾ��3n+1 ����
% �༶��191201 ������С�� ѧ�ţ�2020100XXXX
% ���ʱ�䣺2022/08/20 
%

clear all;  close all;

n = input('Please input a positive integer: ');
n0 = n; % ��ԭʼֵ��¼����

if ( n<=0 )
    disp('input error!'); return;
end

while ( n>1 )
    if ( mod(n,2) == 0 )
        n = n/2;
    else
        n = 3*n + 1;
    end
    fprintf(' n = %d\n', n);
end
fprintf('n = %d is not we need.\n', n0);

