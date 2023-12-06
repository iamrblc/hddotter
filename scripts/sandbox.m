% Provide a name for the subject.
subject = 'odin';

%---- DO NOT CHANGE ANYTHING BELOW THIS LINE ----

% Set working directory to the scripts folder
cd '/home/rblc/ELTE/hddotter/scripts';

% This gets the exact file paths (fullfile function ensures Win-Mac-Linux
% compatibility.)
rawPath = '../data/copy_raw_here';
snirfPath = '../data/do_not_touch/snirf';
nirsPath = '../data/do_not_touch/nirs';
lufrFile = fullfile(rawPath, [subject '.lufr']);
layoutFile = fullfile(rawPath, [subject '.json']);

% Load data from .lufr and overwrite default layout with own. 
data = LumoData(lufrFile, 'layout', layoutFile);