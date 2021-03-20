data=[];
for i=1:size(p,2);
    data(1,i)=SkewnessFinder([p(:,i)]);
    data(2,i)=KurtosisFinder([p(:,i)]);
    data(3,i)=MVS([p(:,i)]);
    data(4,i)=MVKS([p(:,i)]);
end