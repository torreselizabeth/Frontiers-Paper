
%'C:\Users\admin\Documents\0 Carla Paper Age\Carla Paper Revision\New_group_25n_100g\MM\Comparisons'
%Cohen's d = (M2-M1)/SD_pooled
%SD_pooled = sqrt(SD1^2 - SD2^2)/2)

load('comparison_ASDvsTD_Range1_100g.mat')
load('comparison_ASDvsTD_Range2_100g.mat')
load('comparison_ASDvsTD_Range3_100g.mat')
load('comparison_ASDvsTD_Range4_100g.mat')
load('comparison_ASDvsTD_Range5_100g.mat')
load('comparison_ASDvsTD_Range6_100g.mat')
load('comparison_ASDvsTD_Range7_100g.mat')

%% t-test
%Glass' delta, which uses only the standard deviation of the control group, 
%is an alternative measure if each group has a different standard deviation
[h(1),pl(1),ci(:,1),stats(1)] = ttest2(comparison_ASDvsTD_Range1_100g.TD.HE_LS,comparison_ASDvsTD_Range1_100g.ASD.HE_LS) 
[h(2),pl(2),ci(:,2),stats(2)] = ttest2(comparison_ASDvsTD_Range2_100g.TD.HE_LS,comparison_ASDvsTD_Range2_100g.ASD.HE_LS) 
[h(3),pl(3),ci(:,3),stats(3)] = ttest2(comparison_ASDvsTD_Range3_100g.TD.HE_LS,comparison_ASDvsTD_Range3_100g.ASD.HE_LS) 
[h(4),pl(4),ci(:,4),stats(4)] = ttest2(comparison_ASDvsTD_Range4_100g.TD.HE_LS,comparison_ASDvsTD_Range4_100g.ASD.HE_LS) 
[h(5),pl(5),ci(:,5),stats(5)] = ttest2(comparison_ASDvsTD_Range5_100g.TD.HE_LS,comparison_ASDvsTD_Range5_100g.ASD.HE_LS) 
[h(6),pl(6),ci(:,6),stats(6)] = ttest2(comparison_ASDvsTD_Range6_100g.TD.HE_LS,comparison_ASDvsTD_Range6_100g.ASD.HE_LS) 
[h(7),pl(7),ci(:,7),stats(7)] = ttest2(comparison_ASDvsTD_Range7_100g.TD.HE_LS,comparison_ASDvsTD_Range7_100g.ASD.HE_LS) 


[h(1),pa(1),ci(:,1),stats(1)] = ttest2(comparison_ASDvsTD_Range1_100g.TD.HE_LS,comparison_ASDvsTD_Range1_100g.ASD.HE_LS) 
[h(2),pa(2),ci(:,2),stats(2)] = ttest2(comparison_ASDvsTD_Range2_100g.TD.HE_LS,comparison_ASDvsTD_Range2_100g.ASD.HE_LS) 
[h(3),pa(3),ci(:,3),stats(3)] = ttest2(comparison_ASDvsTD_Range3_100g.TD.HE_LS,comparison_ASDvsTD_Range3_100g.ASD.HE_LS) 
[h(4),pa(4),ci(:,4),stats(4)] = ttest2(comparison_ASDvsTD_Range4_100g.TD.HE_LS,comparison_ASDvsTD_Range4_100g.ASD.HE_LS) 
[h(5),pa(5),ci(:,5),stats(5)] = ttest2(comparison_ASDvsTD_Range5_100g.TD.HE_LS,comparison_ASDvsTD_Range5_100g.ASD.HE_LS) 
[h(6),pa(6),ci(:,6),stats(6)] = ttest2(comparison_ASDvsTD_Range6_100g.TD.HE_LS,comparison_ASDvsTD_Range6_100g.ASD.HE_LS) 
[h(7),pa(7),ci(:,7),stats(7)] = ttest2(comparison_ASDvsTD_Range7_100g.TD.HE_LS,comparison_ASDvsTD_Range7_100g.ASD.HE_LS) 

%% Disease Effect Glass Delta Cohen's d  Head Excursions linear speed
SD_pooled(1)=sqrt((std(comparison_ASDvsTD_Range1_100g.TD.HE_LS)^2 + std(comparison_ASDvsTD_Range1_100g.ASD.HE_LS)^2)/2);
SD_pooled(2)=sqrt((std(comparison_ASDvsTD_Range2_100g.TD.HE_LS)^2 + std(comparison_ASDvsTD_Range2_100g.ASD.HE_LS)^2)/2);
SD_pooled(3)=sqrt((std(comparison_ASDvsTD_Range3_100g.TD.HE_LS)^2 + std(comparison_ASDvsTD_Range3_100g.ASD.HE_LS)^2)/2);
SD_pooled(4)=sqrt((std(comparison_ASDvsTD_Range4_100g.TD.HE_LS)^2 + std(comparison_ASDvsTD_Range4_100g.ASD.HE_LS)^2)/2);
SD_pooled(5)=sqrt((std(comparison_ASDvsTD_Range5_100g.TD.HE_LS)^2 + std(comparison_ASDvsTD_Range5_100g.ASD.HE_LS)^2)/2);
SD_pooled(6)=sqrt((std(comparison_ASDvsTD_Range6_100g.TD.HE_LS)^2 + std(comparison_ASDvsTD_Range6_100g.ASD.HE_LS)^2)/2);
SD_pooled(7)=sqrt((std(comparison_ASDvsTD_Range7_100g.TD.HE_LS)^2 + std(comparison_ASDvsTD_Range7_100g.ASD.HE_LS)^2)/2);
           
SD_control(1)=std(comparison_ASDvsTD_Range1_100g.TD.HE_LS);
SD_control(2)=std(comparison_ASDvsTD_Range2_100g.TD.HE_LS);
SD_control(3)=std(comparison_ASDvsTD_Range3_100g.TD.HE_LS);
SD_control(4)=std(comparison_ASDvsTD_Range4_100g.TD.HE_LS);
SD_control(5)=std(comparison_ASDvsTD_Range5_100g.TD.HE_LS);
SD_control(6)=std(comparison_ASDvsTD_Range6_100g.TD.HE_LS);
SD_control(7)=std(comparison_ASDvsTD_Range7_100g.TD.HE_LS);


M1(1)=mean(comparison_ASDvsTD_Range1_100g.ASD.HE_LS);
M2(1)=mean(comparison_ASDvsTD_Range1_100g.TD.HE_LS);

M1(2)=mean(comparison_ASDvsTD_Range2_100g.ASD.HE_LS);
M2(2)=mean(comparison_ASDvsTD_Range2_100g.TD.HE_LS);

M1(3)=mean(comparison_ASDvsTD_Range3_100g.ASD.HE_LS);
M2(3)=mean(comparison_ASDvsTD_Range3_100g.TD.HE_LS);

M1(4)=mean(comparison_ASDvsTD_Range4_100g.ASD.HE_LS);
M2(4)=mean(comparison_ASDvsTD_Range4_100g.TD.HE_LS);

M1(5)=mean(comparison_ASDvsTD_Range5_100g.ASD.HE_LS);
M2(5)=mean(comparison_ASDvsTD_Range5_100g.TD.HE_LS);

M1(6)=mean(comparison_ASDvsTD_Range6_100g.ASD.HE_LS);
M2(6)=mean(comparison_ASDvsTD_Range6_100g.TD.HE_LS);

M1(7)=mean(comparison_ASDvsTD_Range7_100g.ASD.HE_LS);
M2(7)=mean(comparison_ASDvsTD_Range7_100g.TD.HE_LS);

Glass_Delta(1) = abs(M2(1)-M1(1))/SD_control(1)
Cohen_d(1) = abs(M2(1)-M1(1))/SD_pooled(1)

Glass_Delta(1) = abs(M2(1)-M1(1))/SD_control(1)
Cohen_d(1) = abs(M2(1)-M1(1))/SD_pooled(1)

