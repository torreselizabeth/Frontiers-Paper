%load the summary data and plot per group
clear all;
shapes={'v','s','p','o','h','d','^'};
ages={'5-10','11-15','16-20','21-25','26-30','31-40','41-65'};
TD_files=dir('*rec_*ls*TD*');
ASD_files=dir('*rec_*ls*ASD*');
Gfig=figure; hold on;
pdf_fig=figure; hold on;
moments_fig=figure; hold on;

maxM=-1; maxV=-1; maxS=-1;
minM=1000; minV=1000; minS=1000;
minSh=1000; minSc=1000;
maxSh=-1; maxSc=-1;
for i=1:size(TD_files,1)
    load(TD_files(i).name);
    fullname=TD_files(i).name(1:end-4);
    ls=eval(fullname);
    
    name=TD_files(i).name(5:10);
    figure(Gfig);
    for j=1:size(ls,2)
        subplot(2,7,i); hold on; set(gca,'FontSize',14);
        plot(log(ls(j).phat(1)), log(ls(j).phat(2)), 'o', 'MarkerSize', 2, 'MarkerFace','r', 'MarkerEdge', 'r')
        axis square; box on;
        xlabel('Shape'); ylabel('Scale');
        title(ages{i});
        if max(ls(j).phat(1)>maxSh)             maxSh=ls(j).phat(1);         end
        if max(ls(j).phat(2)>maxSc)             maxSc=ls(j).phat(2);         end
        
        if min(ls(j).phat(1)<minSh)             minSh=ls(j).phat(1);         end
        if min(ls(j).phat(2)<minSc)             minSc=ls(j).phat(2);         end
    end
    
    figure(pdf_fig);
    for j=1:size(ls,2)
        subplot(2,7,i); hold on; set(gca,'FontSize',14);
        plot(ls(j).gampdf_X, ls(j).gampdf_Y,'r');
        axis square; box on;
        xlabel('MMS Linear Speed'); ylabel('PDF');
    end
    axis([0.4  .85  0 9 ]);
    
    figure(moments_fig);
    for j=1:size(ls,2)
        subplot(2,7,i); hold on; set(gca,'FontSize',14);
        plot3(ls(j).mean, ls(j).var, ls(j).sk, shapes{i}, 'MarkerSize',3*ls(j).kt,'MarkerFace', 'r', 'MarkerEdge', 'r');
        if max(ls(j).mean>maxM)             maxM=ls(j).mean;         end
        if max(ls(j).var>maxV)              maxV=ls(j).var;          end
        if max(ls(j).sk>maxS)               maxS=ls(j).sk;           end
        
        if min(ls(j).mean<minM)             minM=ls(j).mean;         end
        if min(ls(j).var<minV)              minV=ls(j).var;          end
        if min(ls(j).sk<minS)               minS=ls(j).sk;           end
    end
end

%% ASD
for i=1:size(ASD_files,1)
    load(ASD_files(i).name);
    fullname=ASD_files(i).name(1:end-4);
    ls=eval(fullname);
    
    name=TD_files(i).name(5:10);
    figure(Gfig);
    for j=1:size(ls,2)
        subplot(2,7,i+7); hold on;
        plot(log(ls(j).phat(1)), log(ls(j).phat(2)), 'o', 'MarkerSize', 2, 'MarkerFace','b', 'MarkerEdge', 'b')
        axis square; box on;
        xlabel('Shape'); ylabel('Scale');
        title(ages{i});
        if max(ls(j).phat(1)>maxSh)             maxSh=ls(j).phat(1);         end
        if max(ls(j).phat(2)>maxSc)             maxSc=ls(j).phat(2);         end
        
        if min(ls(j).phat(1)<minSh)             minSh=ls(j).phat(1);         end
        if max(ls(j).phat(2)<minSc)             minSc=ls(j).phat(2);         end
    end
    
    figure(pdf_fig);
    for j=1:size(ls,2)
        subplot(2,7,i+7); hold on; set(gca,'FontSize',14);
        plot(ls(j).gampdf_X, ls(j).gampdf_Y,'b');
        axis square; box on;
        xlabel('MMS Linear Speed'); ylabel('PDF');
    end
    axis([0.4  .85 0 9 ]);
    
    figure(moments_fig);
    for j=1:size(ls,2)
        subplot(2,7,i+7); hold on;
        plot3(ls(j).mean, ls(j).var, ls(j).sk, shapes{i},'MarkerSize',3*ls(j).kt, 'MarkerFace', 'b', 'MarkerEdge', 'b');
        if max(ls(j).mean>maxM)             maxM=ls(j).mean;         end
        if max(ls(j).var>maxV)              maxV=ls(j).var;          end
        if max(ls(j).sk>maxS)               maxS=ls(j).sk;           end
        
        if min(ls(j).mean<minM)             minM=ls(j).mean;         end
        if min(ls(j).var<minV)              minV=ls(j).var;          end
        if min(ls(j).sk<minS)               minS=ls(j).sk;           end
    end
