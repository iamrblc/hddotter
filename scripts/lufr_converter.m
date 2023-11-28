% Load the lufr file
data = LumoData("../data/lufr/odin.lufr");

% Convert data to snirf
data.write_SNIRF("../data/snirf/odin.snirf");

% Convert data to nirs
data.write_NIRS("../data/nirs/odin.nirs")