Glass_Delta(2) = abs(M2(2)-M1(2))/SD_control(2)
Cohen_d(2) = abs(M2(2)-M1(2))/SD_pooled(2)

Glass_Delta(3) = abs(M2(3)-M1(3))/SD_control(3)
Cohen_d(3) = abs(M2(3)-M1(3))/SD_pooled(3)

Glass_Delta(4) = abs(M2(4)-M1(4))/SD_control(4)
Cohen_d(4) = abs(M2(4)-M1(4))/SD_pooled(4)

Glass_Delta(5) = abs(M2(5)-M1(5))/SD_control(5)
Cohen_d(5) = abs(M2(5)-M1(5))/SD_pooled(5)

Glass_Delta(6) = abs(M2(6)-M1(6))/SD_control(6)
Cohen_d(6) = abs(M2(6)-M1(6))/SD_pooled(6)

Glass_Delta(7) = abs(M2(7)-M1(7))/SD_control(7)
Cohen_d(7) = abs(M2(7)-M1(7))/SD_pooled(7)
            
            
%% Disease Effect Glass Delta Cohen's d  Head Excursions angular speed
SD_pooled(1)=sqrt((std(comparison_ASDvsTD_Range1_100g.TD.HE_AS)^2 + std(comparison_ASDvsTD_Range1_100g.ASD.HE_AS)^2)/2);
SD_pooled(2)=sqrt((std(comparison_ASDvsTD_Range2_100g.TD.HE_AS)^2 + std(comparison_ASDvsTD_Range2_100g.ASD.HE_AS)^2)/2);
SD_pooled(3)=sqrt((std(comparison_ASDvsTD_Range3_100g.TD.HE_AS)^2 + std(comparison_ASDvsTD_Range3_100g.ASD.HE_AS)^2)/2);
SD_pooled(4)=sqrt((std(comparison_ASDvsTD_Range4_100g.TD.HE_AS)^2 + std(comparison_ASDvsTD_Range4_100g.ASD.HE_AS)^2)/2);
SD_pooled(5)=sqrt((std(comparison_ASDvsTD_Range5_100g.TD.HE_AS)^2 + std(comparison_ASDvsTD_Range5_100g.ASD.HE_AS)^2)/2);
SD_pooled(6)=sqrt((std(comparison_ASDvsTD_Range6_100g.TD.HE_AS)^2 + std(comparison_ASDvsTD_Range6_100g.ASD.HE_AS)^2)/2);
SD_pooled(7)=sqrt((std(comparison_ASDvsTD_Range7_100g.TD.HE_AS)^2 + std(comparison_ASDvsTD_Range7_100g.ASD.HE_AS)^2)/2);
           
SD_control(1)=std(comparison_ASDvsTD_Range1_100g.TD.HE_AS);
SD_control(2)=std(comparison_ASDvsTD_Range2_100g.TD.HE_AS);
SD_control(3)=std(comparison_ASDvsTD_Range3_100g.TD.HE_AS);
SD_control(4)=std(comparison_ASDvsTD_Range4_100g.TD.HE_AS);
SD_control(5)=std(comparison_ASDvsTD_Range5_100g.TD.HE_AS);
SD_control(6)=std(comparison_ASDvsTD_Range6_100g.TD.HE_AS);
SD_control(7)=std(comparison_ASDvsTD_Range7_100g.TD.HE_AS);


M1(1)=mean(comparison_ASDvsTD_Range1_100g.ASD.HE_AS);
M2(1)=mean(comparison_ASDvsTD_Range1_100g.TD.HE_AS);

M1(2)=mean(comparison_ASDvsTD_Range2_100g.ASD.HE_AS);
M2(2)=mean(comparison_ASDvsTD_Range2_100g.TD.HE_AS);

M1(3)=mean(comparison_ASDvsTD_Range3_100g.ASD.HE_AS);
M2(3)=mean(comparison_ASDvsTD_Range3_100g.TD.HE_AS);

M1(4)=mean(comparison_ASDvsTD_Range4_100g.ASD.HE_AS);
M2(4)=mean(comparison_ASDvsTD_Range4_100g.TD.HE_AS);

M1(5)=mean(comparison_ASDvsTD_Range5_100g.ASD.HE_AS);
M2(5)=mean(comparison_ASDvsTD_Range5_100g.TD.HE_AS);

M1(6)=mean(comparison_ASDvsTD_Range6_100g.ASD.HE_AS);
M2(6)=mean(comparison_ASDvsTD_Range6_100g.TD.HE_AS);

M1(7)=mean(comparison_ASDvsTD_Range7_100g.ASD.HE_AS);
M2(7)=mean(comparison_ASDvsTD_Range7_100g.TD.HE_AS);

Glass_Delta(1) = abs(M2(1)-M1(1))/SD_control(1)
Cohen_d(1) = abs(M2(1)-M1(1))/SD_pooled(1)

Glass_Delta(1) = abs(M2(1)-M1(1))/SD_control(1)
Cohen_d(1) = abs(M2(1)-M1(1))/SD_pooled(1)

Glass_Delta(2) = abs(M2(2)-M1(2))/SD_control(2)
Cohen_d(2) = abs(M2(2)-M1(2))/SD_pooled(2)

Glass_Delta(3) = abs(M2(3)-M1(3))/SD_control(3)
Cohen_d(3) = abs(M2(3)-M1(3))/SD_pooled(3)

Glass_Delta(4) = abs(M2(4)-M1(4))/SD_control(4)
Cohen_d(4) = abs(M2(4)-M1(4))/SD_pooled(4)

Glass_Delta(5) = abs(M2(5)-M1(5))/SD_control(5)
Cohen_d(5) = abs(M2(5)-M1(5))/SD_pooled(5)

Glass_Delta(6) = abs(M2(6)-M1(6))/SD_control(6)
Cohen_d(6) = abs(M2(6)-M1(6))/SD_pooled(6)

Glass_Delta(7) = abs(M2(7)-M1(7))/SD_control(7)
Cohen_d(7) = abs(M2(7)-M1(7))/SD_pooled(7)
            
%% Age effects TD1 vs ASD 1-7 HE linear

SD_pooled(1,1)=sqrt((std(comparison_ASDvsTD_Range1_100g.TD.HE_LS)^2 + std(comparison_ASDvsTD_Range1_100g.ASD.HE_LS)^2)/2);
SD_pooled(1,2)=sqrt((std(comparison_ASDvsTD_Range1_100g.TD.HE_LS)^2 + std(comparison_ASDvsTD_Range2_100g.ASD.HE_LS)^2)/2);
SD_pooled(1,3)=sqrt((std(comparison_ASDvsTD_Range1_100g.TD.HE_LS)^2 + std(comparison_ASDvsTD_Range3_100g.ASD.HE_LS)^2)/2);
SD_pooled(1,4)=sqrt((std(comparison_ASDvsTD_Range1_100g.TD.HE_LS)^2 + std(comparison_ASDvsTD_Range4_100g.ASD.HE_LS)^2)/2);
SD_pooled(1,5)=sqrt((std(comparison_ASDvsTD_Range1_100g.TD.HE_LS)^2 + std(comparison_ASDvsTD_Range5_100g.ASD.HE_LS)^2)/2);
SD_pooled(1,6)=sqrt((std(comparison_ASDvsTD_Range1_100g.TD.HE_LS)^2 + std(comparison_ASDvsTD_Range6_100g.ASD.HE_LS)^2)/2);
SD_pooled(1,7)=sqrt((std(comparison_ASDvsTD_Range1_100g.TD.HE_LS)^2 + std(comparison_ASDvsTD_Range7_100g.ASD.HE_LS)^2)/2);

