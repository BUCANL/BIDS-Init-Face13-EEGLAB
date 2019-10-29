# Face13 Initialization Suite
This repository provides a root BIDS level initialization and BIDSification tool suite.

# Installation and How to Run
This installation assumes familiarity with the bash terminal, paths, and Matlab console use.
1. Download Face13 sourcedata folder, [here](https://drive.google.com/open?id=1xq85woDpAYXhCtzdgjkXpjjjggiWSKtc)
2. Create a project folder: `mkdir Face13`
3. Move the sourcedata into the project folder and rename as `sourcedata`. This step may differ based on download location and platform.
4. Enter the project folder: `cd Face13`
5. Create a code folder: `mkdir code`
6. Enter code folder: `cd code`
7. Use: `git clone --recursive https://github.com/BUCANL/BIDS-Init-Face13-EEGLAB.git` inside of the code folder
8. Point Matlab to project folder. In our case, Face13.
9. In the Matlab console execute: `addpath code/BIDS-Init-Face13-EEGLAB`
10. In the Matlab console execute: `addpath code/BIDS-Init-Face13-EEGLAB/eeglab`
11. In the Matlab console execute: `eeglab`
12. At this point the familiar eeglab window should appear.
13. To merge and relabel bdf files run: `init_script.m`
14. To BIDSify run: `bids_face13.m`
15. Select the project directory with the file chooser
16. Visualize your data!

# Customization
If you are looking to customize the scripts here to BIDSify you own data, please visit the bids-matlab-tools plugin page [here](https://github.com/BUCANL/bids-matlab-tools).

# Contact Us
If you have any questions or concerns about this project please do not hesitate to contact the individual below:

**Tyler K. Collins**  
Research Assistant  
Laboratory of Cognitive and Affective Neuroscience  
Brock University  
tk11br@brocku.ca

# License / Copyright
Copyright (C) 2017 James Desjardins and others. This program is free software; you can redistribute it and/or modify it under the terms of the GNU General Public License as published by the Free Software Foundation; either version 2 of the License, or (at your option) any later version. This program is distributed in the hope that it will be useful, but WITHOUT ANY WARRANTY; without even the implied warranty of MERCHANTABILITY or FITNESS FOR A PARTICULAR PURPOSE. See the GNU General Public License for more details. You should have received a copy of the GNU General Public License along with this program (LICENSE.txt file in the root directory); if not, write to the Free Software Foundation, Inc., 59 Temple Place, Suite 330, Boston, MA 02111-1307 USA
