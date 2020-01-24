%This will save data for figures
clear all;

X=0:.01:1;

%% Group 1
load('Speed_AGE1_ASD_25n_100g.mat');
%%glue speed
ls1_ASD=[]; as1_ASD=[];
for i=1:length(ALL_groups_comparison) %100 groups
    ls1_ASD=[ ls1_ASD  ALL_groups_comparison{i}.LS ];
    as1_ASD=[ as1_ASD  ALL_groups_comparison{i}.AS ];
end
[ record_ls1_ASD ] = Build_Record_Amplitude( ls1_ASD, X);
[ record_as1_ASD ] = Build_Record_Amplitude( as1_ASD, X);
save record_ls1_ASD record_ls1_ASD;
save record_as1_ASD record_as1_ASD;


load('Speed_AGE1_TD_25n_100g.mat');
ls1_TD=[]; as1_TD=[];
for i=1:length(ALL_groups_comparison) %100 groups
    ls1_TD=[ ls1_TD  ALL_groups_comparison{i}.LS ];
    as1_TD=[ as1_TD  ALL_groups_comparison{i}.AS ];
end
[ record_ls1_TD ] = Build_Record_Amplitude( ls1_TD, X);
[ record_as1_TD ] = Build_Record_Amplitude( as1_TD, X);
save record_ls1_TD record_ls1_TD;
save record_as1_TD record_as1_TD;

%% Group 2
load('Speed_AGE2_ASD_25n_100g.mat');
%%glue speed
ls2_ASD=[]; as2_ASD=[];
for i=1:length(ALL_groups_comparison) %100 groups
    ls2_ASD=[ ls2_ASD  ALL_groups_comparison{i}.LS ];
    as2_ASD=[ as2_ASD  ALL_groups_comparison{i}.AS ];
end
[ record_ls2_ASD ] = Build_Record_Amplitude( ls2_ASD, X);
[ record_as2_ASD ] = Build_Record_Amplitude( as2_ASD, X);
save record_ls2_ASD record_ls2_ASD;
save record_as2_ASD record_as2_ASD;

load('Speed_AGE2_TD_25n_100g.mat');
ls2_TD=[]; as2_TD=[];
for i=1:length(ALL_groups_comparison) %100 groups
    ls2_TD=[ ls2_TD  ALL_groups_comparison{i}.LS ];
    as2_TD=[ as2_TD  ALL_groups_comparison{i}.AS ];
end
[ record_ls2_TD ] = Build_Record_Amplitude( ls2_TD, X);
[ record_as2_TD ] = Build_Record_Amplitude( as2_TD, X);
save record_ls2_TD record_ls2_TD;
save record_as2_TD record_as2_TD;

%% Group 3
load('Speed_AGE3_ASD_25n_100g.mat');
%%glue speed
ls3_ASD=[]; as3_ASD=[];
for i=1:length(ALL_groups_comparison) %100 groups
    ls3_ASD=[ ls3_ASD  ALL_groups_comparison{i}.LS ];
    as3_ASD=[ as3_ASD  ALL_groups_comparison{i}.AS ];
end
[ record_ls3_ASD ] = Build_Record_Amplitude( ls3_ASD, X);
[ record_as3_ASD ] = Build_Record_Amplitude( as3_ASD, X);
save record_ls3_ASD record_ls3_ASD;
save record_as3_ASD record_as3_ASD;

load('Speed_AGE3_TD_25n_100g.mat');
ls3_TD=[]; as3_TD=[];
for i=1:length(ALL_groups_comparison) %100 groups
    ls3_TD=[ ls3_TD  ALL_groups_comparison{i}.LS ];
    as3_TD=[ as3_TD  ALL_groups_comparison{i}.AS ];
end
[ record_ls3_TD ] = Build_Record_Amplitude( ls3_TD, X);
[ record_as3_TD ] = Build_Record_Amplitude( as3_TD, X);
save record_ls3_TD record_ls3_TD;
save record_as3_TD record_as3_TD;

%% Group 4
load('Speed_AGE4_ASD_25n_100g.mat');
%%glue speed
ls4_ASD=[]; as4_ASD=[];
for i=1:length(ALL_groups_comparison) %100 groups
    ls4_ASD=[ ls4_ASD  ALL_groups_comparison{i}.LS ];
    as4_ASD=[ as4_ASD  ALL_groups_comparison{i}.AS ];
end
[ record_ls4_ASD ] = Build_Record_Amplitude( ls4_ASD, X);
[ record_as4_ASD ] = Build_Record_Amplitude( as4_ASD, X);
save record_ls4_ASD record_ls4_ASD;
save record_as4_ASD record_as4_ASD;

