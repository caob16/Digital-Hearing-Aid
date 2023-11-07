function [deviceReader,Fs,Out] = Initial(audioDeviceReader)
% Initialize a file reader to produce an input signal
deviceReader = audioDeviceReader;
%使用双声道录制
deviceReader.NumChannels = 2;
%增加采样频率
deviceReader.SampleRate = 96000;
%Sample Rate of Audio
Fs = deviceReader.SampleRate;
% Initialize a device writer to play back the output
Out = audioDeviceWriter('SampleRate', Fs);