SD_pooled(2,1)=sqrt((std(comparison_ASDvsTD_Range2_100g.TD.HE_LS)^2 + std(comparison_ASDvsTD_Range1_100g.ASD.HE_LS)^2)/2);
SD_pooled(2,2)=sqrt((std(comparison_ASDvsTD_Range2_100g.TD.HE_LS)^2 + std(comparison_ASDvsTD_Range2_100g.ASD.HE_LS)^2)/2);
SD_pooled(2,3)=sqrt((std(comparison_ASDvsTD_Range2_100g.TD.HE_LS)^2 + std(comparison_ASDvsTD_Range3_100g.ASD.HE_LS)^2)/2);
SD_pooled(2,4)=sqrt((std(comparison_ASDvsTD_Range2_100g.TD.HE_LS)^2 + std(comparison_ASDvsTD_Range4_100g.ASD.HE_LS)^2)/2);
SD_pooled(2,5)=sqrt((std(comparison_ASDvsTD_Range2_100g.TD.HE_LS)^2 + std(comparison_ASDvsTD_Range5_100g.ASD.HE_LS)^2)/2);
SD_pooled(2,6)=sqrt((std(comparison_ASDvsTD_Range2_100g.TD.HE_LS)^2 + std(comparison_ASDvsTD_Range6_100g.ASD.HE_LS)^2)/2);
SD_pooled(2,7)=sqrt((std(comparison_ASDvsTD_Range2_100g.TD.HE_LS)^2 + std(comparison_ASDvsTD_Range7_100g.ASD.HE_LS)^2)/2);

SD_pooled(3,1)=sqrt((std(comparison_ASDvsTD_Range3_100g.TD.HE_LS)^2 + std(comparison_ASDvsTD_Range1_100g.ASD.HE_LS)^2)/2);
SD_pooled(3,2)=sqrt((std(comparison_ASDvsTD_Range3_100g.TD.HE_LS)^2 + std(comparison_ASDvsTD_Range2_100g.ASD.HE_LS)^2)/2);
SD_pooled(3,3)=sqrt((std(comparison_ASDvsTD_Range3_100g.TD.HE_LS)^2 + std(comparison_ASDvsTD_Range3_100g.ASD.HE_LS)^2)/2);
SD_pooled(3,4)=sqrt((std(comparison_ASDvsTD_Range3_100g.TD.HE_LS)^2 + std(comparison_ASDvsTD_Range4_100g.ASD.HE_LS)^2)/2);
SD_pooled(3,5)=sqrt((std(comparison_ASDvsTD_Range3_100g.TD.HE_LS)^2 + std(comparison_ASDvsTD_Range5_100g.ASD.HE_LS)^2)/2);
SD_pooled(3,6)=sqrt((std(comparison_ASDvsTD_Range3_100g.TD.HE_LS)^2 + std(comparison_ASDvsTD_Range6_100g.ASD.HE_LS)^2)/2);
SD_pooled(3,7)=sqrt((std(comparison_ASDvsTD_Range3_100g.TD.HE_LS)^2 + std(comparison_ASDvsTD_Range7_100g.ASD.HE_LS)^2)/2);

SD_pooled(4,1)=sqrt((std(comparison_ASDvsTD_Range4_100g.TD.HE_LS)^2 + std(comparison_ASDvsTD_Range1_100g.ASD.HE_LS)^2)/2);
SD_pooled(4,2)=sqrt((std(comparison_ASDvsTD_Range4_100g.TD.HE_LS)^2 + std(comparison_ASDvsTD_Range2_100g.ASD.HE_LS)^2)/2);
SD_pooled(4,3)=sqrt((std(comparison_ASDvsTD_Range4_100g.TD.HE_LS)^2 + std(comparison_ASDvsTD_Range3_100g.ASD.HE_LS)^2)/2);
SD_pooled(4,4)=sqrt((std(comparison_ASDvsTD_Range4_100g.TD.HE_LS)^2 + std(comparison_ASDvsTD_Range4_100g.ASD.HE_LS)^2)/2);
SD_pooled(4,5)=sqrt((std(comparison_ASDvsTD_Range4_100g.TD.HE_LS)^2 + std(comparison_ASDvsTD_Range5_100g.ASD.HE_LS)^2)/2);
SD_pooled(4,6)=sqrt((std(comparison_ASDvsTD_Range4_100g.TD.HE_LS)^2 + std(comparison_ASDvsTD_Range6_100g.ASD.HE_LS)^2)/2);
SD_pooled(4,7)=sqrt((std(comparison_ASDvsTD_Range4_100g.TD.HE_LS)^2 + std(comparison_ASDvsTD_Range7_100g.ASD.HE_LS)^2)/2);

SD_pooled(5,1)=sqrt((std(comparison_ASDvsTD_Range5_100g.TD.HE_LS)^2 + std(comparison_ASDvsTD_Range1_100g.ASD.HE_LS)^2)/2);
SD_pooled(5,2)=sqrt((std(comparison_ASDvsTD_Range5_100g.TD.HE_LS)^2 + std(comparison_ASDvsTD_Range2_100g.ASD.HE_LS)^2)/2);
SD_pooled(5,3)=sqrt((std(comparison_ASDvsTD_Range5_100g.TD.HE_LS)^2 + std(comparison_ASDvsTD_Range3_100g.ASD.HE_LS)^2)/2);
SD_pooled(5,4)=sqrt((std(comparison_ASDvsTD_Range5_100g.TD.HE_LS)^2 + std(comparison_ASDvsTD_Range4_100g.ASD.HE_LS)^2)/2);
SD_pooled(5,5)=sqrt((std(comparison_ASDvsTD_Range5_100g.TD.HE_LS)^2 + std(comparison_ASDvsTD_Range5_100g.ASD.HE_LS)^2)/2);
SD_pooled(5,6)=sqrt((std(comparison_ASDvsTD_Range5_100g.TD.HE_LS)^2 + std(comparison_ASDvsTD_Range6_100g.ASD.HE_LS)^2)/2);
SD_pooled(5,7)=sqrt((std(comparison_ASDvsTD_Range5_100g.TD.HE_LS)^2 + std(comparison_ASDvsTD_Range7_100g.ASD.HE_LS)^2)/2);

SD_pooled(6,1)=sqrt((std(comparison_ASDvsTD_Range6_100g.TD.HE_LS)^2 + std(comparison_ASDvsTD_Range1_100g.ASD.HE_LS)^2)/2);
SD_pooled(6,2)=sqrt((std(comparison_ASDvsTD_Range6_100g.TD.HE_LS)^2 + std(comparison_ASDvsTD_Range2_100g.ASD.HE_LS)^2)/2);
SD_pooled(6,3)=sqrt((std(comparison_ASDvsTD_Range6_100g.TD.HE_LS)^2 + std(comparison_ASDvsTD_Range3_100g.ASD.HE_LS)^2)/2);
SD_pooled(6,4)=sqrt((std(comparison_ASDvsTD_Range6_100g.TD.HE_LS)^2 + std(comparison_ASDvsTD_Range4_100g.ASD.HE_LS)^2)/2);
SD_pooled(6,5)=sqrt((std(comparison_ASDvsTD_Range6_100g.TD.HE_LS)^2 + std(comparison_ASDvsTD_Range5_100g.ASD.HE_LS)^2)/2);
SD_pooled(6,6)=sqrt((std(comparison_ASDvsTD_Range6_100g.TD.HE_LS)^2 + std(comparison_ASDvsTD_Range6_100g.ASD.HE_LS)^2)/2);
SD_pooled(6,7)=sqrt((std(comparison_ASDvsTD_Range6_100g.TD.HE_LS)^2 + std(comparison_ASDvsTD_Range7_100g.ASD.HE_LS)^2)/2);

