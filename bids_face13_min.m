% Global settings
bidsOpt.FileExt = 'edf';
bidsOpt.InteralUse = true;

% Input file specifications
% -----------------------------------------------------
data = loadjson('testData.json');
data.byJson = true;

% general information for dataset_description.json file
% -----------------------------------------------------
generalInfo = loadjson('generalInfo.json');
generalInfo.byJson = true;

% Task information for xxxx-eeg.json file
% -----------------------------------------------------
tInfo = loadjson('tInfo.json');
tInfo.byJson = true;

% channel location file
% ---------------------
chanlocs = './sourcedata/misc/BioSemi_BUCANL_EEGLAB.sfp';
           
% coordsystem string
% This string will be placed in each coordsystem.json
% ---------------------
coordsys = '{"EEGCoordinateSystem":"Other","EEGCoordinateUnits":"metres"}';

README = sprintf('# Face13 Dataset\n\nData used for JofV Deconstructing the early visual electrocortical response to face and house stimuli:\nhttps://jov.arvojournals.org/article.aspx?articleid=2121634');

% call to the export function
% ---------------------------
bids_export(data, 'targetdir', uigetdir, 'taskName', ...
    generalInfo.Name, 'gInfo', generalInfo, 'coordsys', coordsys, ...
    'chanlocs', chanlocs, 'README', README, 'bidsOpt', bidsOpt,'tInfo',tInfo);

disp('Done!');

% bids_export(data, 'targetdir', '/Users/arno/temp/bids_meditation_export', 'taskName', ...
%     'meditation', 'trialtype', trialTypes, 'gInfo', generalInfo, 'pInfo', pInfo, ...
%     'pInfoDesc', pInfoDesc, 'eInfoDesc', eInfoDesc, 'README', README, ...
%     'CHANGES', CHANGES, 'stimuli', stimuli, 'codefiles', code, 'tInfo', tInfo, 'chanlocs', chanlocs);