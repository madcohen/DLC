function pwrspecfunct(ZData1, YData1, XData1, ZData2, YData2, XData2, ZData3)
%CREATEFIGURE(ZData1, YData1, XData1, ZData2, YData2, XData2, ZData3)
%  ZDATA1:  patch zdata
%  YDATA1:  patch ydata
%  XDATA1:  patch xdata
%  ZDATA2:  patch zdata
%  YDATA2:  patch ydata
%  XDATA2:  patch xdata
%  ZDATA3:  patch zdata

%  Auto-generated by MATLAB on 26-Apr-2021 12:57:13

% Create figure
figure1 = figure('NumberTitle','off','Name','Figure','Color',[1 1 1]);

% Create axes
axes1 = axes('Parent',figure1,...
    'Position',[0.0554108723135289 0.144178610804851 0.385782579045475 0.274757442116871]);

% Create patch
patch('ZData',ZData1,'YData',YData1,'XData',XData1,'FaceColor',[1 1 1],...
    'EdgeColor','flat');

% Create zlabel
zlabel('dB/Hz');

% Create ylabel
ylabel('Trial');

% Create xlabel
xlabel('Hz');

% Create title
title('Power Spectrum Pre Stimulation');

% Uncomment the following line to preserve the X-limits of the axes
% xlim(axes1,[0 500]);
% Uncomment the following line to preserve the Z-limits of the axes
% zlim(axes1,[-20 60]);
view(axes1,[-37.5 30]);
grid(axes1,'on');
% Create axes
axes2 = axes('Parent',figure1,...
    'Position',[0.527357343983457 0.132050716648291 0.40221747158656 0.276962513781699]);

% Create patch
patch('ZData',ZData2,'YData',YData2,'XData',XData2,'FaceColor',[1 1 1],...
    'EdgeColor','flat');

% Create zlabel
zlabel('dB/Hz');

% Create ylabel
ylabel('Trial');

% Create xlabel
xlabel('Hz');

% Create title
title('Power Spectrum Post Stimulation');

% Uncomment the following line to preserve the X-limits of the axes
% xlim(axes2,[0 500]);
% Uncomment the following line to preserve the Z-limits of the axes
% zlim(axes2,[-20 60]);
view(axes2,[-37.5 30]);
grid(axes2,'on');
% Create axes
axes3 = axes('Parent',figure1,...
    'Position',[0.0886441521700012 0.590705622932746 0.774999999999984 0.36185777287762]);

% Create patch
patch('ZData',ZData3,'YData',YData2,'XData',XData2,'FaceColor',[1 1 1],...
    'EdgeColor','flat');

% Create zlabel
zlabel('dB/Hz');

% Create ylabel
ylabel('Trial');

% Create xlabel
xlabel('Hz');

% Create title
title('Power Spectrum');

% Uncomment the following line to preserve the X-limits of the axes
% xlim(axes3,[0 1000]);
view(axes3,[-37.5 30]);
grid(axes3,'on');