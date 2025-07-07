#!/bin/bash
# Week 1 Day 2 – Permissions, ownership, and sudo demo

echo "Step 1: Create file 'restricted.txt'"
touch restricted.txt
echo "Hello" > restricted.txt

echo -e "\nStep 2: Set read-only permission for all"
chmod 444 restricted.txt
ls -l restricted.txt

echo -e "\nStep 3: Try to write (this should fail):"
echo "New line" >> restricted.txt

echo -e "\nStep 4: Give owner write permission (chmod u+w)"
chmod u+w restricted.txt
echo "Now I can write again!" >> restricted.txt
cat restricted.txt

echo -e "\nStep 5: Change ownership to root (sudo)"
sudo chown root:root restricted.txt
ls -l restricted.txt

echo -e "\nStep 6: Try to write again (should fail):"
echo "This will probably fail" >> restricted.txt

echo -e "\nStep 7: Use sudo to write"
sudo echo "Written as root" >> restricted.txt

echo -e "\nAll done!"
