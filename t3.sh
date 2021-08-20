#!/bin/bash
crontab -l 2>/dev/null; echo "0 */4 * * * /root/t3-sh.sh" | crontab - 
