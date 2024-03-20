import 'package:budget_tracker/extensions/build_context_extension.dart';
import 'package:budget_tracker/firebase_options.dart';
import 'package:budget_tracker/themes/app_themes.dart';
import 'package:firebase_core/firebase_core.dart';
import 'package:firebase_crashlytics/firebase_crashlytics.dart';
import 'package:flutter/foundation.dart';
import 'package:flutter_gen/gen_l10n/app_localizations.dart';
import 'package:flutter/material.dart';
import 'package:logging/logging.dart';

void main() async {
  WidgetsFlutterBinding.ensureInitialized();

  await Firebase.initializeApp(
    options: DefaultFirebaseOptions.currentPlatform,
  );

  FlutterError.onError = (errorDetails) {
    FirebaseCrashlytics.instance.recordFlutterFatalError(errorDetails);
  };

  PlatformDispatcher.instance.onError = (error, stack) {
    FirebaseCrashlytics.instance.recordError(error, stack, fatal: true);
    return true;
  };

  Logger.root.level = Level.ALL;

  runApp(const App());
}

class App extends StatelessWidget {
  const App({super.key});

  @override
  Widget build(BuildContext context) {
    Logger mockLogger = Logger('MockLogger');
    mockLogger.log(Level.INFO, 'Logging test');
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
