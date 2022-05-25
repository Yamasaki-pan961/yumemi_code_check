# yumemi_code_check
## バージョン
Flutter 2.10.5
  - Flutter 3 が5月12日にが登場しましたが不具合がいくつか報告されているので、今回は使用を見送った。
  - dart 2.17使ってみたかった
## 環境設定

本プロジェクトでは`fvm: Flutter Version Management`を使用してSDKのバージョンを管理しています。

- FVM公式: https://fvm.app/docs/getting_started/installation
- 参考サイト: https://zenn.dev/riscait/articles/flutter-version-management

インストール方法
```bash
dart pub global activate fvm #-> fvmのインストール
fvm --version #->fvmのバージョンが表示さればインストール成功
```

環境によりPATHを通す必要があります

以下のコマンドをプロジェクトのディレクトリ内で実行すればプロジェクト指定バージョンのFlutter SDKが適応されます。

```
fvm install
```

SDKのバージョンは[`.fvm/fvm_config.json`](.fvm/fvm_config.json)で指定されています。

## Flavor
このプロジェクトでは`dev`,`stg`,`prd`のFlavorがあります。

### dev
- BuildMode: debug
- Repository: Mock
### stg
- BuildMode: profile
  - debugModeのほうが良いと後で気づいた
- Repository: GitHub API

### prd
- BuildMode: release
- Repository: GitHub API
## 参考リポジトリー
https://github.com/wasabeef/flutter-architecture-blueprints

## 反省点
- ### HttpClientに依存しないエラー表示を実装したかった
現在はDioErrorを使ってエラーハンドリングしているが、HttpClientが変わってもUIに影響が出ないようにラップしたかった。
Error
- ### リポジトリ検索画面のScroll範囲が狭まっている
Paddingのせいで狭まっているので気を付ける

- ### HttpClientとRepositoryの責務に悩んだ
RetrofitがDataModelを返してくれるからリポジトリーの仕事はなんだろうと悩んだ。結果として、HttpClientが何回も呼び出される複雑なデータ要求があった場合を考え、とりあえず分けておいた。

- ### テストを正しくかけているか
カバレッジを計算させてないから

- ### 横画面時ふさわしくないUI
  レンダリングエラーは出ないが、横画面時にふさわしくないUI

上げたらきりがない…
## Getting Started

This project is a starting point for a Flutter application.

A few resources to get you started if this is your first Flutter project:

- [Lab: Write your first Flutter app](https://flutter.dev/docs/get-started/codelab)
- [Cookbook: Useful Flutter samples](https://flutter.dev/docs/cookbook)

For help getting started with Flutter, view our
[online documentation](https://flutter.dev/docs), which offers tutorials,
samples, guidance on mobile development, and a full API reference.
