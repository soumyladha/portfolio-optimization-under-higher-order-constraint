filename = 'Return_Data.xlsx';
A = xlsread('Return_Data.xlsx');

temp = [];
for i = 1: 1: 50;
    temp = [temp sum(A(:,i))];
end
M3=[];
for i=1: 1: 50;
    S=[];
    for j=1: 1: 50;
        for k=1: 1: 50;
            u=0;
            for t=1:47;
                u=u+((A(t,i)-mean(A(:,i)))*(A(t,j)-mean(A(:,j))) ...
                    *(A(t,k)-mean(A(:,k))));
            end
            S(j,k)=u/48;
        end
    end
    M3 = [M3 S];
end


