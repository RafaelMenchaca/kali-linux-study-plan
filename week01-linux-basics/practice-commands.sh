#!/bin/bash
# Practice Linux basics: navigation, file creation, permissions

echo "Your current location:"
pwd

echo "Create and navigate folders"
mkdir -p test-folder/subfolder
cd test-folder/subfolder
touch file1.txt file2.txt

echo "List contents:"
ls -la

echo "Copy file1.txt to file3.txt"
cp file1.txt file3.txt

echo "Rename file2.txt to renamed.txt"
mv file2.txt renamed.txt

echo "Set permissions (read/write) for owner only"
chmod 600 renamed.txt

echo "Check permissions:"
ls -l
