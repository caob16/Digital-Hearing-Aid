function [out,State] = bandPassFilter(Cutoff1,Cutoff2, Fs, in, varargin)
N = 151;%滤波器阶数
Cutoff1 = freq2pi(Cutoff1,Fs);
Cutoff2 = freq2pi(Cutoff2,Fs);
h = fir1(N-1,[Cutoff1,Cutoff2],chebwin(N));%滤波器冲激响应
Num = h;
Den = 1;
[out, State] = filter(Num, Den, in, varargin{:});
end