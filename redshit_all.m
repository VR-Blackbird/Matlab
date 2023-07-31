load starData;
nObs = size(spectra,1)
lambdaStart = 630.02
lambdaDelta = 0.14

lambdaEnd = lambdaStart + (nObs-1)*lambdaDelta
lambda = (lambdaStart:lambdaDelta:lambdaEnd)


plot(lambda, spectra)

xlabel("Wavelength")
ylabel("Intensity")

[sHa,idx] = min(spectra)
lambdaHa = lambda(idx)


hold on
plot(lambdaHa,sHa,"rs","MarkerSize",8)
hold off
%% Task 6

z = lambdaHa/656.28 - 1
speed = z*299792.458