SD_pooled(7,1)=sqrt((std(comparison_ASDvsTD_Range7_100g.TD.HE_LS)^2 + std(comparison_ASDvsTD_Range1_100g.ASD.HE_LS)^2)/2);
SD_pooled(7,2)=sqrt((std(comparison_ASDvsTD_Range7_100g.TD.HE_LS)^2 + std(comparison_ASDvsTD_Range2_100g.ASD.HE_LS)^2)/2);
SD_pooled(7,3)=sqrt((std(comparison_ASDvsTD_Range7_100g.TD.HE_LS)^2 + std(comparison_ASDvsTD_Range3_100g.ASD.HE_LS)^2)/2);
SD_pooled(7,4)=sqrt((std(comparison_ASDvsTD_Range7_100g.TD.HE_LS)^2 + std(comparison_ASDvsTD_Range4_100g.ASD.HE_LS)^2)/2);
SD_pooled(7,5)=sqrt((std(comparison_ASDvsTD_Range7_100g.TD.HE_LS)^2 + std(comparison_ASDvsTD_Range5_100g.ASD.HE_LS)^2)/2);
SD_pooled(7,6)=sqrt((std(comparison_ASDvsTD_Range7_100g.TD.HE_LS)^2 + std(comparison_ASDvsTD_Range6_100g.ASD.HE_LS)^2)/2);
SD_pooled(7,7)=sqrt((std(comparison_ASDvsTD_Range7_100g.TD.HE_LS)^2 + std(comparison_ASDvsTD_Range7_100g.ASD.HE_LS)^2)/2);

M1(1)=mean(comparison_ASDvsTD_Range1_100g.ASD.HE_LS);
M2(1)=mean(comparison_ASDvsTD_Range1_100g.TD.HE_LS);

M1(2)=mean(comparison_ASDvsTD_Range2_100g.ASD.HE_LS);
M2(2)=mean(comparison_ASDvsTD_Range2_100g.TD.HE_LS);

M1(3)=mean(comparison_ASDvsTD_Range3_100g.ASD.HE_LS);
M2(3)=mean(comparison_ASDvsTD_Range3_100g.TD.HE_LS);

M1(4)=mean(comparison_ASDvsTD_Range4_100g.ASD.HE_LS);
M2(4)=mean(comparison_ASDvsTD_Range4_100g.TD.HE_LS);

M1(5)=mean(comparison_ASDvsTD_Range5_100g.ASD.HE_LS);
M2(5)=mean(comparison_ASDvsTD_Range5_100g.TD.HE_LS);

M1(6)=mean(comparison_ASDvsTD_Range6_100g.ASD.HE_LS);
M2(6)=mean(comparison_ASDvsTD_Range6_100g.TD.HE_LS);

M1(7)=mean(comparison_ASDvsTD_Range7_100g.ASD.HE_LS);
M2(7)=mean(comparison_ASDvsTD_Range7_100g.TD.HE_LS);

Cohen_d(1,1) = abs(M2(1)-M1(1))/SD_pooled(1,1)
Cohen_d(1,2) = abs(M2(1)-M1(2))/SD_pooled(1,2)
Cohen_d(1,3) = abs(M2(1)-M1(3))/SD_pooled(1,3)
Cohen_d(1,4) = abs(M2(1)-M1(4))/SD_pooled(1,4)
Cohen_d(1,5) = abs(M2(1)-M1(5))/SD_pooled(1,5)
Cohen_d(1,6) = abs(M2(1)-M1(6))/SD_pooled(1,6)
Cohen_d(1,7) = abs(M2(1)-M1(7))/SD_pooled(1,7)

Cohen_d(2,1) = abs(M2(2)-M1(1))/SD_pooled(2,1)
Cohen_d(2,2) = abs(M2(2)-M1(2))/SD_pooled(2,2)
Cohen_d(2,3) = abs(M2(2)-M1(3))/SD_pooled(2,3)
Cohen_d(2,4) = abs(M2(2)-M1(4))/SD_pooled(2,4)
Cohen_d(2,5) = abs(M2(2)-M1(5))/SD_pooled(2,5)
Cohen_d(2,6) = abs(M2(2)-M1(6))/SD_pooled(2,6)
Cohen_d(2,7) = abs(M2(2)-M1(7))/SD_pooled(2,7)

Cohen_d(3,1) = abs(M2(3)-M1(1))/SD_pooled(3,1)
Cohen_d(3,2) = abs(M2(3)-M1(2))/SD_pooled(3,2)
Cohen_d(3,3) = abs(M2(3)-M1(3))/SD_pooled(3,3)
Cohen_d(3,4) = abs(M2(3)-M1(4))/SD_pooled(3,4)
Cohen_d(3,5) = abs(M2(3)-M1(5))/SD_pooled(3,5)
Cohen_d(3,6) = abs(M2(3)-M1(6))/SD_pooled(3,6)
Cohen_d(3,7) = abs(M2(3)-M1(7))/SD_pooled(3,7)

Cohen_d(4,1) = abs(M2(4)-M1(1))/SD_pooled(4,1)
Cohen_d(4,2) = abs(M2(4)-M1(2))/SD_pooled(4,2)
Cohen_d(4,3) = abs(M2(4)-M1(3))/SD_pooled(4,3)
Cohen_d(4,4) = abs(M2(4)-M1(4))/SD_pooled(4,4)
Cohen_d(4,5) = abs(M2(4)-M1(5))/SD_pooled(4,5)
Cohen_d(4,6) = abs(M2(4)-M1(6))/SD_pooled(4,6)
Cohen_d(4,7) = abs(M2(4)-M1(7))/SD_pooled(4,7)

Cohen_d(5,1) = abs(M2(5)-M1(1))/SD_pooled(5,1)
Cohen_d(5,2) = abs(M2(5)-M1(2))/SD_pooled(5,2)
Cohen_d(5,3) = abs(M2(5)-M1(3))/SD_pooled(5,3)
Cohen_d(5,4) = abs(M2(5)-M1(4))/SD_pooled(5,4)
Cohen_d(5,5) = abs(M2(5)-M1(5))/SD_pooled(5,5)
Cohen_d(5,6) = abs(M2(5)-M1(6))/SD_pooled(5,6)
Cohen_d(5,7) = abs(M2(5)-M1(7))/SD_pooled(5,7)

Cohen_d(6,1) = abs(M2(6)-M1(1))/SD_pooled(6,1)
Cohen_d(6,2) = abs(M2(6)-M1(2))/SD_pooled(6,2)
Cohen_d(6,3) = abs(M2(6)-M1(3))/SD_pooled(6,3)
Cohen_d(6,4) = abs(M2(6)-M1(4))/SD_pooled(6,4)
Cohen_d(6,5) = abs(M2(6)-M1(5))/SD_pooled(6,5)
Cohen_d(6,6) = abs(M2(6)-M1(6))/SD_pooled(6,6)
Cohen_d(6,7) = abs(M2(6)-M1(7))/SD_pooled(6,7)

Cohen_d(7,1) = abs(M2(7)-M1(1))/SD_pooled(7,1)
Cohen_d(7,2) = abs(M2(7)-M1(2))/SD_pooled(7,2)
Cohen_d(7,3) = abs(M2(7)-M1(3))/SD_pooled(7,3)
Cohen_d(7,4) = abs(M2(7)-M1(4))/SD_pooled(7,4)
Cohen_d(7,5) = abs(M2(7)-M1(5))/SD_pooled(7,5)
Cohen_d(7,6) = abs(M2(7)-M1(6))/SD_pooled(7,6)
Cohen_d(7,7) = abs(M2(7)-M1(7))/SD_pooled(7,7)

figure;
imagesc(Cohen_d); colorbar; 
axis square;
xticks(1:7)
xtickangle(45);
xticklabels({'1 vs 1-7','2 vs 1-7','3 vs 1-7','4 vs 1-7','5 vs 1-7','6 vs 1-7','7 vs 1-7'})
yticklabels({'1   5-10 yo','2 11-15 yo','3 16-20 yo','4 21-26 yo','5 26-30 yo','6 31-40 yo','7 41-60 yo'})
title('Cohen d Size Effect of Age (Linear HE)')


