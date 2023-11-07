clear all;
[x, Fs] = audioread('output.wav');


figure(1),
freqz(x(:,1),1,513024);
h = findobj(gca,'Type','Line')
h.Color = 'r'
hold on
freqz(x(:,2),1,513024);
xlim( [ 0 0.1 ] )

% hfvt = fvtool(x(:,1),'Analysis','Magnitude');
% hfvt = fvtool(x(:,1),'Analysis','phase');
% hfvt = fvtool(x(:,2),'Analysis','Magnitude');
% hfvt = fvtool(x(:,2),'Analysis','phase');