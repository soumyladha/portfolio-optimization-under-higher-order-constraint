data=[]; 
for i=1:size(p,2)
    x=(p(:,i))';
    %filename = 'coKurtosisTrans.xlsx';
    %c1 = xlsread('coKurtosisTrans.xlsx');
    e1=evalin('base','c1');


    
    a = 1*x*e1'*kron(kron(x',x'),x');

    %filename = 'coVariance.xlsx';
    %c2 = xlsread('coVariance.xlsx');
    e2=evalin('base','c2');

    b = 1*x*e2*x';
    data(2,i)=a/b^2;
end