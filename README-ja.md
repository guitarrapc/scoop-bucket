![auto update bucket](https://github.com/guitarrapc/scoop-bucket/workflows/auto%20update%20bucket/badge.svg)

[English](./README.md) | 日本語

# scoop-bucket

guitarrapc のツールバケットです。

```sh
scoop bucket add guitarrapc https://github.com/guitarrapc/scoop-bucket.git
```

## Buckets

このバケットには以下のツールが含まれています。

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

以下のツールは公式バケットに移動されました。

* [actionlint](https://github.com/ScoopInstaller/Main/blob/master/bucket/actionlint.json) (NOTE: moved to Main bucket on [#8801](https://github.com/ScoopInstaller/Extras/pull/8801))

### Removed from bucket

* qttabbar-beta
* qttabbar
* qttabbar-path

## TIPS

### Auto Update buckets

> [!TIP]
> [auto update bucket](https://github.com/guitarrapc/scoop-bucket/actions/workflows/auto-update-bucket.yaml) ワークフローを手動で実行できます。

[ScoopInstaller/GithubActions](https://github.com/ScoopInstaller/GithubActions) を使用してバケットを自動更新しています。旧バージョンは [#11](https://github.com/guitarrapc/scoop-bucket/pull/11) で非推奨となりました。

### Auto add Hash for new Bucket

新しいバケットのハッシュを自動追加するには、以下の手順に従ってください。

1. 空のハッシュ `"hash": ""` を持つバケットを、最新より1つ古いバージョンで作成します。
2. origin にプッシュし、更新ワークフローを実行します。
3. バケットの更新が検出され、ハッシュがシステムによって自動的に入力されます。
