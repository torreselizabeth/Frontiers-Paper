%load the summary data and plot per group
clear all;
shapes={'v','s','p','o','h','d','^'};
ages={'5-10','11-15','16-20','21-25','26-30','31-40','41-65'};
TD_files=dir('*record_noRep*ls*TD*');
ASD_files=dir('*record_noRep*ls*ASD*');
Gfig=figure; hold on; set(gca,'FontSize',20);
pdf_fig=figure; hold on; set(gca,'FontSize',20);
moments_fig=figure; hold on; set(gca,'FontSize',20);
for i=1:size(TD_files,1)
    load(TD_files(i).name);
    fullname=TD_files(i).name(1:end-4);
    ls=eval(fullname);
    
    name=TD_files(i).name(8:13);
    figure(Gfig);
    subplot(2,4,i); hold on;
    plot_EbarsNew(ls.phat, ls.ci,shapes{i},'r');
%     plot(ls.phat(1), ls.phat(2),shapes{i},'MarkerSize',6, 'MarkerFace','r', 'MarkerEdge','r');
    axis square; box on;
    xlabel('Shape'); ylabel('Scale');
    title(ages{i});

    figure(pdf_fig);
    subplot(2,4,i); hold on;
    plot(ls.gampdf_X, ls.gampdf_Y,'r');
    axis square; box on;
    xlabel('MMS Linear Speed'); ylabel('PDF')
    axis([0.33  0.85 0 7.5 ]);
    
    figure(moments_fig);
    plot3(ls.mean, ls.var, ls.sk, shapes{i}, 'MarkerFace', 'r', 'MarkerEdge', 'r');
end
for i=1:size(ASD_files,1)
    load(ASD_files(i).name);
    fullname=ASD_files(i).name(1:end-4);
    ls=eval(fullname);
    
    name=ASD_files(i).name(8:13);
    figure(Gfig);
    subplot(2,4,i); hold on;
%     plot(ls.phat(1), ls.phat(2),shapes{i},'MarkerSize',6, 'MarkerFace','b', 'MarkerEdge','b');
    plot_EbarsNew(ls.phat, ls.ci,shapes{i},'b');
    axis square; box on;
    xlabel('Shape'); ylabel('Scale');
    title(ages{i});
    
    figure(pdf_fig);
    subplot(2,4,i); hold on;
    plot(ls.gampdf_X, ls.gampdf_Y,'b');
    axis square; box on;
    xlabel('MMS Linear Speed'); ylabel('PDF')
    axis([0.33  0.85 0 7.5 ]);
    title(ages{i});
    
    figure(moments_fig);
    plot3(ls.mean, ls.var, ls.sk, shapes{i}, 'MarkerFace', 'b', 'MarkerEdge', 'b');
    view(130,16);
end
figure(moments_fig);
xlabel('\Gamma mu'); ylabel('\Gamma sigma'); zlabel('\Gamma Skewness')
print -dtiff Gamma_Moments_Summary_NoRep;

figure(Gfig);
print -dtiff Gamma_Plane_NoRep;

figure(pdf_fig);
print -dtiff Gamma_PDF;


