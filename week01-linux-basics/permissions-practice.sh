#!/bin/bash
# Week 1 Day 2 – Permissions, ownership, and sudo demo

# Step 1: Create a file named 'restricted.txt' and add initial content
echo "Step 1: Create file 'restricted.txt'"
touch restricted.txt
echo "Hello" > restricted.txt

# Step 2: Set read-only permission for all users (owner, group, others)
echo -e "\nStep 2: Set read-only permission for all"
chmod 444 restricted.txt
ls -l restricted.txt

# Step 3: Attempt to append text to the file (should fail due to read-only permissions)
echo -e "\nStep 3: Try to write (this should fail):"
echo "New line" >> restricted.txt

# Step 4: Grant write permission to the owner and append text successfully
echo -e "\nStep 4: Give owner write permission (chmod u+w)"
chmod u+w restricted.txt
echo "Now I can write again!" >> restricted.txt
cat restricted.txt

# Step 5: Change the file's ownership to root using sudo
echo -e "\nStep 5: Change ownership to root (sudo)"
sudo chown root:root restricted.txt
ls -l restricted.txt

# Step 6: Try to append text as a non-root user (should fail due to ownership)
echo -e "\nStep 6: Try to write again (should fail):"
echo "This will probably fail" >> restricted.txt

# Step 7: Use sudo to append text as root (note: 'sudo echo' may not work as expected)
echo -e "\nStep 7: Use sudo to write"
sudo echo "Written as root" >> restricted.txt

# Final message
echo -e "\nAll done!"
