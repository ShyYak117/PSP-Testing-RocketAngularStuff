%% Import of data
[sigStrengthDataBZB1,fftArrayBZB1] = fftSignalStrength('BZBFlight1data.csv');

%% Plotting
plot(sigStrengthDataBZB1)

figure()
plot(abs(fftArrayBZB1))