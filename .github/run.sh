#!/bin/bash
/sbin/my_init &
chmod 600 /root/.ssh/id_rsa
pwsh ./root/scoop/lib/install.ps1
bash -x /root/excavate.sh
