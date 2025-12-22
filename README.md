![auto update bucket](https://github.com/guitarrapc/scoop-bucket/workflows/auto%20update%20bucket/badge.svg)

# scoop-bucket

guitarrapc's tool buckets.

```sh
scoop bucket add guitarrapc https://github.com/guitarrapc/scoop-bucket.git
```

## Buckets

* 0xProto
* DejaVuSansMono-Bront
* bombardier
* browserouter
* conftest
* ctop
* dotfileslinker-go
* dotfileslinker
* ecspresso
* ghz
* googlechrome-stable
* grpc_health_probe
* opa
* py
* yamlfmt

### Moved to Extras

* actionlint

### Removed from bucket

* qttabbar-beta
* qttabbar
* qttabbar-path

## TIPS

### Auto Update buckets

> [!TIPS]
> You can trigger github action manually from [auto update bucket](https://github.com/guitarrapc/scoop-bucket/actions/workflows/auto-update-bucket.yaml) workflow.


Follow [Excavator](https://github.com/ScoopInstaller/Excavator) steps to prepare auto update your bucket.

1. Copy `.github` and `bin` directories of this Repository.
2. Run following command on Git Bash to generate your SSH Key for auto bucket update.

  ```shell
  # Remove existing `.ssh/id_rsa.pub` to regenerate ssh key for your repo.
  rm .github/.ssh/id_rsa.pub
  # Move to .github
  cd .github
  # Run gen sshkey. (This step will not run if .github/.ssh/id_rsa.pub exists.)
  # * Public key is placed in host's `.github/.ssh/id_rsa.pub`.
  # * Private key is placed in host's `.github/.ssh/id_rsa`.
  docker-compose up --build
  # Encrypt private key `.github/.ssh/id_rsa.cipher` will be generated.
  KEY=<YOUR_CIPHER_KEY> ./encrypt.sh
  ```

3. Set your cipher key to github secrets, name `CIPHER_KEY`.
4. Set your bucket github account info in `https://github.com/guitarrapc/scoop-bucket/blob/master/.github/docker-compose`.

  ```yaml
  version: "3.6"

  services:
    main:
      image: r15ch13/excavator:latest
      # definitions....
      environment:
        GIT_USERNAME: "<USER_NAME>"
        GIT_EMAIL: "<EMAIL@ADDRESS>"
        BUCKET: "<OWNER>/<REPOSITORY>"
  ```

5. Commit and push change to remote, GitHub Actions `auto update bucket` will be shown.
6. GitHub Actions `auto update bucket` automatically updates your bucket on scheduled every hour.

### Auto add Hash for new Bucket

1. Create bucket with empty hash, `"hash": ""`, 1 version older than latest.
2. Push to origin, and run update workflow.
3. Bucket update will detected and hash will automatically filled by system.
