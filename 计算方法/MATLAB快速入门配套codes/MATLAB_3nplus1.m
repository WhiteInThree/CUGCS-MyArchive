%
% MATLAB 演示：3n+1 问题
% 班级：191201 姓名：小明 学号：2020100XXXX
% 完成时间：2022/08/20 
%

clear all;  close all;

n = input('Please input a positive integer: ');
n0 = n; % 将原始值记录下来

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

