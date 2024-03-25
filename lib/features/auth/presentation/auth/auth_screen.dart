import 'package:auto_route/annotations.dart';
import 'package:budget_tracker/core/ui_kit/app_scaffold.dart';
import 'package:budget_tracker/core/ui_kit/app_text_field.dart';
import 'package:budget_tracker/core/ui_kit/constraints_constants.dart';
import 'package:budget_tracker/core/ui_kit/widgets/app_button.dart';
import 'package:budget_tracker/extensions/build_context_extension.dart';
import 'package:budget_tracker/features/auth/presentation/auth/auth_view_model.dart';
import 'package:budget_tracker/features/auth/presentation/auth/auth_view_state.dart';
import 'package:flutter/gestures.dart';
import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:flutter_svg/svg.dart';

@RoutePage()
class AuthScreen extends ConsumerWidget {
  const AuthScreen({super.key});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final layoutConstants = ref.watch(constraintsConstantsProvider);
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
          Column(
            crossAxisAlignment: CrossAxisAlignment.start,
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
              Expanded(
                child: AnimatedSwitcher(
                  duration: const Duration(milliseconds: 200),
                  transitionBuilder: (child, animation) {
                    return ScaleTransition(
                      scale: animation,
                      child: child,
                    );
                  },
                  child: Container(
                    key: const Key(
                      'auth_container',
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
                    child: _AuthContent(),
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

/*class _SignUpContent extends ConsumerStatefulWidget {
  @override
  ConsumerState<_SignUpContent> createState() => _SignUpContentState();
}

class _SignUpContentState extends ConsumerState<_SignUpContent> {
  final userTextController = TextEditingController();
  final passwordTextController = TextEditingController();
  final repeatPasswordTextController = TextEditingController();

  @override
  void dispose() {
    userTextController.dispose();
    passwordTextController.dispose();
    repeatPasswordTextController.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    final state = ref.watch(authViewModelProvider);
    if (state is AuthViewRegistrationState) {
      userTextController.text =
          state.user.username;
      passwordTextController.text = state.user.password;
      repeatPasswordTextController.text = state.user.passwordRepeat;
    }
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Text(
          context.locale!.signUp,
          style: context.textStyles.header1,
        ),
        const SizedBox(height: 24.0),
        AppTextField(
          labelText: context.locale!.username,
        ),
        const SizedBox(height: 24.0),
        AppTextField(
          labelText: context.locale!.password,
          obscureText: true,
        ),
        const SizedBox(height: 24.0),
        AppTextField(
          labelText: context.locale!.repeatPassword,
          obscureText: true,
        ),
        const SizedBox(height: 8.0),
        SizedBox(
          height: 20,
          child: Text(
            (state is AuthViewRegistrationErrorState) ? state.errorMessage : '',
            style: context.textStyles.subtitle2.copyWith(
              color: context.colors.error,
            ),
          ),
        ),
        const SizedBox(height: 12.0),
        RichText(
          text: TextSpan(
            text: '${context.locale!.alreadyRegistered} ',
            style: context.textStyles.header3.copyWith(
              fontWeight: FontWeight.w600,
            ),
            recognizer: TapGestureRecognizer()
              ..onTap = () {
                ref.read(authViewModelProvider.notifier).switchLoginAndAuth();
              },
            children: [
              TextSpan(
                text: context.locale!.signIn,
                style: context.textStyles.header3.copyWith(
                  fontWeight: FontWeight.w800,
                ),
                recognizer: TapGestureRecognizer()
                  ..onTap = () {
                    ref
                        .read(authViewModelProvider.notifier)
                        .switchLoginAndAuth();
                  },
              ),
            ],
          ),
        ),
        const Spacer(),
        AppButton(
          onTap: () {},
          title: context.locale!.signUp,
        ),
      ],
    );
  }
}*/

class _AuthContent extends ConsumerStatefulWidget {
  @override
  ConsumerState<_AuthContent> createState() => _AuthContentState();
}

class _AuthContentState extends ConsumerState<_AuthContent> {
  final userTextController = TextEditingController();
  final passwordTextController = TextEditingController();

  @override
  void dispose() {
    userTextController.dispose();
    passwordTextController.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    final state = ref.watch(authViewModelProvider);
    userTextController.text = state.user.username ?? '';
    passwordTextController.text = state.user.username ?? '';
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Text(
          context.locale!.signIn,
          style: context.textStyles.header1,
        ),
        const SizedBox(height: 24.0),
        AppTextField(
          labelText: context.locale!.username,
          controller: userTextController,
        ),
        const SizedBox(height: 24.0),
        AppTextField(
          obscureText: true,
          labelText: context.locale!.password,
          controller: passwordTextController,
          //onChanged: ,
        ),
        const SizedBox(height: 8.0),
        SizedBox(
          height: 20,
          child: Text(
            state is AuthViewStateError ? state.error : '',
            style: context.textStyles.subtitle2.copyWith(
              color: context.colors.error,
            ),
          ),
        ),
        const SizedBox(height: 12.0),
        RichText(
          text: TextSpan(
            text: '${context.locale!.notRegistered} ',
            style: context.textStyles.header3.copyWith(
              fontWeight: FontWeight.w600,
            ),
            recognizer: TapGestureRecognizer()
              ..onTap = () {
                //ref.read(authViewModelProvider.notifier).switchLoginAndAuth();
              },
            children: [
              TextSpan(
                text: context.locale!.signUp,
                style: context.textStyles.header3.copyWith(
                  fontWeight: FontWeight.w800,
                ),
                recognizer: TapGestureRecognizer()
                  ..onTap = () {
                    /*ref
                        .read(authViewModelProvider.notifier)
                        .switchLoginAndAuth();*/
                  },
              ),
            ],
          ),
        ),
        const Spacer(),
        AppButton(
          onTap: () {
            ref.read(authViewModelProvider.notifier).signIn();
          },
          title: context.locale!.signIn,
        ),
      ],
    );
  }
}
