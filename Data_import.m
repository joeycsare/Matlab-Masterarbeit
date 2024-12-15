% Specify the folder containing the CSV files
folderPath = 'C:\Users\Johannes\Desktop\RobotData_2024-12-13_14-51';

% Get a list of all CSV files in the folder
csvFiles = dir(fullfile(folderPath, '*.csv'));

% Create a new figure for plotting all timetables
figure;

% Calculate the number of rows needed for a 3-column layout
numColumns = 3;
numRows = ceil(numel(csvFiles) / numColumns);

% Loop through each file and load it as a timetable
for k = 1:numel(csvFiles)
    % Get the full path to the current file
    filePath = fullfile(folderPath, csvFiles(k).name);
    
    % Load the CSV file into a table
    dataTable = readtable(filePath);
    
    % Ensure the timestamp column is converted to duration
    if ismember('Timestamp', dataTable.Properties.VariableNames)
        % Convert the Timestamp to seconds as duration
        dataTable.Timestamp = seconds(dataTable.Timestamp);
    else
        error('Timestamp column not found in %s', csvFiles(k).name);
    end
    
    % Convert the table to a timetable
    timetableVar = table2timetable(dataTable);
    
    % Create a unique variable name based on the file name (without extension)
    [~, varName, ~] = fileparts(csvFiles(k).name);
    
    % Remove everything after the first underscore
    underscoreIdx = strfind(varName, '_');
    if ~isempty(underscoreIdx)
        varName = varName(1:underscoreIdx(1)-1);
    end
    
    % Make the variable name valid for MATLAB
    varName = matlab.lang.makeValidName(varName);
    
    % Assign the timetable to a variable in the workspace
    assignin('base', varName, timetableVar);
    
    % Plot the timetable on the same figure with 3 columns
    subplot(numRows, numColumns, k); % Create a subplot for each timetable
    plot(timetableVar.Timestamp, timetableVar{:, :}); % Plot all columns except Timestamp
    title(['Timetable: ', varName]);
    xlabel('Timestamp');
    ylabel('Values');
    legend(timetableVar.Properties.VariableNames(1:end), 'Interpreter', 'none');
    
    % Optionally display progress
    fprintf('Plotted and saved timetable as variable: %s\n', varName);
end

fprintf('All timetables have been loaded, saved, and plotted.\n');
