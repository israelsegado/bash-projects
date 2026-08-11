# Auto Backup Script

A simple Bash script to create compressed backups of your project directory.

## Features

- Creates timestamped `.tar.gz` archives
- Stores backups in a `backup_registry` folder (one level up from the project)
- Handles spaces in paths safely
- Works for both manual and automated (cron) execution

## Usage

```bash
# Make executable (once)
chmod +x backup.sh

# Run manually
./backup.sh
```

Output example:
```
mkdir: created directory '/home/user/bash/backup_registry'
Backup created successfully at /home/user/bash/backup_registry/backup_2026-08-11_14-30-00.tar.gz
```

## Automate with Cron

Run automatically on a schedule (e.g., daily at 2 AM):

```bash
# Edit crontab
crontab -e

# Add this line (adjust path as needed)
0 2 * * * /full/path/to/backup.sh
```

> **Tip:** Use absolute paths in cron. Test first with `./backup.sh` to ensure it works.

## Requirements

- `bash`
- `tar` (with gzip support)
- `date` (GNU coreutils)