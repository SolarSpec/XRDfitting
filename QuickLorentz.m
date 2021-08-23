clear all
%% Select the data file to analyze
[file,path] = uigetfile('.txt');

FullFileName = [path, file];

%% Setup the Import Options and import the data
opts = delimitedTextImportOptions("NumVariables", 2);
opts.Delimiter = ",";
opts.ExtraColumnsRule = "ignore";
opts.EmptyLineRule = "read";
opts.VariableTypes = ["double", "double"];

%% Import the data and select the key ones
FullTable = readtable(FullFileName,opts);

BE = FullTable.Var1(end-2563:end);
Intensity = FullTable.Var2(end-2563:end);

% Clear temporary variables
clear FullTable opts


%% fit with Lorentzfit

LorentzFit = @(p,x) p(1)./((x-p(2)).^2+p(3)) + p(4) + p(5)*x;
InitialGuess = [1000, 20, 5, 1000 0];

[FitParams,resnorm,exitflag,output] = lsqcurvefit(LorentzFit,InitialGuess,BE,Intensity);

FitResult = LorentzFit(FitParams,BE);
plot(BE,Intensity,BE,FitResult)

xlabel('2θ');
ylabel('Intensity');
legend('TotalFit','Data','Background');
legend('boxoff','bold','fontsize',9);

FWHM=2*sqrt(FitParams(3))