load('Speed_AGE4_TD_25n_100g.mat');
ls4_TD=[]; as4_TD=[];
for i=1:length(ALL_groups_comparison) %100 groups
    ls4_TD=[ ls4_TD  ALL_groups_comparison{i}.LS ];
    as4_TD=[ as4_TD  ALL_groups_comparison{i}.AS ];
end
[ record_ls4_TD ] = Build_Record_Amplitude( ls4_TD, X);
[ record_as4_TD ] = Build_Record_Amplitude( as4_TD, X);
save record_ls4_TD record_ls4_TD;
save record_as4_TD record_as4_TD;

%% Group 5
load('Speed_AGE5_ASD_25n_100g.mat');
%%glue speed
ls5_ASD=[]; as5_ASD=[];
for i=1:length(ALL_groups_comparison) %100 groups
    ls5_ASD=[ ls5_ASD  ALL_groups_comparison{i}.LS ];
    as5_ASD=[ as5_ASD  ALL_groups_comparison{i}.AS ];
end
[ record_ls5_ASD ] = Build_Record_Amplitude( ls5_ASD, X);
[ record_as5_ASD ] = Build_Record_Amplitude( as5_ASD, X);
save record_ls5_ASD record_ls5_ASD;
save record_as5_ASD record_as5_ASD;

load('Speed_AGE5_TD_25n_100g.mat');
ls5_TD=[]; as5_TD=[];
for i=1:length(ALL_groups_comparison) %100 groups
    ls5_TD=[ ls5_TD  ALL_groups_comparison{i}.LS ];
    as5_TD=[ as5_TD  ALL_groups_comparison{i}.AS ];
end
[ record_ls5_TD ] = Build_Record_Amplitude( ls5_TD, X);
[ record_as5_TD ] = Build_Record_Amplitude( as5_TD, X);
save record_ls5_TD record_ls5_TD;
save record_as5_TD record_as5_TD;

%% Group 6
load('Speed_AGE6_ASD_25n_100g.mat');
%%glue speed
ls6_ASD=[]; as6_ASD=[];
for i=1:length(ALL_groups_comparison) %100 groups
    ls6_ASD=[ ls6_ASD  ALL_groups_comparison{i}.LS ];
    as6_ASD=[ as6_ASD  ALL_groups_comparison{i}.AS ];
end
[ record_ls6_ASD ] = Build_Record_Amplitude( ls6_ASD, X);
[ record_as6_ASD ] = Build_Record_Amplitude( as6_ASD, X);
save record_ls6_ASD record_ls6_ASD;
save record_as6_ASD record_as6_ASD;

load('Speed_AGE6_TD_25n_100g.mat');
ls6_TD=[]; as6_TD=[];
for i=1:length(ALL_groups_comparison) %100 groups
    ls6_TD=[ ls6_TD  ALL_groups_comparison{i}.LS ];
    as6_TD=[ as6_TD  ALL_groups_comparison{i}.AS ];
end
[ record_ls6_TD ] = Build_Record_Amplitude( ls6_TD, X);
[ record_as6_TD ] = Build_Record_Amplitude( as6_TD, X);
save record_ls6_TD record_ls6_TD;
save record_as6_TD record_as6_TD;

%% Group 7
load('Speed_AGE7_ASD_25n_100g.mat');
%%glue speed
ls7_ASD=[]; as7_ASD=[];
for i=1:length(ALL_groups_comparison) %100 groups
    ls7_ASD=[ ls7_ASD  ALL_groups_comparison{i}.LS ];
    as7_ASD=[ as7_ASD  ALL_groups_comparison{i}.AS ];
end
[ record_ls7_ASD ] = Build_Record_Amplitude( ls7_ASD, X);
[ record_as7_ASD ] = Build_Record_Amplitude( as7_ASD, X);
save record_ls7_ASD record_ls7_ASD;
save record_as7_ASD record_as7_ASD;

load('Speed_AGE7_TD_25n_100g.mat');
ls7_TD=[]; as7_TD=[];
for i=1:length(ALL_groups_comparison) %100 groups
    ls7_TD=[ ls7_TD  ALL_groups_comparison{i}.LS ];
    as7_TD=[ as7_TD  ALL_groups_comparison{i}.AS ];
end
[ record_ls7_TD ] = Build_Record_Amplitude( ls7_TD, X);
[ record_as7_TD ] = Build_Record_Amplitude( as7_TD, X);
save record_ls7_TD record_ls7_TD;
save record_as7_TD record_as7_TD;














