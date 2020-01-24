%load the summary data and plot per group
clear all;
shapes={'v','s','p','o','h','d','^'};
ages={'5-10','11-15','16-20','21-25','26-30','31-40','41-60'};
TD_files=dir('*record*ls*TD*');
ASD_files=dir('*record*ls*ASD*');
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
print -dtiff Gamma_Moments_Summary_Rep;

figure(Gfig);
print -dtiff Gamma_Plane_Rep;

figure(pdf_fig);
print -dtiff Gamma_PDF_Rep;


% %% Plot MM spikes
% ls_TD=record_ls6_TD;
% ls_ASD=record_ls6_ASD;
% figure; hold on;
% plot(ls_TD.time_series);
% [peaks_TD,locs_TD]=findpeaks(ls_TD.time_series);
% plot(locs_TD, peaks_TD, 'r.');
% axis square; box on; axis([0 5*10^5 0 0.25]);
% title('Raw Linear Speed TD');
% 
% print -dtiff raw_lin_speed_TD;
% 
% figure; hold on;
% plot(ls_ASD.time_series);
% [peaks_ASD,locs_ASD]=findpeaks(ls_ASD.time_series);
% plot(locs_ASD, peaks_ASD, 'b.');
% axis square; box on; axis([0 5.*10^5 0 0.25]);
% title('Raw Linear Speed ASD');
% 
% print -dtiff raw_lin_speed_ASD;
% 
% %% MM deviations
% figure; hold on;
% plot(ls_TD.Norm_mean_shifted);
% peaks_TD=[]; locs_TD=[];
% [peaks_TD,locs_TD]=findpeaks(ls_TD.Norm_mean_shifted);
% plot(locs_TD, peaks_TD, 'r.');
% axis square; box on; 
% axis([0 5*10^5 0 1]);
% title('Norm \Gamma Mean Shifted LS TD');
% print -dtiff Norm_Gamma_LS_TD;
% 
% figure; hold on;
% plot(ls_ASD.Norm_mean_shifted);
% peaks_ASD=[]; locs_ASD=[];
% [peaks_ASD,locs_ASD]=findpeaks(ls_ASD.Norm_mean_shifted);
% plot(locs_ASD, peaks_ASD, 'b.');
% axis square; box on; 
% axis([0 5.*10^5 0 1]);
% title('Norm \Gamma Mean Shifted LS ASD');
% print -dtiff Norm_Gamma_LS_ASD;
% 
% %% MM spikes
% figure; hold on;
% plot(ls_TD.MicroMov);
% peaks_TD=[]; locs_TD=[];
% [peaks_TD,locs_TD]=findpeaks(ls_TD.MicroMov);
% plot(locs_TD, peaks_TD, 'r.');
% axis square; box on; 
% axis tight;
% title('\Gamma MMS LS TD');
% print -dtiff Gamma_MMS_LS_TD;
% 
% figure; hold on;
% plot(ls_ASD.MicroMov);
% peaks_ASD=[]; locs_ASD=[];
% [peaks_ASD,locs_ASD]=findpeaks(ls_ASD.MicroMov);
% plot(locs_ASD, peaks_ASD, 'b.');
% axis square; box on; 
% axis tight;
% title('\Gamma MMS LS ASD');
% print -dtiff Gamma_MMS_LS_ASD;
% 
% %% Frequency histograms
% figure; hold on;
% peaks_TD=[]; locs_TD=[];
% [peaks_TD,locs_TD]=findpeaks(ls_TD.Norm_mean_shifted);
% histogram(peaks_TD);
% axis square; box on; 
% axis tight;
% title('\Gamma MMS LS TD');
% print -dtiff Hist_Gamma_MMS_LS_TD;
% 
% figure; hold on;
% peaks_ASD=[]; locs_ASD=[];
% [peaks_ASD,locs_ASD]=findpeaks(ls_ASD.Norm_mean_shifted);
% histogram(peaks_ASD);
% axis square; box on; 
% axis tight;
% title('\Gamma MMS LS ASD');
% print -dtiff Hist_Gamma_MMS_LS_ASD;
% 
