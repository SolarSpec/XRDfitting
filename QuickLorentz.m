clear all
%% Select the data file to analyze
[file,path] = uigetfile({'*.csv';'*.txt';'*.*'}, 'File Selector');

FullFileName = [path, file];


%% Import the data and select the key ones
FullTable = importdata(FullFileName);

Angle = FullTable.data(:,1);
Intensity = FullTable.data(:,2);

% Clear temporary variables
clear FullTable FullFileName

%% Plot data and pick fitting bounds

XRDBoundsPlot = figure;
plot(Angle, Intensity);   % Generate plot to set bounds on Lorentz fit.
title({'Click twice to select the fitting bounds.', 'Press ESC twice to use full data range.'});

[BoundX,BoundY,button] = ginput(2);
if isempty(find(button == 27,1)) == 1
    FitAngle = Angle(Angle>min(BoundX)&Angle<max(BoundX));
    FitIntensity = Intensity(Angle>min(BoundX)&Angle<max(BoundX));
else
    FitAngle = Angle;
    FitIntensity = Intensity;
end

close(XRDBoundsPlot)

%% Fit with Lorentz peak shape and a linear background

LorentzFit = @(p,x) p(1)./((x-p(2)).^2+p(3)) + p(4) + p(5)*x;

GuessPeakY = max(FitIntensity) - min(FitIntensity);
GuessPeakX = FitAngle(FitIntensity==max(FitIntensity));
GuessPeakWidth = 2;
GuessOffset = min(FitIntensity);
GuessSlope = (FitIntensity(1) - FitIntensity(end)) / (FitAngle(1) - FitAngle(end));

InitialGuess = [GuessPeakY, GuessPeakX, GuessPeakWidth, GuessOffset, GuessSlope];

[FitParams,resnorm,exitflag,output] = lsqcurvefit(LorentzFit,InitialGuess,FitAngle,...
    FitIntensity,[0 min(FitAngle) 0 0 -inf],[max(FitIntensity) max(FitAngle) 10 max(FitIntensity) inf]);

FitResult = LorentzFit(FitParams,FitAngle);
plot(FitAngle,FitIntensity,FitAngle,FitResult,'LineWidth',1)

xlabel('2θ (°)');
ylabel('Intensity');
legend('Data','Fit');
legend('boxoff','bold','fontsize',9);

FWHM=2*sqrt(FitParams(3))       % Output the FWHM of the peak
FWHMstr = ['The peak FWHM is ' num2str(FWHM) '° .'];
annotation("textbox",[0.15 0.7 0.1 0.1],'String', FWHMstr);
