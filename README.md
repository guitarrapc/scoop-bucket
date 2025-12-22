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

Use [ScoopInstaller/GithubActions](https://github.com/ScoopInstaller/GithubActions) to auto update bucket. Old version is deprecated on [#11](https://github.com/guitarrapc/scoop-bucket/pull/11).

### Auto add Hash for new Bucket

1. Create bucket with empty hash, `"hash": ""`, 1 version older than latest.
2. Push to origin, and run update workflow.
3. Bucket update will detected and hash will automatically filled by system.
