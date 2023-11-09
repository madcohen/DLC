function step1()
%%%%%%%%%%%%% IMPORT DATA AND SEPARATE LIMBS INTO VARIABLES %%%%%%%%%%%%%%%%%%%%
%%% Import the csv output from DLC as a numeric matrix and name it alldata
str='L7cre17_Stim1_Trial1';
fps=80;                        %change this to match video frame rate
if ~isempty(str)
    eval([str, ' =alldata;']); %rename if there is a string
end
frame=alldata(:,1);   %Frame
framems=(frame/fps)*1000;      %Convert from frame to time in ms
lf=alldata(:,2:3);             %Left forelimb
rf=alldata(:,5:6);             %Right forelimb
lh=alldata(:,8:9);             %Left hindlimb
rh=alldata(:,11:12);           %Right hindlimb
tb=alldata(:,14:15);           %Tail base
wk=str+".mat";
save(wk);
movefile(wk, "MatlabWorkspaces");


%LIMB COLORS
%% LF = Blue  [0.3 0.75 0.93]
%% RF = Purple [0.49 0.18 0.56]
%% LH = Pink  [0.91 0.43 0.73]
%% RH = Orange  [0.93 0.49 0.31]
%% TB = Yellow [0.97 0.75 0.25]