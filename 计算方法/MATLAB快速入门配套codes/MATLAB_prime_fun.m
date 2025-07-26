%
% MATLAB 演示：素数判别
% 班级：191201 姓名：小明 学号：2020100XXXX
% 完成时间：2022/08/20 
%

function flag = MATLAB_prime_fun(n)

if ( n<1 )
    disp('input error!'); return;
end

if ( n==1 )
    flag = 0; return;
else
    for k=2:n-1
        if ( mod(n,k)==0 )
            flag = 0; return;
        end
    end
end
flag = 1;
