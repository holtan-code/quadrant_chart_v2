-- New file path
SET @new_file_path = '/Users/chaseholtan/Documents/NewFolder/query.sql';

-- Save the query to the new file path
CREATE OR REPLACE FILE FORMAT my_file_format TYPE = 'CSV' FIELD_DELIMITER = ',';

COPY INTO @new_file_path
FROM (SELECT * FROM your_table)
FILE_FORMAT = (FORMAT_NAME = 'my_file_format');