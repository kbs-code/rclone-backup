A simple bash script that performs backups using rclone.

You will need to set up a remote drive in rclone first.
The script reads from a list of source directories and copies to one rclone drive as a destination.
The script will create a subfolder in the drive for each source.

You can then schedule this script using crontab -e.