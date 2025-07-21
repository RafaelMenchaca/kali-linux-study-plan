#!/bin/bash
# Practice Linux basics: navigation, file creation, permissions

# Print the current working directory
echo "Your current location:"
pwd

# Create directories and navigate into them
echo "Create and navigate folders"
mkdir -p test-folder/subfolder    # Create 'test-folder' and 'subfolder' inside it
cd test-folder/subfolder          # Change directory to 'subfolder'

# Create two empty files
touch file1.txt file2.txt

# List all files and directories with details
echo "List contents:"
ls -la

# Copy file1.txt to file3.txt
echo "Copy file1.txt to file3.txt"
cp file1.txt file3.txt

# Rename file2.txt to renamed.txt
echo "Rename file2.txt to renamed.txt"
mv file2.txt renamed.txt

# Set permissions: owner can read/write, others have no access
echo "Set permissions (read/write) for owner only"
chmod 600 renamed.txt

# Show file permissions
echo "Check permissions:"
ls -l
