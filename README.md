# yumemi_code_check

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

## 参考リポジトリー
https://github.com/wasabeef/flutter-architecture-blueprints

## Getting Started

This project is a starting point for a Flutter application.

A few resources to get you started if this is your first Flutter project:

- [Lab: Write your first Flutter app](https://flutter.dev/docs/get-started/codelab)
- [Cookbook: Useful Flutter samples](https://flutter.dev/docs/cookbook)

For help getting started with Flutter, view our
[online documentation](https://flutter.dev/docs), which offers tutorials,
samples, guidance on mobile development, and a full API reference.
