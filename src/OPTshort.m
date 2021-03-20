x0Copy =[];
for i = 1:50
    x0Copy = [x0Copy 2];
end
A = [];
for i = 1:50
    for j = 1:50
        if i~=j
            A(i,j)=0;
            A(i+50,j)=0;
        else
            A(i,j)=-1;
            A(i+50,j)=1;
        end
    end
end
b = [];
for i = 1:50
    b(i,1)=100;
    b(i+50,1)=100;
end
Aeq = [];
beq = [100];
for i = 1:50;
    Aeq = [Aeq 1];
end

%[x,fval]=fmincon(@s1,x0Copy,A,b,Aeq,beq);