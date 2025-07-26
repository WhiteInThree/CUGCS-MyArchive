%
% MATLAB 演示：素数判别
% 班级：191201 姓名：小明 学号：2020100XXXX
% 完成时间：2022/08/20 
%

clear all; close all;

n = input('Please input a poistive integer: '); 

if ( Is_prime(n) )
    fprintf('%d is a prime number.\n', n);
else
    fprintf('%d is NOT a prime number.\n', n);
end
    
%%% 函数：判断是否为素数
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
