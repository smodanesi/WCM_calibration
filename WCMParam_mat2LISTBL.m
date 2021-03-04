clear all
close all
%% Convert an array of parameters in parameters Tables based on your lon/lat LIS grid 
%These will be inputs in the lis.config file: WCM+Noah-MP

%VV backscatter polarization
cd('/ddn1/vol1/site_scratch/leuven/330/vsc33000/WCM_Calib_IrrvsNoIrr_last/KGE/calibration') %your dir
load Par_sVV_KGE_Irr_ProbaVLC.mat %load your parameters

%remove nan values. Nan can be related for example to Water bodies in LIS
%if an Open Water modelling is not activated. In that case LIS will
%attribute a nan/undef value to the coordinates of open water pixels

idi=find (isnan(A_cal)); 
idi2=find (isnan(B_cal)); 
idi3=find (isnan(C_cal)); 
idi4=find (isnan(D_cal)); 
A_cal(idi)=[]; B_cal(idi)=[]; C_cal(idi)=[]; D_cal(idi)=[];
lone(idi)=[]; late(idi)=[];

%Nan need to be removed. In the WCM script LIS will search for a specific
%couple of lon-lat (specified in the table) and will attribute the related parameter
fid = fopen('AAvv_PARM.TBL', 'w');
if fid == -1; error('Cannot open file for writing'); end
fprintf(fid,'%.15f %.18f %.18f \n', [A_cal, lone, late].');
fclose(fid);
type AAvv_PARM.TBL;


fid = fopen('BBvv_PARM.TBL', 'w');
if fid == -1; error('Cannot open file for writing'); end
fprintf(fid,'%.15f %.18f %.18f \n', [B_cal, lone, late].');
fclose(fid);
type BBvv_PARM.TBL;

fid = fopen('CCvv_PARM.TBL', 'w');
if fid == -1; error('Cannot open file for writing'); end
fprintf(fid,'%.15f %.18f %.18f \n', [C_cal, lone, late].');
fclose(fid);
type CCvv_PARM.TBL;


fid = fopen('DDvv_PARM.TBL', 'w');
if fid == -1; error('Cannot open file for writing'); end
fprintf(fid,'%.15f %.18f %.18f \n', [D_cal, lone, late].');
fclose(fid);
type DDvv_PARM.TBL

%% The same is for VH polarization
clear all, close all, clc
cd('/ddn1/vol1/site_scratch/leuven/330/vsc33000/WCM_Calib_IrrvsNoIrr_last/KGE/calibration') %your dir
load Par_sVH_KGE_Irr_ProbaVLC.mat %load your parameters

idi=find (isnan(A_cal)); 
idi2=find (isnan(B_cal)); 
idi3=find (isnan(C_cal)); 
idi4=find (isnan(D_cal)); 
A_cal(idi)=[]; B_cal(idi)=[]; C_cal(idi)=[]; D_cal(idi)=[]; lone(idi)=[]; late(idi)=[];


fid = fopen('AAvh_PARM.TBL', 'w');
if fid == -1; error('Cannot open file for writing'); end
fprintf(fid,'%.15f %.18f %.18f \n', [A_cal, lone, late].');
fclose(fid);
type AAvh_PARM.TBL;


fid = fopen('BBvh_PARM.TBL', 'w');
if fid == -1; error('Cannot open file for writing'); end
fprintf(fid,'%.15f %.18f %.18f \n', [B_cal, lone, late].');
fclose(fid);
type BBvh_PARM.TBL;

fid = fopen('CCvh_PARM.TBL', 'w');
if fid == -1; error('Cannot open file for writing'); end
fprintf(fid,'%.15f %.18f %.18f \n', [C_cal, lone, late].');
fclose(fid);
type CCvh_PARM.TBL;


fid = fopen('DDvh_PARM.TBL', 'w');
if fid == -1; error('Cannot open file for writing'); end
fprintf(fid,'%.15f %.18f %.18f \n', [D_cal, lone, late].');
fclose(fid);
type DDvh_PARM.TBL
