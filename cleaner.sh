#This script is writen to auto delete all cache memeory of my linux system. To run it write: locaton/cleaner.sh
#This script does the following:
#Cleans the APT package cache to free up space used by downloaded package files.
#Removes old log files in the /var/log directory.
#Cleans up temporary files (files ending with *~) in user directories.
#Empties the trash folder (if your desktop environment uses one).

#!/bin/bash

echo "Cleaning Up Linux System"
echo "------------------------"

# Clean apt package cache
sudo apt clean

# Remove old logs
sudo find /var/log -type f -name '*.log' -exec rm -f {} \;

# Clean up temporary files in user directories
find /home -type f -name '*~' -exec rm -f {} \;

# Clean up the trash (if using a desktop environment that uses a trash folder)
rm -rf ~/.local/share/Trash/*

echo "Cleanup completed successfully."
