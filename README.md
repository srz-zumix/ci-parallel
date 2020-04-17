# Ci-Parallel

[![AppVeyor Build status](https://ci.appveyor.com/api/projects/status/xfuks40g319x9j2d?svg=true)](https://ci.appveyor.com/project/srz-zumix/ci-parallel)
[![Azure Pipelines Build Status](https://dev.azure.com/srz-zumix/ci-specs/_apis/build/status/ci-parallel?branchName=master)](https://dev.azure.com/srz-zumix/ci-specs/_build/latest?definitionId=10&branchName=master)
[![Bitrise Build Status](https://app.bitrise.io/app/d8c6ecd7db311dd6/status.svg?token=xVF6g9OZ2mRISjxfHwsUxw&branch=master)](https://app.bitrise.io/app/d8c6ecd7db311dd6)
[![Bitrise Build Status](https://app.bitrise.io/app/f9707ca3e09428f3/status.svg?token=vY461vx7e2R5jSt-VKSE8w&branch=master)](https://app.bitrise.io/app/f9707ca3e09428f3)
[![CircleCI](https://circleci.com/gh/srz-zumix/ci-parallel/tree/master.svg?style=svg)](https://circleci.com/gh/srz-zumix/ci-parallel/tree/master)
[![Cirrus Build Status](https://api.cirrus-ci.com/github/srz-zumix/ci-parallel.svg?branch=master)](https://cirrus-ci.com/github/srz-zumix/ci-parallel/master)
[![Codefresh build status](https://g.codefresh.io/api/badges/pipeline/srz-zumix/ci-specs%2Fci-parallel?type=cf-2)](https://g.codefresh.io/public/accounts/srz-zumix/pipelines/5e7f5638788e8900ac585a80)
[![Codeship Status for srz-zumix/ci-parallel](https://app.codeship.com/projects/3136a0f0-6205-0138-6782-6a82d9037675/status?branch=master)](https://app.codeship.com/projects/392920)
[![Drone Build Status](https://cloud.drone.io/api/badges/srz-zumix/ci-parallel/status.svg?branch=master)](https://cloud.drone.io/srz-zumix/ci-parallel)
[![GitHub Actions Status](https://github.com/srz-zumix/ci-parallel/workflows/GitHub%20Actions/badge.svg?branch=master)](https://github.com/srz-zumix/ci-parallel/actions?query=workflow%3A%22GitHub+Actions%22)
<!-- [![Peakflow Build Status](https://www.peakflow.io/en/projects/ci-parallel/branch-statuses/master.svg)](https://www.peakflow.io/en/projects/ci-parallel/build-groups?build_groups_q%5Bbranch_name_cont%5D=master) -->
<!-- [![Scrutinizer Build Status](https://scrutinizer-ci.com/g/srz-zumix/ci-parallel/badges/build.png?b=master)](https://scrutinizer-ci.com/g/srz-zumix/ci-parallel/build-status/master) -->
[![Semaphore 2.0 Build Status](https://srz-zumix.semaphoreci.com/badges/ci-parallel/branches/master.svg)](https://srz-zumix.semaphoreci.com/projects/ci-parallel)
[![Shippable Run Status](https://api.shippable.com/projects/5e81da2c352a0d0007594420/badge?branch=master)](https://app.shippable.com/github/srz-zumix/ci-parallel)
[![Travis-CI Build Status](https://travis-ci.com/srz-zumix/ci-parallel.svg?branch=master)](https://travis-ci.com/srz-zumix/ci-parallel)
[![wercker status](https://app.wercker.com/status/285dae1f97ed665286a2f325e29c4325/s/master "wercker status")](https://app.wercker.com/project/byKey/285dae1f97ed665286a2f325e29c4325)

CI service parallel capability (FREE/OSS Plan)

|CI|Plan|Limit to|Concurrency Job|Concurrency Step in Job|Parallelism|Max|Note|
|:--|:--|:--|:--|:--|:--|:--|:--|
|[AppVeyor](https://www.appveyor.com)|OSS|account|1|-|-|1||
|[Azure Pipelines](https://azure.microsoft.com/ja-jp/services/devops/pipelines/)|OSS|organization|10|-|-|10|
|[Bitrise](https://www.bitrise.io)|OSS|project|1|-|-|1 (* Projects)|[Starting parallel builds with a single trigger](https://devcenter.bitrise.io/builds/triggering-builds/trigger-multiple-workflows/)|
|[Buddy](https://buddy.works)|OSS|account|1|1|-|1||
|[CircleCI](https://circleci.com/pricing/)|FREE|account|1|1|1|1||
|[CircleCI](https://circleci.com/pricing/)|OSS|account|1|1|4|4||
|[Cirrus CI](https://cirrus-ci.org/faq/#are-there-any-limits)|OSS|account|Linux: 8, Windows: 2, FreeBSD: 2, macOS: 1|-|-|13||
|[Codefresh](https://codefresh.io/)|OSS|account|1|2|-|2||
|[CodeShip Pro](https://codeship.com/)|OSS|project|1|50+|-|50+|limit nothing?|
|[Drone](https://cloud.drone.io/)|OSS|account|50+|50+|-|50+|limit nothing?|
|[GitHub Actions](https://help.github.com/en/articles/about-github-actions)|OSS|[account](https://github.blog/changelog/2019-10-28-github-actions-update-to-job-concurrency-usage-limits/)|20|-|-|20||
|[Scrutinizer](https://scrutinizer-ci.com)||
|[Semaphore 2.0](https://semaphoreci.com/product)|FREE|organization|1|-|1|1||
|[Semaphore 2.0](https://semaphoreci.com/product)|OSS|organization|4|-|4|4||
|[Shippable](http://shippable.com)|OSS|account|1|-|-|1||
|[Travis CI](https://travis-ci.com/)|OSS|account|3|-|-|3||
|[wercker](http://www.wercker.com/)|OSS|account|2|-|-|2||

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

## AppVeyor

[AppVeyor.json](./record/AppVeyor.json)
![AppVeyor](./record/images/AppVeyor.png)

## Azure Pipelines

[AzurePipelines.json](./record/AzurePipelines.json)
![AzurePipelines](./record/images/AzurePipelines.png)

## Bitrise

[Bitrise.json](./record/Bitrise.json)
![Bitrise](./record/images/Bitrise.png)

## CircleCI

[CircleCI.json](./record/CircleCI.json)
![CircleCI](./record/images/CircleCI.png)

## Cirrus CI

[CirrusCI.json](./record/CirrusCI.json)
![CirrusCI](./record/images/CirrusCI.png)

## Codefresh

[Codefresh.json](./record/Codefresh.json)
![Codefresh](./record/images/Codefresh.png)

## CodeShip

[CodeShip.json](./record/CodeShip.json)
![CodeShip](./record/images/CodeShip.png)

## Drone

[Drone.json](./record/Drone.json)
![Drone](./record/images/Drone.png)

## GitHub Actions

[GitHubActions.json](./record/GitHubActions.json)
![GitHubActions](./record/images/GitHubActions.png)

## Semaphore

[Semaphore.json](./record/Semaphore.json)
![Semaphore](./record/images/Semaphore.png)

## Shippable

[Shippable.json](./record/Shippable.json)
![Shippable](./record/images/Shippable.png)

## Travis CI

[TravisCI.json](./record/TravisCI.json)
![TravisCI](./record/images/TravisCI.png)

## Wercker

[Wercker.json](./record/Wercker.json)
![Wercker](./record/images/Wercker.png)
