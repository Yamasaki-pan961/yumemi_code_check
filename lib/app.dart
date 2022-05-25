import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:yumemi_code_check/l10n/l10n.dart';
import 'package:yumemi_code_check/ui/page/search_page.dart';

class App extends StatelessWidget {
  const App({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final lightTheme = ThemeData.light();
    final lightDeco = lightTheme.inputDecorationTheme;
    final lightText = lightTheme.textTheme;

    final darkTheme = ThemeData.dark();
    final darkDeco = darkTheme.inputDecorationTheme;
    final darkText = darkTheme.textTheme;

    return MaterialApp(
      title: 'SearchRepositoryApp',
      theme: lightTheme.copyWith(
        textTheme: GoogleFonts.notoSansTextTheme(lightText),
        inputDecorationTheme:
            lightDeco.copyWith(fillColor: Colors.grey.shade200),
      ),
      darkTheme: darkTheme.copyWith(
        textTheme: GoogleFonts.notoSansTextTheme(darkText),
        inputDecorationTheme:
            darkDeco.copyWith(fillColor: Colors.grey.shade700),
      ),
      home: const SearchPage(),
      localizationsDelegates: L10n.localizationsDelegates,
      supportedLocales: L10n.supportedLocales,
    );
  }
}
