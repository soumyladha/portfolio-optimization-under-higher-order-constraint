x0Copy =[];
for i = 1:50
    x0Copy = [x0Copy 2];
end
A = [];
for i = 1:50
    for j = 1:50
        if i~=j
            A(i,j)=0;
        else
            A(i,j)=-1;
        end
    end
end
b = [];
for i = 1:50
    b(i,1)=0;
end
Aeq = [];
beq = [100];
for i = 1:50;
    Aeq = [Aeq 1];
end

%[x,fval]=fmincon(@VarianceFinder,x0Copy,A,b,Aeq,beq);