%% Head Ex angular Age effects TD1 vs ASD 1-7 
M1(1)=mean(comparison_ASDvsTD_Range1_100g.ASD.HE_AS);
M2(1)=mean(comparison_ASDvsTD_Range1_100g.TD.HE_AS);

M1(2)=mean(comparison_ASDvsTD_Range2_100g.ASD.HE_AS);
M2(2)=mean(comparison_ASDvsTD_Range2_100g.TD.HE_AS);

M1(3)=mean(comparison_ASDvsTD_Range3_100g.ASD.HE_AS);
M2(3)=mean(comparison_ASDvsTD_Range3_100g.TD.HE_AS);

M1(4)=mean(comparison_ASDvsTD_Range4_100g.ASD.HE_AS);
M2(4)=mean(comparison_ASDvsTD_Range4_100g.TD.HE_AS);

M1(5)=mean(comparison_ASDvsTD_Range5_100g.ASD.HE_AS);
M2(5)=mean(comparison_ASDvsTD_Range5_100g.TD.HE_AS);

M1(6)=mean(comparison_ASDvsTD_Range6_100g.ASD.HE_AS);
M2(6)=mean(comparison_ASDvsTD_Range6_100g.TD.HE_AS);

M1(7)=mean(comparison_ASDvsTD_Range7_100g.ASD.HE_AS);
M2(7)=mean(comparison_ASDvsTD_Range7_100g.TD.HE_AS);

SD_pooled(1,1)=sqrt((std(comparison_ASDvsTD_Range1_100g.TD.HE_AS)^2 + std(comparison_ASDvsTD_Range1_100g.ASD.HE_AS)^2)/2);
SD_pooled(1,2)=sqrt((std(comparison_ASDvsTD_Range1_100g.TD.HE_AS)^2 + std(comparison_ASDvsTD_Range2_100g.ASD.HE_AS)^2)/2);
SD_pooled(1,3)=sqrt((std(comparison_ASDvsTD_Range1_100g.TD.HE_AS)^2 + std(comparison_ASDvsTD_Range3_100g.ASD.HE_AS)^2)/2);
SD_pooled(1,4)=sqrt((std(comparison_ASDvsTD_Range1_100g.TD.HE_AS)^2 + std(comparison_ASDvsTD_Range4_100g.ASD.HE_AS)^2)/2);
SD_pooled(1,5)=sqrt((std(comparison_ASDvsTD_Range1_100g.TD.HE_AS)^2 + std(comparison_ASDvsTD_Range5_100g.ASD.HE_AS)^2)/2);
SD_pooled(1,6)=sqrt((std(comparison_ASDvsTD_Range1_100g.TD.HE_AS)^2 + std(comparison_ASDvsTD_Range6_100g.ASD.HE_AS)^2)/2);
SD_pooled(1,7)=sqrt((std(comparison_ASDvsTD_Range1_100g.TD.HE_AS)^2 + std(comparison_ASDvsTD_Range7_100g.ASD.HE_AS)^2)/2);

SD_pooled(2,1)=sqrt((std(comparison_ASDvsTD_Range2_100g.TD.HE_AS)^2 + std(comparison_ASDvsTD_Range1_100g.ASD.HE_AS)^2)/2);
SD_pooled(2,2)=sqrt((std(comparison_ASDvsTD_Range2_100g.TD.HE_AS)^2 + std(comparison_ASDvsTD_Range2_100g.ASD.HE_AS)^2)/2);
SD_pooled(2,3)=sqrt((std(comparison_ASDvsTD_Range2_100g.TD.HE_AS)^2 + std(comparison_ASDvsTD_Range3_100g.ASD.HE_AS)^2)/2);
SD_pooled(2,4)=sqrt((std(comparison_ASDvsTD_Range2_100g.TD.HE_AS)^2 + std(comparison_ASDvsTD_Range4_100g.ASD.HE_AS)^2)/2);
SD_pooled(2,5)=sqrt((std(comparison_ASDvsTD_Range2_100g.TD.HE_AS)^2 + std(comparison_ASDvsTD_Range5_100g.ASD.HE_AS)^2)/2);
SD_pooled(2,6)=sqrt((std(comparison_ASDvsTD_Range2_100g.TD.HE_AS)^2 + std(comparison_ASDvsTD_Range6_100g.ASD.HE_AS)^2)/2);
SD_pooled(2,7)=sqrt((std(comparison_ASDvsTD_Range2_100g.TD.HE_AS)^2 + std(comparison_ASDvsTD_Range7_100g.ASD.HE_AS)^2)/2);

SD_pooled(3,1)=sqrt((std(comparison_ASDvsTD_Range3_100g.TD.HE_AS)^2 + std(comparison_ASDvsTD_Range1_100g.ASD.HE_AS)^2)/2);
SD_pooled(3,2)=sqrt((std(comparison_ASDvsTD_Range3_100g.TD.HE_AS)^2 + std(comparison_ASDvsTD_Range2_100g.ASD.HE_AS)^2)/2);
SD_pooled(3,3)=sqrt((std(comparison_ASDvsTD_Range3_100g.TD.HE_AS)^2 + std(comparison_ASDvsTD_Range3_100g.ASD.HE_AS)^2)/2);
SD_pooled(3,4)=sqrt((std(comparison_ASDvsTD_Range3_100g.TD.HE_AS)^2 + std(comparison_ASDvsTD_Range4_100g.ASD.HE_AS)^2)/2);
SD_pooled(3,5)=sqrt((std(comparison_ASDvsTD_Range3_100g.TD.HE_AS)^2 + std(comparison_ASDvsTD_Range5_100g.ASD.HE_AS)^2)/2);
SD_pooled(3,6)=sqrt((std(comparison_ASDvsTD_Range3_100g.TD.HE_AS)^2 + std(comparison_ASDvsTD_Range6_100g.ASD.HE_AS)^2)/2);
SD_pooled(3,7)=sqrt((std(comparison_ASDvsTD_Range3_100g.TD.HE_AS)^2 + std(comparison_ASDvsTD_Range7_100g.ASD.HE_AS)^2)/2);

SD_pooled(4,1)=sqrt((std(comparison_ASDvsTD_Range4_100g.TD.HE_AS)^2 + std(comparison_ASDvsTD_Range1_100g.ASD.HE_AS)^2)/2);
SD_pooled(4,2)=sqrt((std(comparison_ASDvsTD_Range4_100g.TD.HE_AS)^2 + std(comparison_ASDvsTD_Range2_100g.ASD.HE_AS)^2)/2);
SD_pooled(4,3)=sqrt((std(comparison_ASDvsTD_Range4_100g.TD.HE_AS)^2 + std(comparison_ASDvsTD_Range3_100g.ASD.HE_AS)^2)/2);
SD_pooled(4,4)=sqrt((std(comparison_ASDvsTD_Range4_100g.TD.HE_AS)^2 + std(comparison_ASDvsTD_Range4_100g.ASD.HE_AS)^2)/2);
SD_pooled(4,5)=sqrt((std(comparison_ASDvsTD_Range4_100g.TD.HE_AS)^2 + std(comparison_ASDvsTD_Range5_100g.ASD.HE_AS)^2)/2);
SD_pooled(4,6)=sqrt((std(comparison_ASDvsTD_Range4_100g.TD.HE_AS)^2 + std(comparison_ASDvsTD_Range6_100g.ASD.HE_AS)^2)/2);
SD_pooled(4,7)=sqrt((std(comparison_ASDvsTD_Range4_100g.TD.HE_AS)^2 + std(comparison_ASDvsTD_Range7_100g.ASD.HE_AS)^2)/2);

