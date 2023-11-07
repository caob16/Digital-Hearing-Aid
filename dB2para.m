function x = dB2para(gain)
x = zeros(1,length(gain));
for i = 1:length(gain)
    x(1,i) = 10^(gain(1,i)/20);
end
end