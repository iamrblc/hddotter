# Notes to the pipeline

## General
### First steps with your data
Copy your raw .lufr file and .json file in the data/copy_raw_here folder. They should have the same name (eg. example.lufr, example.json).

😇 Don't worry about the other folders. Things will be taken care of by the pipeline automatically.

👿 Do not even think of changing the content of the data/do_not_touch folder. 
  
## 3D reference
### Creating Layout files
It's important that you add the landmark positions to your .json file with this exact names in this exact order: Nasion, Inion, Ar, Al, Cz. (With this capitalization).

(Currently for some reason these names are not transferred to the .snirf file and I'm not sure what is needed to maintain consistency. With this setting everything works fine.)

## Data acquisition
## Lufr handling
### Running the .lufr converter
Something something
## Preprocess
## Coregistration
## Volumetrifying
## Data analysis I.
## Data analysis II.
## General