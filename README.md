![auto update bucket](https://github.com/guitarrapc/scoop-bucket/workflows/auto%20update%20bucket/badge.svg)

# scoop-bucket

guitarrapc's tool buckets.

## Buckets

* bombardier
* ctop
* DejaVuSansMono-Bront
* py
* qttabbar
* qttabbar-path

## Auto Update buckets

see https://github.com/ScoopInstaller/Excavator

* Move to .github and run `docker-compose up --build` to gen sshkey.
* Get public key `docker-compose exec bucket cat /root/.ssh/id_rsa.pub` and register to your github account.
* Get private key `docker-compose exec bucket cat /root/.ssh/id_rsa` and encrypt it then put to `.github/.ssh/id_rsa.cipher`.
    * Also set your encrypt key to github secrets.
* Set your bucket github account info at `https://github.com/guitarrapc/scoop-bucket/blob/master/.github/docker-compose`.
* GitGub actions will automatically update your bucket with `auto-update-bucket.yaml` on every hour.
    * You can trigger manually.
