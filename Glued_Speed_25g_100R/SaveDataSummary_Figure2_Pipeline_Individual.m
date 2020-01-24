%This will save data for figures
clear all;

X=0:.01:1;
NUMFRAMES=1:2500;

%% Group 1
load('Speed_AGE1_ASD_25n_100g.mat');
%%how many frames?
framesASD1=[];
for i=1:length(ALL_groups_comparison) %100 groups
    ls1_ASD=ALL_groups_comparison{i}.LS(NUMFRAMES);
    as1_ASD=ALL_groups_comparison{i}.AS(NUMFRAMES);
    framesASD1(i)=length(ls1_ASD);
    [rec_ls1_ASD(i)] = Build_Record_Amplitude( ls1_ASD, X);
    [rec_as1_ASD(i)] = Build_Record_Amplitude( as1_ASD, X);
    
end
save rec_ls1_ASD rec_ls1_ASD;
save rec_as1_ASD rec_as1_ASD;


load('Speed_AGE1_TD_25n_100g.mat');
framesTD1=[];
ls1_TD=[]; as1_TD=[];
for i=1:length(ALL_groups_comparison) %100 groups
    ls1_TD=ALL_groups_comparison{i}.LS(NUMFRAMES);
    as1_TD=ALL_groups_comparison{i}.AS(NUMFRAMES);
    framesTD1(i)=length(ls1_TD);
    [rec_ls1_TD(i)] = Build_Record_Amplitude( ls1_TD, X);
    [rec_as1_TD(i)] = Build_Record_Amplitude( as1_TD, X);
end

save rec_ls1_TD rec_ls1_TD;
save rec_as1_TD rec_as1_TD;

%% Group 2
load('Speed_AGE2_ASD_25n_100g.mat');
%%glue speed
for i=1:length(ALL_groups_comparison) %100 groups
    ls2_ASD=ALL_groups_comparison{i}.LS(NUMFRAMES);
    as2_ASD=ALL_groups_comparison{i}.AS(NUMFRAMES);
    [rec_ls2_ASD(i)] = Build_Record_Amplitude( ls2_ASD, X);
    [rec_as2_ASD(i)] = Build_Record_Amplitude( as2_ASD, X);
end
save rec_ls2_ASD rec_ls2_ASD;
save rec_as2_ASD rec_as2_ASD;


load('Speed_AGE2_TD_25n_100g.mat');
ls2_TD=[]; as2_TD=[];
for i=1:length(ALL_groups_comparison) %100 groups
    ls2_TD= ALL_groups_comparison{i}.LS(NUMFRAMES);
    as2_TD= ALL_groups_comparison{i}.AS(NUMFRAMES);
    [rec_ls2_TD(i)] = Build_Record_Amplitude( ls2_TD, X);
    [rec_as2_TD(i)] = Build_Record_Amplitude( as2_TD, X);
end

save rec_ls2_TD rec_ls2_TD;
save rec_as2_TD rec_as2_TD;

%% Group 3
load('Speed_AGE3_ASD_25n_100g.mat');
%%glue speed
for i=1:length(ALL_groups_comparison) %100 groups
    ls3_ASD=ALL_groups_comparison{i}.LS(NUMFRAMES);
    as3_ASD=ALL_groups_comparison{i}.AS(NUMFRAMES);
    [rec_ls3_ASD(i)] = Build_Record_Amplitude( ls3_ASD, X);
    [rec_as3_ASD(i)] = Build_Record_Amplitude( as3_ASD, X);
end
save rec_ls3_ASD rec_ls3_ASD;
save rec_as3_ASD rec_as3_ASD;


load('Speed_AGE3_TD_25n_100g.mat');
ls3_TD=[]; as3_TD=[];
for i=1:length(ALL_groups_comparison) %100 groups
    ls3_TD=ALL_groups_comparison{i}.LS(NUMFRAMES);
    as3_TD=ALL_groups_comparison{i}.AS(NUMFRAMES);
    [rec_ls3_TD(i)] = Build_Record_Amplitude( ls3_TD, X);
    [rec_as3_TD(i)] = Build_Record_Amplitude( as3_TD, X);
end

save rec_ls3_TD rec_ls3_TD;
save rec_as3_TD rec_as3_TD;

%% Group 4
load('Speed_AGE4_ASD_25n_100g.mat');
%%glue speed
for i=1:length(ALL_groups_comparison) %100 groups
    ls4_ASD=ALL_groups_comparison{i}.LS(NUMFRAMES);
    as4_ASD=ALL_groups_comparison{i}.AS(NUMFRAMES);
    [rec_ls4_ASD(i)] = Build_Record_Amplitude( ls4_ASD, X);
    [rec_as4_ASD(i)] = Build_Record_Amplitude( as4_ASD, X);
