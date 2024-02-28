#!/usr/bin/env bash
cd testing/configure || exit
sudo ./linux_update_system.sh
sudo ./linux_install_lme.sh -b cbaxley-194-workflows
. lib/functions.sh
extract_credentials
cd ../tests/ || exit
python3 -m venv /home/admin.ackbar/venv_test
. /home/admin.ackbar/venv_test/bin/activate
pip install -r requirements.txt
chown admin.ackbar:admin.ackbar /home/admin.ackbar/venv_test -R