end
%% Set axis same for all
for i=1:size(TD_files,1)
    figure(Gfig);
    subplot(2,7,i);set(gca,'FontSize',14);
    axis([log(minSh) log(maxSh) log(minSc) log(maxSc)]);
    xlabel('log(Shape)')
    ylabel('log(Scale)')

    figure(pdf_fig);
    subplot(2,7,i); set(gca,'FontSize',14);
    axis([0  1 0 10 ]);
    title(ages{i});
    
    figure(moments_fig);
    subplot(2,7,i); set(gca,'FontSize',14);
    axis([minM maxM  minV maxV  minS maxS]);
    view(-290,6);
    xlabel('\mu'); ylabel('\sigma'); zlabel('skewness');
    title(ages{i});
end
for i=1:size(ASD_files,1)
    figure(Gfig); set(gca,'FontSize',14);
    subplot(2,7,i+7);
    axis([log(minSh) log(maxSh) log(minSc) log(maxSc)]);
    xlabel('log(Shape)')
    ylabel('log(Scale)')

    figure(pdf_fig);
    subplot(2,7,i+7); 
    axis([0  1 0 10 ]);
    title(ages{i});
    
    figure(moments_fig);
    subplot(2,7,i+7); set(gca,'FontSize',14);
    axis([minM maxM  minV maxV  minS maxS]);
    view(-290,6);
    xlabel('\mu'); ylabel('\sigma'); zlabel('skewness');
    title(ages{i});
end
figure(moments_fig); maximize;
print -dtiff Gamma_Moments_Indiv_Rep;

figure(Gfig); maximize;
print -dtiff Gamma_Plane_Indiv_Rep;

figure(pdf_fig); maximize;
print -dtiff Gamma_PDF_Indiv_Rep;



%% Plot MM spikes  For Methods figure TD i=98 and ASD i=50 picked at random as a sample
load('rec_ls1_ASD.mat')
load('rec_ls1_TD.mat')

ls_TD=rec_ls1_TD;
ls_ASD=rec_ls1_ASD;
for i=98%1:100  %uncomment to see all 100 samples
    figure; hold on; 
    set(gca,'FontSize',20);
    plot(ls_TD(i).time_series);
    [peaks_TD,locs_TD]=findpeaks(ls_TD(i).time_series);
    plot(locs_TD, peaks_TD, 'r.');
    axis square; box on;
    title('Raw Linear Speed TD');
    filename1{i}=sprintf('TD_rawLS_%d', i);
    axis([0 2000 0 2]);
    print('-dtiff', filename1{i}) ;
  
end

for i=50%1:100  %uncomment to run all 100 samples
    figure; hold on;
    set(gca,'FontSize',20);
    plot(ls_ASD(i).time_series);
    [peaks_ASD,locs_ASD]=findpeaks(ls_ASD(i).time_series);
    plot(locs_ASD, peaks_ASD, 'b.');
    axis square; box on;
    title('Raw Linear Speed ASD');
    filename2{i}=sprintf('ASD_rawLS_%d', i);
    axis([0 2000 0 2]);
    print('-dtiff', filename2{i}) ;
 
end

%% MM deviations
for i=98%1:100  %uncomment to run all 100 samples
    figure; hold on;
    set(gca,'FontSize',20);
    plot(ls_TD(i).mean_shifted);
    peaks_TD=[]; locs_TD=[];
    [peaks_TD,locs_TD]=findpeaks(ls_TD(i).mean_shifted);
    plot(locs_TD, peaks_TD, 'r.');
    axis square; box on;
    axis([0 2000 0 2]);
    title('\Gamma Mean Shifted LS TD');
    filename1{i}=sprintf('TD_GamMeanShifted_LS_%d', i);
    print('-dtiff', filename1{i}) ;