SD_pooled(5,1)=sqrt((std(comparison_ASDvsTD_Range5_100g.TD.HE_AS)^2 + std(comparison_ASDvsTD_Range1_100g.ASD.HE_AS)^2)/2);
SD_pooled(5,2)=sqrt((std(comparison_ASDvsTD_Range5_100g.TD.HE_AS)^2 + std(comparison_ASDvsTD_Range2_100g.ASD.HE_AS)^2)/2);
SD_pooled(5,3)=sqrt((std(comparison_ASDvsTD_Range5_100g.TD.HE_AS)^2 + std(comparison_ASDvsTD_Range3_100g.ASD.HE_AS)^2)/2);
SD_pooled(5,4)=sqrt((std(comparison_ASDvsTD_Range5_100g.TD.HE_AS)^2 + std(comparison_ASDvsTD_Range4_100g.ASD.HE_AS)^2)/2);
SD_pooled(5,5)=sqrt((std(comparison_ASDvsTD_Range5_100g.TD.HE_AS)^2 + std(comparison_ASDvsTD_Range5_100g.ASD.HE_AS)^2)/2);
SD_pooled(5,6)=sqrt((std(comparison_ASDvsTD_Range5_100g.TD.HE_AS)^2 + std(comparison_ASDvsTD_Range6_100g.ASD.HE_AS)^2)/2);
SD_pooled(5,7)=sqrt((std(comparison_ASDvsTD_Range5_100g.TD.HE_AS)^2 + std(comparison_ASDvsTD_Range7_100g.ASD.HE_AS)^2)/2);

SD_pooled(6,1)=sqrt((std(comparison_ASDvsTD_Range6_100g.TD.HE_AS)^2 + std(comparison_ASDvsTD_Range1_100g.ASD.HE_AS)^2)/2);
SD_pooled(6,2)=sqrt((std(comparison_ASDvsTD_Range6_100g.TD.HE_AS)^2 + std(comparison_ASDvsTD_Range2_100g.ASD.HE_AS)^2)/2);
SD_pooled(6,3)=sqrt((std(comparison_ASDvsTD_Range6_100g.TD.HE_AS)^2 + std(comparison_ASDvsTD_Range3_100g.ASD.HE_AS)^2)/2);
SD_pooled(6,4)=sqrt((std(comparison_ASDvsTD_Range6_100g.TD.HE_AS)^2 + std(comparison_ASDvsTD_Range4_100g.ASD.HE_AS)^2)/2);
SD_pooled(6,5)=sqrt((std(comparison_ASDvsTD_Range6_100g.TD.HE_AS)^2 + std(comparison_ASDvsTD_Range5_100g.ASD.HE_AS)^2)/2);
SD_pooled(6,6)=sqrt((std(comparison_ASDvsTD_Range6_100g.TD.HE_AS)^2 + std(comparison_ASDvsTD_Range6_100g.ASD.HE_AS)^2)/2);
SD_pooled(6,7)=sqrt((std(comparison_ASDvsTD_Range6_100g.TD.HE_AS)^2 + std(comparison_ASDvsTD_Range7_100g.ASD.HE_AS)^2)/2);

SD_pooled(7,1)=sqrt((std(comparison_ASDvsTD_Range7_100g.TD.HE_AS)^2 + std(comparison_ASDvsTD_Range1_100g.ASD.HE_AS)^2)/2);
SD_pooled(7,2)=sqrt((std(comparison_ASDvsTD_Range7_100g.TD.HE_AS)^2 + std(comparison_ASDvsTD_Range2_100g.ASD.HE_AS)^2)/2);
SD_pooled(7,3)=sqrt((std(comparison_ASDvsTD_Range7_100g.TD.HE_AS)^2 + std(comparison_ASDvsTD_Range3_100g.ASD.HE_AS)^2)/2);
SD_pooled(7,4)=sqrt((std(comparison_ASDvsTD_Range7_100g.TD.HE_AS)^2 + std(comparison_ASDvsTD_Range4_100g.ASD.HE_AS)^2)/2);
SD_pooled(7,5)=sqrt((std(comparison_ASDvsTD_Range7_100g.TD.HE_AS)^2 + std(comparison_ASDvsTD_Range5_100g.ASD.HE_AS)^2)/2);
SD_pooled(7,6)=sqrt((std(comparison_ASDvsTD_Range7_100g.TD.HE_AS)^2 + std(comparison_ASDvsTD_Range6_100g.ASD.HE_AS)^2)/2);
SD_pooled(7,7)=sqrt((std(comparison_ASDvsTD_Range7_100g.TD.HE_AS)^2 + std(comparison_ASDvsTD_Range7_100g.ASD.HE_AS)^2)/2);


Cohen_d(1,1) = abs(M2(1)-M1(1))/SD_pooled(1,1)
Cohen_d(1,2) = abs(M2(1)-M1(2))/SD_pooled(1,2)
Cohen_d(1,3) = abs(M2(1)-M1(3))/SD_pooled(1,3)
Cohen_d(1,4) = abs(M2(1)-M1(4))/SD_pooled(1,4)
Cohen_d(1,5) = abs(M2(1)-M1(5))/SD_pooled(1,5)
Cohen_d(1,6) = abs(M2(1)-M1(6))/SD_pooled(1,6)
Cohen_d(1,7) = abs(M2(1)-M1(7))/SD_pooled(1,7)

Cohen_d(2,1) = abs(M2(2)-M1(1))/SD_pooled(2,1)
Cohen_d(2,2) = abs(M2(2)-M1(2))/SD_pooled(2,2)
Cohen_d(2,3) = abs(M2(2)-M1(3))/SD_pooled(2,3)
Cohen_d(2,4) = abs(M2(2)-M1(4))/SD_pooled(2,4)
Cohen_d(2,5) = abs(M2(2)-M1(5))/SD_pooled(2,5)
Cohen_d(2,6) = abs(M2(2)-M1(6))/SD_pooled(2,6)
Cohen_d(2,7) = abs(M2(2)-M1(7))/SD_pooled(2,7)

Cohen_d(3,1) = abs(M2(3)-M1(1))/SD_pooled(3,1)
Cohen_d(3,2) = abs(M2(3)-M1(2))/SD_pooled(3,2)
Cohen_d(3,3) = abs(M2(3)-M1(3))/SD_pooled(3,3)
Cohen_d(3,4) = abs(M2(3)-M1(4))/SD_pooled(3,4)
Cohen_d(3,5) = abs(M2(3)-M1(5))/SD_pooled(3,5)
Cohen_d(3,6) = abs(M2(3)-M1(6))/SD_pooled(3,6)
Cohen_d(3,7) = abs(M2(3)-M1(7))/SD_pooled(3,7)

Cohen_d(4,1) = abs(M2(4)-M1(1))/SD_pooled(4,1)
Cohen_d(4,2) = abs(M2(4)-M1(2))/SD_pooled(4,2)
Cohen_d(4,3) = abs(M2(4)-M1(3))/SD_pooled(4,3)
Cohen_d(4,4) = abs(M2(4)-M1(4))/SD_pooled(4,4)
Cohen_d(4,5) = abs(M2(4)-M1(5))/SD_pooled(4,5)
Cohen_d(4,6) = abs(M2(4)-M1(6))/SD_pooled(4,6)
Cohen_d(4,7) = abs(M2(4)-M1(7))/SD_pooled(4,7)

Cohen_d(5,1) = abs(M2(5)-M1(1))/SD_pooled(5,1)
Cohen_d(5,2) = abs(M2(5)-M1(2))/SD_pooled(5,2)
Cohen_d(5,3) = abs(M2(5)-M1(3))/SD_pooled(5,3)
Cohen_d(5,4) = abs(M2(5)-M1(4))/SD_pooled(5,4)
Cohen_d(5,5) = abs(M2(5)-M1(5))/SD_pooled(5,5)
Cohen_d(5,6) = abs(M2(5)-M1(6))/SD_pooled(5,6)
Cohen_d(5,7) = abs(M2(5)-M1(7))/SD_pooled(5,7)

