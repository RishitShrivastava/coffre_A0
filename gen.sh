#!/bin/bash

# Specify the folder path
folder_path="../example-programs/Level-3-test-cases/"

# Check if the folder exists
if [ ! -d "$folder_path" ]; then
    echo "Folder not found: $folder_path"
    exit 1
fi

# Iterate through each .c file in the folder
for file in "$folder_path"*.c; do
    # Extract the file name without the path
    file_name=$(basename "$file")

    # Run the command for each file
    ./L3-sclp "$file" --show-tac -d > "${file_name}.tac"

    # Print a message indicating the completion of processing for each file
    echo "Processed: $file_name"
done

echo "All .c files processed."
