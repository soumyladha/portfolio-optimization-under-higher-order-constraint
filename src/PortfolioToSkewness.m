data=[]; 
for i=1:size(p,2)
    x=(p(:,i))';
    %filename = 'coSkewness.xlsx';
    %c1 = xlsread('coSkewness.xlsx');
    e1=evalin('base','c1');

    a = 1*x*e1*kron(x',x');

    %filename = 'coVariance.xlsx';
    %c2 = xlsread('coVariance.xlsx');
    e2=evalin('base','c2');

    b = 1*x*e2*x';
    data(1,i)=a/b^1.5;
end