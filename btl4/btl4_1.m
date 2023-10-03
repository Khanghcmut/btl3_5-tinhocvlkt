m=input('input matrix as [m,n]');
mattrix=rand(m);
ls=[]
disp(mattrix)
for i=1:m(1)
    for j=1:m(2)
        ls=[ls,[mattrix(i,j)]];
    end
end
disp(ls)