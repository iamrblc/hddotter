% 
% This file converts LUMO's .lufr format into .snirf format that can be
% used in the HDDOTTER python pipeline.
% The script assumes that you have a .lufr and a .json file with the 3D
% coordinates loaded in the /data/copy_raw_here folder. Both files should
% have the same name and differ only in their extention (example.lufr,
% example.json).
% Once this script runs, snirf and nirs files will be created in the
% appropriate folders (/data/do_not_touch/snirf, /data/do_not_touch/nirs).

% Provide a name for the subject.
subject = 'odin';
% Set working directory to the scripts folder
cd '/home/rblc/ELTE/hddotter/scripts';

%------------------------------------------------
%---- DO NOT CHANGE ANYTHING BELOW THIS LINE ----
%------------------------------------------------

% This gets the exact file paths (fullfile function ensures Win-Mac-Linux
% compatibility.)
rawPath = '../data/copy_raw_here';
snirfPath = '../data/do_not_touch/snirf';
nirsPath = '../data/do_not_touch/nirs';
lufrFile = fullfile(rawPath, [subject '.lufr']);
layoutFile = fullfile(rawPath, [subject '.json']);
snirfFile = fullfile(snirfPath, [subject '.snirf']);
% nirsFile = fullfile(nirsPath, [subject '.nirs']); % Possibly not needed

% Load data from .lufr and overwrite default layout with own.
%data = LumoData(lufrFile); % without json file
data = LumoData(lufrFile, 'layout', layoutFile); % with json file
% Convert data to snirf
data.write_SNIRF(snirfFile);

% Convert data to nirs 
% data.write_NIRS(nirsFile); % Possibly not needed
