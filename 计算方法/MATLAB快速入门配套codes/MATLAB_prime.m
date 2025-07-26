%
% MATLAB 演示：素数判别
% 班级：191201 姓名：小明 学号：2020100XXXX
% 完成时间：2022/08/20 
%

clear all;  close all;

n = input('Please input a positive integer: ');

if ( n<1 )
    disp('input error!'); return;
end

if ( n==1 )
    fprintf('%d is not a prime number\n', n);
else
    for k=2:n-1
        if ( mod(n,k)==0 )
            fprintf('%d is not a prime number\n', n);
            break;
        end
    end
end

if ( k==n-1 )
    fprintf('%d is a prime number\n', n);
end
