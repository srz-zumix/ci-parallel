# Ci-Parallel

CI service parallel capability (FREE/OSS Plan)

|CI|Plan|Limit to|Concurrency Job|Concurrency Step in Job|Parallelism|Max|
|:--|:--|:--|:--|:--|:--|:--|
|[AppVeyor](https://www.appveyor.com)||||
|[Azure Pipelines](https://azure.microsoft.com/ja-jp/services/devops/pipelines/)|
|[Bitrise](https://www.bitrise.io)|OSS|project|1|-|-|1 (x Projects)|
|[Buddy](https://buddy.works)|OSS|account|1|1|-|1|
|[CircleCI](https://circleci.com/pricing/)|OSS||1|1|4|4|
|[Cirrus CI](https://cirrus-ci.org/)||
|[Codefresh](https://codefresh.io/)|OSS|account|1|2|-|2|
|[Codeship](https://codeship.com/)||
|[Drone](https://cloud.drone.io/)||
|[GitHub Actions](https://help.github.com/en/articles/about-github-actions)|OSS|[account](https://github.blog/changelog/2019-10-28-github-actions-update-to-job-concurrency-usage-limits/)|20|-|-|20|
|[Scrutinizer](https://scrutinizer-ci.com)||
|[Semaphore 2.0](https://semaphoreci.com/product)|OSS||4|-|4|4|
|[Shippable](http://shippable.com)||
|[Travis CI](https://travis-ci.com/)|
|[wercker](http://www.wercker.com/)||

## Concurrency Job

ジョブの並行実行可能数
ここでいうジョブは各 CI サービスが定義するジョブを直接指すものではありません。
ここでのジョブは CI のフロー構成のうちトップレベルの構造を指すものです。

## Concurrency Step in Job

ジョブ中のステップの並行実行可能数。
ここでいうステップは各 CI サービスが定義するステップを直接指すものではありません。
ここでのステップは CI のフロー構成のうち子レベルの構造を指すものです。

## Parallelism

CI サービスの中には特定の処理を複数並列実行させる機能がある場合があります。
（インデックス環境変数が与えられた処理がそれぞれ実行される）
その上限。

## Max

各レベルを合算した場合の並行実行可能数の最大。

# Preview parallel

1. download json
2. open google chrome
3. open [chrome://tracing](chrome://tracing/)
4. load json

## CircleCI

[CircleCI.json](./record/CircleCI.json)
![CircleCI](./record/images/CircleCI.png)

## Codefresh

[Codefresh.json](./record/Codefresh.json)
![Codefresh](./record/images/Codefresh.png)

## GitHub Actions

[GitHubActions.json](./record/GitHubActions.json)
![GitHubActions](./record/images/GitHubActions.png)

## Semaphore

[Semaphore.json](./record/Semaphore.json)
![Semaphore](./record/images/Semaphore.png)