end

for i=50%1:100  %uncomment to run all 100 samples
    figure; hold on;
    set(gca,'FontSize',20);
    plot(ls_ASD(i).mean_shifted);
    peaks_ASD=[]; locs_ASD=[];
    [peaks_ASD,locs_ASD]=findpeaks(ls_ASD(i).mean_shifted);
    plot(locs_ASD, peaks_ASD, 'b.');
    axis square; box on;
    axis([0 2000 0 2]);
    title('\Gamma Mean Shifted LS ASD');
    filename2{i}=sprintf('ASD_GamShifted_LS_%d', i);
    print('-dtiff', filename2{i}) ;
end

%% MM spikes
for i=98%1:100  %uncomment to run all 100 samples
    figure; hold on;
    set(gca,'FontSize',20);
    plot(ls_TD(i).MicroMov);
    peaks_TD=[]; locs_TD=[];
    [peaks_TD,locs_TD]=findpeaks(ls_TD(i).MicroMov);
    plot(locs_TD, peaks_TD, 'r.');
    axis square; box on;
    axis tight;
    title('\Gamma MMS LS TD');
    filename1{i}=sprintf('TD_GamMMS_LS_%d', i);
    print('-dtiff', filename1{i}) ;
end

for i=50%1:100  %uncomment to run all 100 samples
    figure; hold on;
    set(gca,'FontSize',20);
    plot(ls_ASD(i).MicroMov);
    peaks_ASD=[]; locs_ASD=[];
    [peaks_ASD,locs_ASD]=findpeaks(ls_ASD(i).MicroMov);
    plot(locs_ASD, peaks_ASD, 'b.');
    axis square; box on;
    axis tight;
    title('\Gamma MMS LS ASD');
    filename2{i}=sprintf('ASD_GamMMS_LS_%d', i);
    print('-dtiff', filename2{i}) ;
end
%% MM FULL spikes
for i=98%1:100  %uncomment to run all 100 samples
    figure; hold on;
    set(gca,'FontSize',20);
    plot(ls_TD(i).MicroMov_full);
    peaks_TD=[]; locs_TD=[];
    [peaks_TD,locs_TD]=findpeaks(ls_TD(i).MicroMov_full);
    plot(locs_TD, peaks_TD, 'r.');
    axis square; box on;
    axis tight;
    title('\Gamma MMS Full LS TD');
    filename1{i}=sprintf('TD_GamMMSF_LS_%d', i);
    print('-dtiff', filename1{i}) ;
end

for i=50%1:100  %uncomment to run all 100 samples
    figure; hold on;
    set(gca,'FontSize',20);
    plot(ls_ASD(i).MicroMov_full);
    peaks_ASD=[]; locs_ASD=[];
    [peaks_ASD,locs_ASD]=findpeaks(ls_ASD(i).MicroMov_full);
    plot(locs_ASD, peaks_ASD, 'b.');
    axis square; box on;
    axis tight;
    title('\Gamma MMS Full LS ASD');
    filename2{i}=sprintf('ASD_GamMMSF_LS_%d', i);
    print('-dtiff', filename2{i}) ;
end

%% Frequency histograms good TD 98 and ASD 50
figure; hold on;
set(gca, 'FontSize', 20)
peaks_TD=[]; locs_TD=[];
[peaks_TD,locs_TD]=findpeaks(ls_TD(98).MicroMov);

LegHandles = []; LegText = {};
% --- Plot data originally in dataset "peaks_TD data"
[CdfF,CdfX] = ecdf(peaks_TD,'Function','cdf');  % compute empirical cdf
BinInfo.rule = 1;
[~,BinEdge] = internal.stats.histbins(peaks_TD,[],[],BinInfo,CdfF,CdfX);
[BinHeight,BinCenter] = ecdfhist(CdfF,CdfX,'edges',BinEdge);
hLine = bar(BinCenter,BinHeight,'hist');
set(hLine,'FaceColor','r','EdgeColor','k',...
    'LineStyle','-', 'LineWidth',1);
