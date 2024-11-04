import wfdb
import os

# Move up one level from the 'scripts' folder to access 'data'
data_path = os.path.join(os.path.dirname(__file__), '../data')
absolute_data_path = os.path.abspath(data_path)  # Convert to absolute path
print(f"Datapath: {absolute_data_path}")

# List of records to download (updated to replace the duplicate '222' with '203')
records = ['100', '210', '203', '207', '232', '223', '209', '231', '222', '230']

# Download each record only if it doesn't already exist in the data directory
for record in records:
    record_file_path = os.path.join(absolute_data_path, f"{record}.dat")
    if not os.path.exists(record_file_path):
        print(f"Downloading record {record}...")
        wfdb.dl_database('mitdb', data_path, [record])
    else:
        print(f"Record {record} already exists. Skipping download.")
