function [str, fps, frame, framems, lfx,lfy,rfx,rfy,lhx,lhy,rhx,rhy,wk,meanlfy,meanlhy,meanrfy,meanrhy] = createvars(fps,str,a)
%prompt = 'What would you like to rename alldata?';
%str = input(prompt,'s');
%if ~isempty(str)
    %eval([str, ' =alldata;']); % rename if there is a string
%end
frame = a(:,1);
rfx=a(:,2);
rfy=a(:,3);
lfx=a(:,5);
lfy=a(:,6);
rhx=a(:,8);
rhy=a(:,9);
lhx=a(:,11);
lhy=a(:,12);
%prompt='Enter the fps';
%fps=input (prompt);
framems=(frame/fps)*1000;
meanlfy=mean(lfy);
meanrfy=mean(rfy);
meanlhy=mean(lhy);
meanrhy=mean(rhy);
wk=str+".mat";
save(wk);
movefile(wk, "TestWkSpace");


% %%%%%%%%%%%%% IMPORT DATA AND SEPARATE LIMBS INTO VARIABLES %%%%%%%%%%%%%%%%%%%%
% %%% Import the csv output from DLC as a numeric matrix and name it alldata
% %fps = video frame rate (normally 80)
% frame=a(:,1);   %Frame
% framems=(frame/fps)*1000;      %Convert from frame to time in ms
% lf=a(:,2:3);             %Left forelimb
% rf=a(:,5:6);             %Right forelimb
% lh=a(:,8:9);             %Left hindlimb
% rh=a(:,11:12);           %Right hindlimb
% tb=a(:,14:15);           %Tail base
% wk=str+".mat";
% save(wk);
% movefile(wk, "TestWkSpace");