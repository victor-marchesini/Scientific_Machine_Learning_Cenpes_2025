clear; close all; clc

sys = tf(4,[1 0.5 4]);
figure(1)
bode(sys) 
grid
Fh = gcf;                                                 % Handle To Current Figure ( gcf Get handle to current figure)
Kids = Fh.Children;                                         % Children
AxAll = findobj(Kids,'Type','Axes');                        % Handles To Axes
Ax1 = AxAll(1);                                             % First Set Of Axes
LinesAx1 = findobj(Ax1,'Type','Line');                      % Handle To Lines
LinesAx1(2).LineWidth = 5;                                  % Set ‘LineWidth’
Ax2 = AxAll(2);                                             % Second Set Of Axes
LinesAx2 = findobj(Ax2,'Type','Line');                      % Handle To Lines
LinesAx2(2).LineWidth = 5;                                  % Set ‘LineWidth’


sys=tf(4,[1 0.5 4]);
[mag,phase,wout] = bode(sys);
Mag=20*log10(mag(:));Phase=phase(:);
figure(2);semilogx(wout,Mag,'LineWidth',5);grid on;
figure(3);semilogx(wout,Phase,'LineWidth',1);grid on;


