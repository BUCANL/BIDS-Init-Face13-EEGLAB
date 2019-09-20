% Preface:

% Global settings
bidsOpt.FileExt = 'edf';
bidsOpt.InteralUse = true;

data(1).file = {'./sourcedata/eeg/sub-s07_task-faceFO_eeg.set'};
data(1).session = 1;
data(1).run     = 1;

% general information for dataset_description.json file
% -----------------------------------------------------
generalInfo.Name = 'faceFO';

README = sprintf('# Face13 Dataset\n\nData used for JofV Deconstructing the early visual electrocortical response to face and house stimuli:\nhttps://jov.arvojournals.org/article.aspx?articleid=2121634');

% channel location file
% ---------------------
chanlocs = './sourcedata/misc/BioSemi_BUCANL_EEGLAB.sfp';
           
% call to the export function
% ---------------------------
bids_export(data, 'targetdir', uigetdir, 'taskName', ...
    generalInfo.Name, 'gInfo', generalInfo,  ...
    'chanlocs', chanlocs, 'README', README, 'bidsOpt',bidsOpt);

disp('Done!');

% bids_export(data, 'targetdir', '/Users/arno/temp/bids_meditation_export', 'taskName', ...
%     'meditation', 'trialtype', trialTypes, 'gInfo', generalInfo, 'pInfo', pInfo, ...
%     'pInfoDesc', pInfoDesc, 'eInfoDesc', eInfoDesc, 'README', README, ...
%     'CHANGES', CHANGES, 'stimuli', stimuli, 'codefiles', code, 'tInfo', tInfo, 'chanlocs', chanlocs);