import 'package:budget_tracker/extensions/build_context_extension.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';

class AppScaffold extends StatelessWidget {
  const AppScaffold({
    super.key,
    required this.body,
    this.backgroundColor,
    this.navigationBar,
    this.floatingActionButton,
    this.statusBarBrightness,
    this.safeArea = true,
  });

  final Color? backgroundColor;
  final Widget body;
  final Widget? navigationBar;
  final Widget? floatingActionButton;
  final Brightness? statusBarBrightness;
  final bool safeArea;

  @override
  Widget build(BuildContext context) {
    return AnnotatedRegion<SystemUiOverlayStyle>(
      value: SystemUiOverlayStyle(
        statusBarColor: Colors.transparent,
        statusBarBrightness:
            statusBarBrightness ?? Theme.of(context).brightness,
        statusBarIconBrightness:
            (statusBarBrightness ?? Theme.of(context).brightness) ==
                    Brightness.dark
                ? Brightness.light
                : Brightness.dark,
      ),
      child: Scaffold(
        backgroundColor: backgroundColor ?? context.colors.backgroundPrimary,
        body: SafeArea(
          bottom: false,
          top: safeArea,
          child: body,
        ),
        bottomNavigationBar: navigationBar,
        floatingActionButton: floatingActionButton,
      ),
    );
  }
}
