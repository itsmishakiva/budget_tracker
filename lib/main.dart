import 'package:budget_tracker/extensions/build_context_extension.dart';
import 'package:budget_tracker/themes/app_themes.dart';
import 'package:flutter_gen/gen_l10n/app_localizations.dart';
import 'package:flutter/material.dart';

void main() {
  runApp(const App());
}

class App extends StatelessWidget {
  const App({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      theme: AppThemes().lightThemeData(),
      localizationsDelegates: AppLocalizations.localizationsDelegates,
      supportedLocales: AppLocalizations.supportedLocales,
      home: const _MockHomePage(),
    );
  }
}

class _MockHomePage extends StatelessWidget {
  const _MockHomePage();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Text(context.locale!.budgetTracker),
      ),
    );
  }
}
