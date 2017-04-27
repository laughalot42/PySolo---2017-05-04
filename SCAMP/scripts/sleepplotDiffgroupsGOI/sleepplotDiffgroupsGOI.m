function sleepplotDiffgroupsGOI(ti,doprint,sBin,eBin,file1,file2)

if nargin==5
[data1 data1a]=fly_sleepthresh(file1,ti);
[x y]= size(data1);
    for n=1:y;
        subplot(y*3,3,n+2*(n-1)); bar (data1(sBin:eBin,n));
        axis tight
        set(gca,'ytick',[])
        set(gca,'xtick',[])
    end

set(gcf,'PaperOrientation','landscape');
set(gcf, 'PaperPositionMode', 'manual');
set(gcf, 'PaperPosition', [0.05 0.25 10.75 8.25]);
set (gca,'FontSize',6)

if doprint>0
   print
end
end


if nargin==6
[data1 data1a]=fly_sleepthresh(file1,ti);
[x y]= size(data1);
    for n=1:y;
        subplot(y*3,3,n+2*(n-1)); bar (data1(sBin:eBin,n));
        axis tight
        set(gca,'ytick',[])
        set(gca,'xtick',[])
    end
[data2 data2a]=fly_sleepthresh(file2,ti);
[x y]= size(data2);
    for n=1:y;
        subplot(y*3,3,(n+1)+2*(n-1)); bar (data2(sBin:eBin,n));
        
        axis tight
        set(gca,'ytick',[])
        set(gca,'xtick',[])
    end  
set(gcf,'PaperOrientation','landscape');
set(gcf, 'PaperPositionMode', 'manual');
set(gcf, 'PaperPosition', [0.05 0.25 10.75 8.25]);
set (gca,'FontSize',6)

if doprint>0
   print
end
end