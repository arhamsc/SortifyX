// ignore_for_file: public_member_api_docs, sort_constructors_first
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:go_router/go_router.dart';
import 'package:reactive_forms/reactive_forms.dart';

import '../../../../shared/app/app.dart';
import '../../../../shared/utils/utils.dart';
import '../../../../shared/widgets/widgets.dart';
import '../../application/cubits/cubits.dart';

class LoginForm extends StatelessWidget {
  const LoginForm({
    Key? key,
    required this.onToggleAuth,
  }) : super(key: key);
  final Function() onToggleAuth;

  @override
  Widget build(BuildContext context) {
    return ReactiveFormBuilder(
        form: () => context.read<AuthFormCubit>().state.loginForm,
        builder: (context, form, _) {
          return Column(
            children: [
              const MyTextfield(
                label: "Username",
                hintText: "username/email",
                formFieldName: "username",
                variant: 2,
              ),
              SizedBoxSeparator(
                height: getHeight(20),
              ),
              const MyTextfield(
                label: "Password",
                hintText: "password",
                formFieldName: "password",
                variant: 2,
                hideText: true,
              ),
              SizedBoxSeparator(
                height: getHeight(10),
              ),
              Align(
                alignment: Alignment.centerRight,
                child: Text(
                  "Forgot Password?",
                  style: Theme.of(context).textTheme.displaySmall?.copyWith(
                        decoration: TextDecoration.underline,
                      ),
                ),
              ),
              SizedBoxSeparator(
                height: getHeight(30),
              ),
              PrimaryButton(
                label: "Login",
                variant: 2,
                onPressed: () {
                  if (form.invalid) {
                    form.markAllAsTouched();
                    return;
                  }

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
                onTap: onToggleAuth,
                child: Text.rich(
                  TextSpan(
                    text: "First Time? ",
                    style: Theme.of(context).textTheme.displaySmall,
                    children: [
                      TextSpan(
                        text: "Sign Up",
                        style:
                            Theme.of(context).textTheme.displaySmall?.copyWith(
                                  decoration: TextDecoration.underline,
                                ),
                      ),
                    ],
                  ),
                ),
              )
            ],
          );
        });
  }
}
