
[filename, pathname]=uigetfile({'*.*'}, 'anh');
full_name=strcat(pathname,filename);
pic=imread(full_name);
disp(full_name)
pic=imresize(pic,[64 64]);

% if(size(pic,3)==3)
%     pic_bw=rgb2gray(pic);
% end
colorlist=[];
row=size(pic,2);
col=size(pic,1);
resultpic= zeros(row,col);
result= zeros(row,col);
f=figure(Position=[0 0 500 500]);
for i=1:col

    for j=1:row

    [resultpic, color]=bgw(pic,j,i);
    colorlist=[colorlist, resultpic];
    resultpic=resultpic{1};
    text((j)/50,(col-i)/50,resultpic(1),'Color',color);
    
    % disp(color)
    end

end
% figure set

xlim([0,col/50])
ylim([0,row/50])
set(gca,'XTick',[], 'YTick', [])
colorlist=unique(colorlist);
disp(colorlist)


% % saveas(f,'hinhanhminhhoa.fig')
% dlmwrite('result.txt',resultpic,'')
% def finction find color name and color value in rgb
function [value, color]=bgw(picture,y,x)
    color=[picture(x,y,1) picture(x,y,2) picture(x,y,3)];

    % % code to switch if else
    % if (picture(x,y,1)>200)
    %     value=char('W');
    % elseif(picture(x,y,1)<100)
    %     value=char('B');
    % else
    %     value=char('G');
    % end
    % % using colorname
    value=string(colornames('HTML4',double(color)/255,'rgb'));
  
end
