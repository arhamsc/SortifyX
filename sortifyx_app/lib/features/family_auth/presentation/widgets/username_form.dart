// ignore_for_file: public_member_api_docs, sort_constructors_first
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:go_router/go_router.dart';
import 'package:reactive_forms/reactive_forms.dart';
import 'package:sizer/sizer.dart';

import '../../../../shared/app/app.dart';
import '../../../../shared/utils/utils.dart';
import '../../../../shared/widgets/widgets.dart';
import '../../application/cubits/cubits.dart';


class UsernameForm extends StatelessWidget {
  const UsernameForm({
    Key? key,
    required this.onGoBack,
    required this.onGoToLogin,
  }) : super(key: key);
  final Function() onGoBack;
  final Function() onGoToLogin;
  @override
  Widget build(BuildContext context) {
    return ReactiveFormBuilder(
      form: () => context.read<AuthFormCubit>().state.signUpForm,
      builder: (context, form, _) {
        return Column(
          children: [
            SizedBox(
              child: SingleChildScrollView(
                child: Column(
                  children: [
                    const MyTextfield(
                      label: "Username",
                      hintText: "enter username",
                      formFieldName: "username",
                      variant: 2,
                    ),
                    SizedBoxSeparator(
                      height: getHeight(20),
                    ),
                  ],
                ),
              ),
            ),
            SizedBoxSeparator(
              height: getHeight(30),
            ),
            PrimaryButton(
              label: "Sign Up",
              variant: 2,
              width: 100.w,
              onPressed: () {
                if (form.control('username').value == null ||
                    (form.control('username').value as String).isEmpty) {
                  form.control('username').setErrors({
                    'required': true,
                  });
                  form.control('username').markAllAsTouched();
                  return;
                }
                form.control('username').removeError('required');
                print(form.value);
                Future.delayed(const Duration(seconds: 3), () {
                  context.goNamed(RouteDetails.authFamilyIntroPage.name);
                });
              },
            ),
            SizedBoxSeparator(
              height: getHeight(5),
            ),
            GestureDetector(
              onTap: onGoBack,
              child: Text(
                "Go back?",
                style: Theme.of(context).textTheme.displaySmall,
              ),
            ),
            SizedBoxSeparator(
              height: getHeight(10),
            ),
            GestureDetector(
              onTap: onGoToLogin,
              child: Text.rich(
                TextSpan(
                  text: "Have an account? ",
                  style: Theme.of(context).textTheme.displaySmall,
                  children: [
                    TextSpan(
                      text: "Login",
                      style: Theme.of(context).textTheme.displaySmall?.copyWith(
                            decoration: TextDecoration.underline,
                          ),
                    ),
                  ],
                ),
              ),
            )
          ],
        );
      },
    );
  }
}
