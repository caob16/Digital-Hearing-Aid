function freqBand = freqSplit(N,Cutoff1,Cutoff2,ratio) 
freqBand = zeros(1,N+1);
for i = N:-1:0
    if i==N
        freqBand(1,i+1) = Cutoff2;
    end
    if 1<i&&i<N
        freqBand(1,i+1) = round(Cutoff1*(1-ratio)+freqBand(1,i+2)*ratio);%取整方便滤波器设计
    end
    if i==1
        freqBand(1,i+1)= round(Cutoff1*ratio+freqBand(1,i+2)*(1-ratio));%取整方便滤波器设计
    end
    if i==0
        freqBand(1,i+1) = Cutoff1;
    end
end
end