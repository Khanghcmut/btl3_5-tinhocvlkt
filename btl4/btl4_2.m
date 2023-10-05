m=input('input length of array');
arr=rand([1,m]);
disp(arr)
begin=1;

while begin<m
    min=arr(begin);
    j=begin;% this is location of selected value 
    for i=begin+1:m
        if  min>arr(i)
            min=arr(i);
            j=i;
        end
    end
    sel=arr(begin);
    arr(begin)=min;
    arr(j)=sel;
    begin=begin+1;
end
disp('result')
disp(arr)