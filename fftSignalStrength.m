function [sigStrength,fftArray] = fftSignalStrength(noisyData_xlsx)
    sigStrength = xlsread(noisyData_xlsx,'V:V'); % signal strength dB
    sigTimes = xlsread(noisyData_xlsx,'A:A'); % signal time (s)

    % Signal characteristics
    lSignal = max(sigTimes) - min(sigTimes); % signal length
    freqSampling = lSignal / length(sigStrength); % approximate samplign frequency
    periodSampling = 1 / freqSampling; % sampling period
    
    DC_off = mean(sigStrength) .* ones(length(sigStrength)); 

    fftArray = sigStrength - DC_off; % remove DC offset
    
    %fftArray = fft(sigStrength); 
end