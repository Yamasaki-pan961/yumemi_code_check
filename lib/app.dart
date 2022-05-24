import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:yumemi_code_check/l10n/l10n.dart';
import 'package:yumemi_code_check/ui/page/search_page.dart';

class App extends StatelessWidget {
  const App({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'SearchRepositoryApp',
      theme: ThemeData.light().copyWith(
        textTheme: GoogleFonts.notoSansTextTheme(),
      ),
      darkTheme: ThemeData.dark(),
      home: const SearchPage(),
      localizationsDelegates: L10n.localizationsDelegates,
      supportedLocales: L10n.supportedLocales,
    );
  }
}
