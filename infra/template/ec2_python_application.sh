#! /bin/bash
# shellcheck disable=SC2164
cd /home/ubuntu
yes | sudo apt update
yes | sudo apt install python3 python3-pip
https://github.com/DataOpsInnovator/python-mysql-db-project.git
sleep 20
# shellcheck disable=SC2164
cd python-mysql-db-project
pip3 install -r requirements.txt
echo 'Waiting for 30 seconds before running the app.py'
setsid python3 -u app.py &
sleep 30