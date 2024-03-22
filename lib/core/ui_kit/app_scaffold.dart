import 'package:flutter/material.dart';
import 'package:flutter/services.dart';

class AppScaffold extends StatelessWidget {
  const AppScaffold({
    super.key,
    required this.body,
    this.backgroundColor,
    this.navigationBar,
    this.floatingActionButton,
  });

  final Color? backgroundColor;
  final Widget body;
  final Widget? navigationBar;
  final Widget? floatingActionButton;

  @override
  Widget build(BuildContext context) {
    return AnnotatedRegion<SystemUiOverlayStyle>(
      value: SystemUiOverlayStyle(
        statusBarColor: Colors.transparent,
        statusBarBrightness: Theme.of(context).brightness,
        statusBarIconBrightness: Theme.of(context).brightness == Brightness.dark
            ? Brightness.light
            : Brightness.dark,
      ),
      child: Scaffold(
        backgroundColor: backgroundColor,
        body: SafeArea(
          child: body,
        ),
        bottomNavigationBar: navigationBar,
        floatingActionButton: floatingActionButton,
      ),
    );
  }
}
