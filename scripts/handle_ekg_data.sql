-- handle_ekg_data.sql

-- Create the table for storing EKG file paths and other EKG metadata
CREATE TABLE IF NOT EXISTS ekg_files (
    id INTEGER PRIMARY KEY AUTOINCREMENT,
    record_number TEXT NOT NULL,
    file_path TEXT NOT NULL
);

-- Insert records with file paths into the ekg_files table
INSERT INTO ekg_files (record_number, file_path) VALUES ('100', '../data/100.dat');
INSERT INTO ekg_files (record_number, file_path) VALUES ('210', '../data/210.dat');
INSERT INTO ekg_files (record_number, file_path) VALUES ('203', '../data/222.dat');
INSERT INTO ekg_files (record_number, file_path) VALUES ('207', '../data/207.dat');
INSERT INTO ekg_files (record_number, file_path) VALUES ('232', '../data/232.dat');
INSERT INTO ekg_files (record_number, file_path) VALUES ('223', '../data/223.dat');
INSERT INTO ekg_files (record_number, file_path) VALUES ('209', '../data/209.dat');
INSERT INTO ekg_files (record_number, file_path) VALUES ('231', '../data/231.dat');
INSERT INTO ekg_files (record_number, file_path) VALUES ('222', '../data/222.dat');
INSERT INTO ekg_files (record_number, file_path) VALUES ('230', '../data/230.dat');