Cohen_d(6,1) = abs(M2(6)-M1(1))/SD_pooled(6,1)
Cohen_d(6,2) = abs(M2(6)-M1(2))/SD_pooled(6,2)
Cohen_d(6,3) = abs(M2(6)-M1(3))/SD_pooled(6,3)
Cohen_d(6,4) = abs(M2(6)-M1(4))/SD_pooled(6,4)
Cohen_d(6,5) = abs(M2(6)-M1(5))/SD_pooled(6,5)
Cohen_d(6,6) = abs(M2(6)-M1(6))/SD_pooled(6,6)
Cohen_d(6,7) = abs(M2(6)-M1(7))/SD_pooled(6,7)

Cohen_d(7,1) = abs(M2(7)-M1(1))/SD_pooled(7,1)
Cohen_d(7,2) = abs(M2(7)-M1(2))/SD_pooled(7,2)
Cohen_d(7,3) = abs(M2(7)-M1(3))/SD_pooled(7,3)
Cohen_d(7,4) = abs(M2(7)-M1(4))/SD_pooled(7,4)
Cohen_d(7,5) = abs(M2(7)-M1(5))/SD_pooled(7,5)
Cohen_d(7,6) = abs(M2(7)-M1(6))/SD_pooled(7,6)
Cohen_d(7,7) = abs(M2(7)-M1(7))/SD_pooled(7,7)

figure;
imagesc(Cohen_d); colorbar; 
axis square;
xticks(1:7)
xtickangle(45);
xticklabels({'1 vs 1-7','2 vs 1-7','3 vs 1-7','4 vs 1-7','5 vs 1-7','6 vs 1-7','7 vs 1-7'})
yticklabels({'1   5-10 yo','2 11-15 yo','3 16-20 yo','4 21-26 yo','5 26-30 yo','6 31-40 yo','7 41-60 yo'})
title('Cohen d Size Effect of Age (Angular HE)')

%% For Glass delta  Linear Speed
M1(1)=mean(comparison_ASDvsTD_Range1_100g.ASD.HE_LS);
M2(1)=mean(comparison_ASDvsTD_Range1_100g.TD.HE_LS);

M1(2)=mean(comparison_ASDvsTD_Range2_100g.ASD.HE_LS);
M2(2)=mean(comparison_ASDvsTD_Range2_100g.TD.HE_LS);

M1(3)=mean(comparison_ASDvsTD_Range3_100g.ASD.HE_LS);
M2(3)=mean(comparison_ASDvsTD_Range3_100g.TD.HE_LS);

M1(4)=mean(comparison_ASDvsTD_Range4_100g.ASD.HE_LS);
M2(4)=mean(comparison_ASDvsTD_Range4_100g.TD.HE_LS);

M1(5)=mean(comparison_ASDvsTD_Range5_100g.ASD.HE_LS);
M2(5)=mean(comparison_ASDvsTD_Range5_100g.TD.HE_LS);

M1(6)=mean(comparison_ASDvsTD_Range6_100g.ASD.HE_LS);
M2(6)=mean(comparison_ASDvsTD_Range6_100g.TD.HE_LS);

M1(7)=mean(comparison_ASDvsTD_Range7_100g.ASD.HE_LS);
M2(7)=mean(comparison_ASDvsTD_Range7_100g.TD.HE_LS);


SD_control(1)=std(comparison_ASDvsTD_Range1_100g.TD.HE_LS);
SD_control(2)=std(comparison_ASDvsTD_Range2_100g.TD.HE_LS);
SD_control(3)=std(comparison_ASDvsTD_Range3_100g.TD.HE_LS);
SD_control(4)=std(comparison_ASDvsTD_Range4_100g.TD.HE_LS);
SD_control(5)=std(comparison_ASDvsTD_Range5_100g.TD.HE_LS);
SD_control(6)=std(comparison_ASDvsTD_Range6_100g.TD.HE_LS);
SD_control(7)=std(comparison_ASDvsTD_Range7_100g.TD.HE_LS);


Glass_Delta(1,1) = abs(M2(1)-M1(1))/SD_control(1)
Glass_Delta(1,2) = abs(M2(1)-M1(2))/SD_control(1)
Glass_Delta(1,3) = abs(M2(1)-M1(3))/SD_control(1)
Glass_Delta(1,4) = abs(M2(1)-M1(4))/SD_control(1)
Glass_Delta(1,5) = abs(M2(1)-M1(5))/SD_control(1)
Glass_Delta(1,6) = abs(M2(1)-M1(6))/SD_control(1)
Glass_Delta(1,7) = abs(M2(1)-M1(7))/SD_control(1)

Glass_Delta(2,1) = abs(M2(2)-M1(1))/SD_control(2)
Glass_Delta(2,2) = abs(M2(2)-M1(2))/SD_control(2)
Glass_Delta(2,3) = abs(M2(2)-M1(3))/SD_control(2)
Glass_Delta(2,4) = abs(M2(2)-M1(4))/SD_control(2)
Glass_Delta(2,5) = abs(M2(2)-M1(5))/SD_control(2)
Glass_Delta(2,6) = abs(M2(2)-M1(6))/SD_control(2)
Glass_Delta(2,7) = abs(M2(2)-M1(7))/SD_control(2)

Glass_Delta(3,1) = abs(M2(3)-M1(1))/SD_control(3)
Glass_Delta(3,2) = abs(M2(3)-M1(2))/SD_control(3)
Glass_Delta(3,3) = abs(M2(3)-M1(3))/SD_control(3)
Glass_Delta(3,4) = abs(M2(3)-M1(4))/SD_control(3)
Glass_Delta(3,5) = abs(M2(3)-M1(5))/SD_control(3)
Glass_Delta(3,6) = abs(M2(3)-M1(6))/SD_control(3)
Glass_Delta(3,7) = abs(M2(3)-M1(7))/SD_control(3)

Glass_Delta(4,1) = abs(M2(4)-M1(1))/SD_control(4)
Glass_Delta(4,2) = abs(M2(4)-M1(2))/SD_control(4)
Glass_Delta(4,3) = abs(M2(4)-M1(3))/SD_control(4)
Glass_Delta(4,4) = abs(M2(4)-M1(4))/SD_control(4)
Glass_Delta(4,5) = abs(M2(4)-M1(5))/SD_control(4)
Glass_Delta(4,6) = abs(M2(4)-M1(6))/SD_control(4)
Glass_Delta(4,7) = abs(M2(4)-M1(7))/SD_control(3)

Glass_Delta(5,1) = abs(M2(5)-M1(1))/SD_control(5)
Glass_Delta(5,2) = abs(M2(5)-M1(2))/SD_control(5)
Glass_Delta(5,3) = abs(M2(5)-M1(3))/SD_control(5)
Glass_Delta(5,4) = abs(M2(5)-M1(4))/SD_control(5)
Glass_Delta(5,5) = abs(M2(5)-M1(5))/SD_control(5)
Glass_Delta(5,6) = abs(M2(5)-M1(6))/SD_control(5)
Glass_Delta(5,7) = abs(M2(5)-M1(7))/SD_control(5)

Glass_Delta(6,1) = abs(M2(6)-M1(1))/SD_control(6)
Glass_Delta(6,2) = abs(M2(6)-M1(2))/SD_control(6)
Glass_Delta(6,3) = abs(M2(6)-M1(3))/SD_control(6)
Glass_Delta(6,4) = abs(M2(6)-M1(4))/SD_control(6)
Glass_Delta(6,5) = abs(M2(6)-M1(5))/SD_control(6)
Glass_Delta(6,6) = abs(M2(6)-M1(6))/SD_control(6)
Glass_Delta(6,7) = abs(M2(6)-M1(7))/SD_control(6)

