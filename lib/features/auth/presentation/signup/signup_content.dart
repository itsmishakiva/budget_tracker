import 'package:budget_tracker/core/ui_kit/app_text_field.dart';
import 'package:budget_tracker/core/ui_kit/widgets/app_button.dart';
import 'package:budget_tracker/extensions/build_context_extension.dart';
import 'package:budget_tracker/features/auth/presentation/root/auth_root_view_model.dart';
import 'package:budget_tracker/features/auth/presentation/signup/signup_view_model.dart';
import 'package:budget_tracker/features/auth/presentation/signup/signup_view_state.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/gestures.dart';
import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

class SignUpContent extends ConsumerStatefulWidget {
  const SignUpContent({super.key});

  @override
  ConsumerState<SignUpContent> createState() => _SignUpContentState();
}

class _SignUpContentState extends ConsumerState<SignUpContent> {
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
    final state = ref.watch(signupViewModelProvider);
    userTextController.text = state.user.username;
    passwordTextController.text = state.user.password;
    repeatPasswordTextController.text = state.user.passwordRepeat;
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
          onChanged: (value) {
            ref
                .read(signupViewModelProvider.notifier)
                .updateUsername(value ?? '');
          },
        ),
        const SizedBox(height: 24.0),
        AppTextField(
          labelText: context.locale!.password,
          obscureText: true,
          onChanged: (value) {
            ref
                .read(signupViewModelProvider.notifier)
                .updatePassword(value ?? '');
          },
        ),
        const SizedBox(height: 24.0),
        AppTextField(
          labelText: context.locale!.repeatPassword,
          obscureText: true,
          onChanged: (value) {
            ref
                .read(signupViewModelProvider.notifier)
                .updateRepeatPassword(value ?? '');
          },
        ),
        const SizedBox(height: 8.0),
        SizedBox(
          height: 20,
          child: Text(
            (state is SignupViewStateError) ? state.error : '',
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
                ref.read(authRootViewModelProvider.notifier).switchState();
              },
            children: [
              TextSpan(
                text: context.locale!.signIn,
                style: context.textStyles.header3.copyWith(
                  fontWeight: FontWeight.w800,
                ),
                recognizer: TapGestureRecognizer()
                  ..onTap = () {
                    ref.read(authRootViewModelProvider.notifier).switchState();
                  },
              ),
            ],
          ),
        ),
        const Spacer(),
        Padding(
          padding: const EdgeInsets.only(bottom: 48.0),
          child: AppButton(
            onTap: () {
              ref
                  .read(signupViewModelProvider.notifier)
                  .signUp(context.locale!);
            },
            title: context.locale!.signUp,
            loading: state is SignupViewStateLoading,
          ),
        ),
      ],
    );
  }
}
