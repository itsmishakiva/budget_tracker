import 'package:auto_route/annotations.dart';
import 'package:budget_tracker/core/ui_kit/app_scaffold.dart';
import 'package:budget_tracker/core/ui_kit/constraints_constants.dart';
import 'package:budget_tracker/extensions/build_context_extension.dart';
import 'package:budget_tracker/features/auth/presentation/auth/auth_content.dart';
import 'package:budget_tracker/features/auth/presentation/root/auth_root_view_model.dart';
import 'package:budget_tracker/features/auth/presentation/root/auth_root_view_state.dart';
import 'package:budget_tracker/features/auth/presentation/signup/signup_content.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:flutter_svg/svg.dart';

@RoutePage()
class AuthScreen extends ConsumerWidget {
  const AuthScreen({super.key});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final layoutConstants = ref.watch(constraintsConstantsProvider);
    final state = ref.watch(authRootViewModelProvider);
    if (state is AuthRootViewStateLoading) {
      return AppScaffold(
        body: Center(
          child: CupertinoActivityIndicator(
            color: context.colors.accent,
          ),
        ),
      );
    }
    return AppScaffold(
      safeArea: false,
      statusBarBrightness: Brightness.dark,
      backgroundColor: context.colors.accent,
      body: Stack(
        children: [
          SvgPicture.asset(
            'assets/svg/background.svg',
            fit: BoxFit.cover,
            width: double.infinity,
            height: double.infinity,
          ),
          ListView(
            padding: EdgeInsets.zero,
            physics: const ClampingScrollPhysics(),
            children: [
              SizedBox(
                height: 200 + MediaQuery.of(context).viewPadding.top,
                child: Align(
                  alignment: Alignment.bottomLeft,
                  child: Padding(
                    padding: EdgeInsets.symmetric(
                      horizontal: layoutConstants.horizontalScreenPadding,
                      vertical: 24.0,
                    ),
                    child: Text(
                      context.locale!.welcome,
                      style: context.textStyles.headerSurface3,
                    ),
                  ),
                ),
              ),
              SizedBox(
                height: MediaQuery.of(context).size.height -
                    200 -
                    MediaQuery.of(context).viewPadding.top,
                child: AnimatedSwitcher(
                  duration: const Duration(milliseconds: 200),
                  transitionBuilder: (child, animation) {
                    return ScaleTransition(
                      scale: animation,
                      child: child,
                    );
                  },
                  child: Container(
                    key: Key(
                      state is AuthRootViewStateAuth
                          ? 'auth_container'
                          : 'signup_content',
                    ),
                    width: double.infinity,
                    padding: EdgeInsets.symmetric(
                      horizontal: layoutConstants.horizontalScreenPadding,
                      vertical: 40.0,
                    ),
                    decoration: BoxDecoration(
                      color: context.colors.backgroundSecondary,
                      borderRadius: BorderRadius.vertical(
                        top: Radius.circular(
                          layoutConstants.defaultBorderRadius,
                        ),
                      ),
                    ),
                    child: state is AuthRootViewStateAuth
                        ? const AuthContent()
                        : const SignUpContent(),
                  ),
                ),
              ),
            ],
          ),
        ],
      ),
    );
  }
}
