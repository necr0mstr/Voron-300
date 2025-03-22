#!/bin/bash

BACKUPDIR="$HOME/git-files/Voron-300" 
mkdir -p ${BACKUPDIR}/`date +%F`/ 
rsync -avHl --exclude 'gcodes/*' --exclude 'logs/*' --exclude 'config/ShakeTune_results/*' $HOME/printer_data/ ${BACKUPDIR}/`date +%F`/ | tee -a $HOME/logs/klipper_backup_`date +%F`.log  
rsync -avHl $HOME/mainsail-config/client.cfg ${BACKUPDIR}/`date +%F`/client.cfg-`date +%F` | tee -a $HOME/logs/klipper_backup_`date +%F`.log
