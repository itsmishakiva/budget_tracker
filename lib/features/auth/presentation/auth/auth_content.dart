import 'package:budget_tracker/core/ui_kit/app_text_field.dart';
import 'package:budget_tracker/core/ui_kit/widgets/app_button.dart';
import 'package:budget_tracker/extensions/build_context_extension.dart';
import 'package:budget_tracker/features/auth/presentation/auth/auth_view_model.dart';
import 'package:budget_tracker/features/auth/presentation/auth/auth_view_state.dart';
import 'package:budget_tracker/features/auth/presentation/root/auth_root_view_model.dart';
import 'package:flutter/gestures.dart';
import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

class AuthContent extends ConsumerStatefulWidget {
  const AuthContent({super.key});

  @override
  ConsumerState<AuthContent> createState() => _AuthContentState();
}

class _AuthContentState extends ConsumerState<AuthContent> {
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
    userTextController.text = state.user.username;
    passwordTextController.text = state.user.password;
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
          onChanged: (value) {
            ref
                .read(authViewModelProvider.notifier)
                .updateUsername(value ?? '');
          },
        ),
        const SizedBox(height: 24.0),
        AppTextField(
          obscureText: true,
          labelText: context.locale!.password,
          controller: passwordTextController,
          onChanged: (value) {
            ref
                .read(authViewModelProvider.notifier)
                .updatePassword(value ?? '');
          },
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
                ref.read(authRootViewModelProvider.notifier).switchState();
              },
            children: [
              TextSpan(
                text: context.locale!.signUp,
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
        AppButton(
          onTap: () {
            ref.read(authViewModelProvider.notifier).signIn(context.locale!);
          },
          title: context.locale!.signIn,
          loading: state is AuthViewStateLoading,
        ),
      ],
    );
  }
}