Glass_Delta(7,1) = abs(M2(7)-M1(1))/SD_control(7)
Glass_Delta(7,2) = abs(M2(7)-M1(2))/SD_control(7)
Glass_Delta(7,3) = abs(M2(7)-M1(3))/SD_control(7)
Glass_Delta(7,4) = abs(M2(7)-M1(4))/SD_control(7)
Glass_Delta(7,5) = abs(M2(7)-M1(5))/SD_control(7)
Glass_Delta(7,6) = abs(M2(7)-M1(6))/SD_control(7)
Glass_Delta(7,7) = abs(M2(7)-M1(7))/SD_control(7)

figure;
imagesc(Glass_Delta); colorbar; 
axis square;
xticks(1:7)
xtickangle(45);
xticklabels({'1 vs 1-7','2 vs 1-7','3 vs 1-7','4 vs 1-7','5 vs 1-7','6 vs 1-7','7 vs 1-7'})
yticklabels({'1   5-10 yo','2 11-15 yo','3 16-20 yo','4 21-26 yo','5 26-30 yo','6 31-40 yo','7 41-60 yo'})
title('Glass \Delta Size Effect of Age (LINEAR HE)')



%% For Glass delta  Angular Speed
M1(1)=mean(comparison_ASDvsTD_Range1_100g.ASD.HE_AS);
M2(1)=mean(comparison_ASDvsTD_Range1_100g.TD.HE_AS);

M1(2)=mean(comparison_ASDvsTD_Range2_100g.ASD.HE_AS);
M2(2)=mean(comparison_ASDvsTD_Range2_100g.TD.HE_AS);

M1(3)=mean(comparison_ASDvsTD_Range3_100g.ASD.HE_AS);
M2(3)=mean(comparison_ASDvsTD_Range3_100g.TD.HE_AS);

M1(4)=mean(comparison_ASDvsTD_Range4_100g.ASD.HE_AS);
M2(4)=mean(comparison_ASDvsTD_Range4_100g.TD.HE_AS);

M1(5)=mean(comparison_ASDvsTD_Range5_100g.ASD.HE_AS);
M2(5)=mean(comparison_ASDvsTD_Range5_100g.TD.HE_AS);

M1(6)=mean(comparison_ASDvsTD_Range6_100g.ASD.HE_AS);
M2(6)=mean(comparison_ASDvsTD_Range6_100g.TD.HE_AS);

M1(7)=mean(comparison_ASDvsTD_Range7_100g.ASD.HE_AS);
M2(7)=mean(comparison_ASDvsTD_Range7_100g.TD.HE_AS);



SD_control(1)=std(comparison_ASDvsTD_Range1_100g.TD.HE_AS);
SD_control(2)=std(comparison_ASDvsTD_Range2_100g.TD.HE_AS);
SD_control(3)=std(comparison_ASDvsTD_Range3_100g.TD.HE_AS);
SD_control(4)=std(comparison_ASDvsTD_Range4_100g.TD.HE_AS);
SD_control(5)=std(comparison_ASDvsTD_Range5_100g.TD.HE_AS);
SD_control(6)=std(comparison_ASDvsTD_Range6_100g.TD.HE_AS);
SD_control(7)=std(comparison_ASDvsTD_Range7_100g.TD.HE_AS);


Glass_Delta(1,1) = abs(M2(1)-M1(1))/SD_control(1)
Glass_Delta(1,2) = abs(M2(1)-M1(2))/SD_control(1)
Glass_Delta(1,3) = abs(M2(1)-M1(3))/SD_control(1)
Glass_Delta(1,4) = abs(M2(1)-M1(4))/SD_control(1)
Glass_Delta(1,5) = abs(M2(1)-M1(5))/SD_control(1)
Glass_Delta(1,6) = abs(M2(1)-M1(6))/SD_control(1)
Glass_Delta(1,7) = abs(M2(1)-M1(7))/SD_control(1)

Glass_Delta(2,1) = abs(M2(2)-M1(1))/SD_control(2)
Glass_Delta(2,2) = abs(M2(2)-M1(2))/SD_control(2)
Glass_Delta(2,3) = abs(M2(2)-M1(3))/SD_control(2)
Glass_Delta(2,4) = abs(M2(2)-M1(4))/SD_control(2)
Glass_Delta(2,5) = abs(M2(2)-M1(5))/SD_control(2)
Glass_Delta(2,6) = abs(M2(2)-M1(6))/SD_control(2)
Glass_Delta(2,7) = abs(M2(2)-M1(7))/SD_control(2)

Glass_Delta(3,1) = abs(M2(3)-M1(1))/SD_control(3)
Glass_Delta(3,2) = abs(M2(3)-M1(2))/SD_control(3)
Glass_Delta(3,3) = abs(M2(3)-M1(3))/SD_control(3)
Glass_Delta(3,4) = abs(M2(3)-M1(4))/SD_control(3)
Glass_Delta(3,5) = abs(M2(3)-M1(5))/SD_control(3)
Glass_Delta(3,6) = abs(M2(3)-M1(6))/SD_control(3)
Glass_Delta(3,7) = abs(M2(3)-M1(7))/SD_control(3)

Glass_Delta(4,1) = abs(M2(4)-M1(1))/SD_control(4)
Glass_Delta(4,2) = abs(M2(4)-M1(2))/SD_control(4)
Glass_Delta(4,3) = abs(M2(4)-M1(3))/SD_control(4)
Glass_Delta(4,4) = abs(M2(4)-M1(4))/SD_control(4)
Glass_Delta(4,5) = abs(M2(4)-M1(5))/SD_control(4)
Glass_Delta(4,6) = abs(M2(4)-M1(6))/SD_control(4)
Glass_Delta(4,7) = abs(M2(4)-M1(7))/SD_control(3)

Glass_Delta(5,1) = abs(M2(5)-M1(1))/SD_control(5)
Glass_Delta(5,2) = abs(M2(5)-M1(2))/SD_control(5)
Glass_Delta(5,3) = abs(M2(5)-M1(3))/SD_control(5)
Glass_Delta(5,4) = abs(M2(5)-M1(4))/SD_control(5)
Glass_Delta(5,5) = abs(M2(5)-M1(5))/SD_control(5)
Glass_Delta(5,6) = abs(M2(5)-M1(6))/SD_control(5)
Glass_Delta(5,7) = abs(M2(5)-M1(7))/SD_control(5)

Glass_Delta(6,1) = abs(M2(6)-M1(1))/SD_control(6)
Glass_Delta(6,2) = abs(M2(6)-M1(2))/SD_control(6)
Glass_Delta(6,3) = abs(M2(6)-M1(3))/SD_control(6)
Glass_Delta(6,4) = abs(M2(6)-M1(4))/SD_control(6)
Glass_Delta(6,5) = abs(M2(6)-M1(5))/SD_control(6)
Glass_Delta(6,6) = abs(M2(6)-M1(6))/SD_control(6)
Glass_Delta(6,7) = abs(M2(6)-M1(7))/SD_control(6)

Glass_Delta(7,1) = abs(M2(7)-M1(1))/SD_control(7)
Glass_Delta(7,2) = abs(M2(7)-M1(2))/SD_control(7)
Glass_Delta(7,3) = abs(M2(7)-M1(3))/SD_control(7)
Glass_Delta(7,4) = abs(M2(7)-M1(4))/SD_control(7)
Glass_Delta(7,5) = abs(M2(7)-M1(5))/SD_control(7)
Glass_Delta(7,6) = abs(M2(7)-M1(6))/SD_control(7)
Glass_Delta(7,7) = abs(M2(7)-M1(7))/SD_control(7)

figure;
imagesc(Glass_Delta); colorbar; 
axis square;
xticks(1:7)
xtickangle(45);
xticklabels({'1 vs 1-7','2 vs 1-7','3 vs 1-7','4 vs 1-7','5 vs 1-7','6 vs 1-7','7 vs 1-7'})
yticklabels({'1   5-10 yo','2 11-15 yo','3 16-20 yo','4 21-26 yo','5 26-30 yo','6 31-40 yo','7 41-60 yo'})
title('Glass \Delta Size Effect of Age (ANGULAR HE)')


