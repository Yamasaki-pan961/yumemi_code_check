


import 'l10n.dart';

/// The translations for English (`en`).
class L10nEn extends L10n {
  L10nEn([String locale = 'en']) : super(locale);

  @override
  String get title => 'GitHub Repository Search';

  @override
  String get blankMessage => 'Input required';

  @override
  String get limitExceed => 'Input limit reached';

  @override
  String get inputKeyword => 'Input keyword';

  @override
  String get serverError => 'The server error has occurred.';

  @override
  String get networkError => 'The Internet error has occurred.';

  @override
  String get unknownError => 'Unknown error has occurred.';

  @override
  String get search => 'Search';
}
