m=input('input length of array');
arr=rand([1,m]);
check_arr=arr;
disp(arr)
begin=1;
while begin<m
    min=arr(begin);
    for i=begin+1:m
        if  min>arr(i)
            sel=arr(i);
            arr(i)=min;
            min=sel;
        end
    end
    arr(begin)=min;
    begin=begin+1;
end
disp('result')
disp(arr)