filename = 't.xlsx';
A = xlsread('t.xlsx');
b=[];
for i = 1:50
    b=[b mean(A(:,i))]
end

K3 = [];
for x=1: 1: 50;
    M3=[];
    for i=1: 1: 50;
        S=[];
        for j=1: 1: 50;
            for k=1: 1: 50;
                u=0;
                for t=1:47;
                    u=u+((A(t,i)-(b(:,i)))*(A(t,j)-(b(:,j)))*(A(t,k)-(b(:,k)))*(A(t,x)-(b(:,x))));               
                end
                S(j,k)=u/48;
            end
        end
        M3 = [M3 S];
    end
    K3 = [K3 M3];
end
