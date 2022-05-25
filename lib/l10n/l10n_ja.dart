


import 'l10n.dart';

/// The translations for Japanese (`ja`).
class L10nJa extends L10n {
  L10nJa([String locale = 'ja']) : super(locale);

  @override
  String get title => 'GitHubリポジトリ検索';

  @override
  String get blankMessage => '入力が必要です';

  @override
  String get limitExceed => '入力上限に達しました';

  @override
  String get inputKeyword => 'キーワード入力';

  @override
  String get serverError => 'サーバーエラーが発生しています';

  @override
  String get networkError => 'インターネットエラーが発生しています';

  @override
  String get unknownError => '不明なエラーが発生しています';

  @override
  String get search => '検索';
}
