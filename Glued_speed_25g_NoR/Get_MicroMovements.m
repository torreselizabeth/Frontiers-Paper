function [ Avrg_speed, Norm_MaxValue, nMaxIndex] = Get_MicroMovements( MinIndex, MaxIndex, MaxValue, speed )
%Normalize_Max_Vel_Value 
%input the speed profile, the values of the peaks and the indexes of the
%minima (these are time series)
%outputs the average speed time series and the normalized speed maxima time
%series


%Check the first values using MinIndex as a guide
if MaxIndex(1)<MinIndex(1)   %max is  shifted to the left
    MaxIndex=MaxIndex(2:end);
    MaxValue=MaxValue(2:end);
end

%Check the last values using MinIndex as a guide
if length(MaxIndex)>(length(MinIndex))
    MaxIndex=MaxIndex(1:end-1);
    MaxValue=MaxValue(1:end-1);
end

    
Avrg_speed=[]; Norm_MaxValue=[];
%Compute using MaxIndex as a guide (for length)
for i=1 : min([length(MinIndex),length(MaxIndex)])-1

    segment=[]; segment=speed(MinIndex(i):MinIndex(i+1));
    
    Avrg_speed(i)=mean(segment);
    nMaxIndex(i)=MaxIndex(i);
    Norm_MaxValue(i)= MaxValue(i)/(MaxValue(i)+Avrg_speed(i));
end





