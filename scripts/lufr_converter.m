% 
% This file converts LUMO's .lufr format into .snirf format that can be
% used in the HDDOTTER python pipeline.
% 1. It loads the .lufr
% 2. It adds the layout coordinates (.json file stored in the locations
% directory.)

subject = 'odin';

% Define base paths
dataPath = '../data/lufr';
layoutPath = '../data/location';
snirfPath = '../data/snirf';
nirsPath = '../data/nirs';

% Assemble file paths
%lufrFile = fullfile(dataPath, [subject '.lufr']);
lufrFile = '/home/rblc/ELTE/hddotter/data/lufr/odin.lufr';
%layoutFile = fullfile(layoutPath, [subject '.json']);
layoutFile = '/home/rblc/ELTE/hddotter/data/locations/odin.json';
snirfFile = fullfile(snirfPath, [subject '.snirf']);
nirsFile = fullfile(nirsPath, [subject '.nirs']);

% Load the lufr file
data = LumoData(lufrFile, layoutFile);

% Add the layout information to the .lufr file
% THIS IS TO BE DEVELOPED LATER

% Convert data to snirf
data.write_SNIRF(snirfFile);

% Convert data to nirs
data.write_NIRS(nirsFile);
