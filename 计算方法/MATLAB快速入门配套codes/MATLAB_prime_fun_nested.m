%
% MATLAB ��ʾ�������б�
% �༶��191201 ������С�� ѧ�ţ�2020100XXXX
% ���ʱ�䣺2022/08/20 
%

clear all; close all;

n = input('Please input a poistive integer: '); 

if ( Is_prime(n) )
    fprintf('%d is a prime number.\n', n);
else
    fprintf('%d is NOT a prime number.\n', n);
end
    
%%% �������ж��Ƿ�Ϊ����
function flag = Is_prime(n)
if ( n<1 )
    disp('input error!'); return;
end

flag = 1;
if ( n==1 )
    flag = 0; return;
else
    for k=2:n-1
        if ( mod(n,k)==0 )
            flag = 0; return;
        end
    end
end
end