xlabel('Standard MMS Amplitude');
ylabel('Density')
LegHandles(end+1) = hLine;
LegText{end+1} = 'peaks_TD data';

% Create grid where function will be computed
XLim = get(gca,'XLim');
XLim = XLim + [-1 1] * 0.01 * diff(XLim);
XGrid = linspace(XLim(1),XLim(2),100);

XLim = get(gca,'XLim');
XLim = XLim + [-1 1] * 0.01 * diff(XLim);
XGrid = linspace(XLim(1),XLim(2),100);

pd2 = fitdist(peaks_TD', 'gamma');
YPlot = pdf(pd2,XGrid);
hLine = plot(XGrid,YPlot,'Color',[0 0 0],'LineStyle','-', 'LineWidth',2);
LegHandles(end+1) = hLine;
LegText{end+1} = 'Gamma';axis square; box on; 
axis tight;
title('\Gamma MMS LS TD');
print -dtiff Hist_Gamma_MMS_LS_TD;

%%
peaks_ASD=[]; locs_ASD=[];
[peaks_ASD,locs_ASD]=findpeaks(ls_ASD(50).MicroMov);
figure; hold on;
set(gca, 'FontSize', 20)

LegHandles = []; LegText = {};
% --- Plot data originally in dataset "peaks_TD data"
[CdfF,CdfX] = ecdf(peaks_ASD,'Function','cdf');  % compute empirical cdf
BinInfo.rule = 1;
[~,BinEdge] = internal.stats.histbins(peaks_ASD,[],[],BinInfo,CdfF,CdfX);
[BinHeight,BinCenter] = ecdfhist(CdfF,CdfX,'edges',BinEdge);
hLine = bar(BinCenter,BinHeight,'hist');
set(hLine,'FaceColor','b','EdgeColor','k',...
    'LineStyle','-', 'LineWidth',1);
xlabel('Standard MMS Amplitude');
ylabel('Density')
LegHandles(end+1) = hLine;
LegText{end+1} = 'peaks_ASD data';

% Create grid where function will be computed
XLim = get(gca,'XLim');
XLim = XLim + [-1 1] * 0.01 * diff(XLim);
XGrid = linspace(XLim(1),XLim(2),100);

XLim = get(gca,'XLim');
XLim = XLim + [-1 1] * 0.01 * diff(XLim);
XGrid = linspace(XLim(1),XLim(2),100);

pd2 = fitdist(peaks_ASD', 'Gamma');
YPlot = pdf(pd2,XGrid);
hLine = plot(XGrid,YPlot,'Color',[0 0 0],'LineStyle','-', 'LineWidth',2);
LegHandles(end+1) = hLine;
LegText{end+1} = 'Gamma';axis square; box on; 
axis tight;
title('\Gamma MMS LS ASD');
print -dtiff Hist_Gamma_MMS_LS_ASD;

%% Gamma plane
load('rec_ls1_ASD.mat')
load('rec_ls1_TD.mat')
figure; hold on;
set(gca, 'FontSize', 20);
plot(rec_ls1_TD(98).phat(1), rec_ls1_TD(98).phat(2),   'v','MarkerSize',10,'MarkerFace','r','MarkerEdge','r')
plot(rec_ls1_ASD(50).phat(1), rec_ls1_ASD(50).phat(2), 'v','MarkerSize',10,'MarkerFace','b','MarkerEdge','b')
axis square; 
xlabel('Shape'); ylabel('Scale')
title('\Gamma Plane');

%% Gamma Moments
ls1=rec_ls1_TD;
ls2=rec_ls1_ASD;
figure; hold on;
set(gca, 'FontSize', 20)
plot3(ls1(98).mean, ls1(98).var, ls1(98).sk, shapes{1},'MarkerSize',5*ls1(98).kt, 'MarkerFace', 'r', 'MarkerEdge', 'r');
plot3(ls2(50).mean, ls2(50).var, ls2(50).sk, shapes{1},'MarkerSize',5*ls2(50).kt, 'MarkerFace', 'b', 'MarkerEdge', 'b');
view(-60,-18);
box on;
xlabel('\Gamma \mu');
ylabel('\Gamma \sigma');
zlabel('\Gamma Skewness');
legend('TD', 'ASD')
title('\Gamma MMS LS 5-10 years old')
