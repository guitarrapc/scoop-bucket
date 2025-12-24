![auto update bucket](https://github.com/guitarrapc/scoop-bucket/workflows/auto%20update%20bucket/badge.svg)

English | [日本語](./README-ja.md)

# scoop-bucket

guitarrapc's tool buckets.

```sh
scoop bucket add guitarrapc https://github.com/guitarrapc/scoop-bucket.git
```

## Buckets

Following tools are included in this bucket.

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

Following tool has been moved to official buckets.

* [actionlint](https://github.com/ScoopInstaller/Main/blob/master/bucket/actionlint.json) (NOTE: moved to Main bucket on [#8801](https://github.com/ScoopInstaller/Extras/pull/8801))

### Removed from bucket

* qttabbar-beta
* qttabbar
* qttabbar-path

## TIPS

### Auto Update buckets

> [!TIP]
> Run [auto update bucket](https://github.com/guitarrapc/scoop-bucket/actions/workflows/auto-update-bucket.yaml) workflow to trigger manually.

Using [ScoopInstaller/GithubActions](https://github.com/ScoopInstaller/GithubActions) to auto update bucket. Old version is deprecated on [#11](https://github.com/guitarrapc/scoop-bucket/pull/11).

### Auto add Hash for new Bucket

Following steps to auto add hash for new bucket.

1. Create bucket with empty hash, `"hash": ""`, 1 version older than latest.
2. Push to origin, and run update workflow.
3. Bucket update will be detected and hash will automatically be filled by the system.