end
save rec_ls4_ASD rec_ls4_ASD;
save rec_as4_ASD rec_as4_ASD;


load('Speed_AGE4_TD_25n_100g.mat');
ls4_TD=[]; as4_TD=[];
for i=1:length(ALL_groups_comparison) %100 groups
    ls4_TD=ALL_groups_comparison{i}.LS(NUMFRAMES);
    as4_TD=ALL_groups_comparison{i}.AS(NUMFRAMES);
    [rec_ls4_TD(i)] = Build_Record_Amplitude( ls4_TD, X);
    [rec_as4_TD(i)] = Build_Record_Amplitude( as4_TD, X);
end

save rec_ls4_TD rec_ls4_TD;
save rec_as4_TD rec_as4_TD;

%% Group 5
load('Speed_AGE5_ASD_25n_100g.mat');
%%glue speed
for i=1:length(ALL_groups_comparison) %100 groups
    ls5_ASD=ALL_groups_comparison{i}.LS(NUMFRAMES);
    as5_ASD=ALL_groups_comparison{i}.AS(NUMFRAMES);
    [rec_ls5_ASD(i)] = Build_Record_Amplitude( ls5_ASD, X);
    [rec_as5_ASD(i)] = Build_Record_Amplitude( as5_ASD, X);
end
save rec_ls5_ASD rec_ls5_ASD;
save rec_as5_ASD rec_as5_ASD;


load('Speed_AGE5_TD_25n_100g.mat');
ls5_TD=[]; as5_TD=[];
for i=1:length(ALL_groups_comparison) %100 groups
    ls5_TD=ALL_groups_comparison{i}.LS(NUMFRAMES);
    as5_TD=ALL_groups_comparison{i}.AS(NUMFRAMES);
    [rec_ls5_TD(i)] = Build_Record_Amplitude( ls5_TD, X);
    [rec_as5_TD(i)] = Build_Record_Amplitude( as5_TD, X);
end

save rec_ls5_TD rec_ls5_TD;
save rec_as5_TD rec_as5_TD;

%% Group 6
load('Speed_AGE6_ASD_25n_100g.mat');
%%glue speed
for i=1:length(ALL_groups_comparison) %100 groups
    ls6_ASD=ALL_groups_comparison{i}.LS(NUMFRAMES);
    as6_ASD=ALL_groups_comparison{i}.AS(NUMFRAMES);
    [rec_ls6_ASD(i)] = Build_Record_Amplitude( ls6_ASD, X);
    [rec_as6_ASD(i)] = Build_Record_Amplitude( as6_ASD, X);
end
save rec_ls6_ASD rec_ls6_ASD;
save rec_as6_ASD rec_as6_ASD;


load('Speed_AGE6_TD_25n_100g.mat');
ls6_TD=[]; as6_TD=[];
for i=1:length(ALL_groups_comparison) %100 groups
    ls6_TD=ALL_groups_comparison{i}.LS(NUMFRAMES);
    as6_TD=ALL_groups_comparison{i}.AS(NUMFRAMES);
    [rec_ls6_TD(i)] = Build_Record_Amplitude( ls6_TD, X);
    [rec_as6_TD(i)] = Build_Record_Amplitude( as6_TD, X);
end

save rec_ls6_TD rec_ls6_TD;
save rec_as6_TD rec_as6_TD;

%% Group 7
load('Speed_AGE7_ASD_25n_100g.mat');
%%glue speed
for i=1:length(ALL_groups_comparison) %100 groups
    ls7_ASD=ALL_groups_comparison{i}.LS(NUMFRAMES);
    as7_ASD=ALL_groups_comparison{i}.AS(NUMFRAMES);
    [rec_ls7_ASD(i)] = Build_Record_Amplitude( ls7_ASD, X);
    [rec_as7_ASD(i)] = Build_Record_Amplitude( as7_ASD, X);
end
save rec_ls7_ASD rec_ls7_ASD;
save rec_as7_ASD rec_as7_ASD;


load('Speed_AGE7_TD_25n_100g.mat');
ls7_TD=[]; as7_TD=[];
for i=1:length(ALL_groups_comparison) %100 groups
    ls7_TD=ALL_groups_comparison{i}.LS(NUMFRAMES);
    as7_TD=ALL_groups_comparison{i}.AS(NUMFRAMES);
    [rec_ls7_TD(i)] = Build_Record_Amplitude( ls7_TD, X);
    [rec_as7_TD(i)] = Build_Record_Amplitude( as7_TD, X);
end

save rec_ls7_TD rec_ls7_TD;
save rec_as7_TD rec_as7_TD;

