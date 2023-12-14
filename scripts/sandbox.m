% Provide a name for the subject.
subject = 'odin';
% Set working directory to the scripts folder
cd '/home/rblc/ELTE/hddotter/scripts';

%------------------------------------------------
%---- DO NOT CHANGE ANYTHING BELOW THIS LINE ----
%------------------------------------------------

% This gets the exact file paths (fullfile function ensures Win-Mac-Linux
% compatibility.)
lufrFile = fullfile(rawPath, [subject '.lufr']);
layout = lumofile.read_layout(lufrFile) 