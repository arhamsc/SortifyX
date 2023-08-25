// ignore_for_file: public_member_api_docs, sort_constructors_first
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:go_router/go_router.dart';
import 'package:reactive_forms/reactive_forms.dart';
import 'package:sortifyx_app/features/family_auth/domain/models/user_model.dart';

import '../../../../shared/app/app.dart';
import '../../../../shared/utils/utils.dart';
import '../../../../shared/widgets/widgets.dart';
import '../../application/bloc/bloc.dart';
import '../../application/cubits/cubits.dart';

class LoginForm extends StatelessWidget {
  const LoginForm({
    Key? key,
    required this.onToggleAuth,
  }) : super(key: key);
  final Function() onToggleAuth;

  @override
  Widget build(BuildContext context) {
    return BlocBuilder<AuthBloc, AuthState>(
      builder: (context, authState) {
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
                  PrimaryAnimatedButton(
                    label: "Login",
                    variant: 2,
                    isSuccess: authState.status.isLoggedIn,
                    successCallback: () {
                      //TODO: Navigate to family reg page.
                      // if (authState.user.familyId == null ||
                      //     (authState.user.familyId ?? "").isEmpty) {
                      //   context.goNamed(
                      //     RouteDetails.authFamilyIntroPage.name,
                      //   );
                      // } else {
                      context.goNamed(
                        RouteDetails.documentsHomePage.name,
                      );
                      // }
                    },
                    onPressed: () {
                      if (form.invalid) {
                        form.markAllAsTouched();
                        return;
                      }

                      context.read<AuthBloc>().add(
                            AuthLoginRequest(
                              username:
                                  form.control('username').value.toString(),
                              password:
                                  form.control('password').value.toString(),
                            ),
                          );
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
                            style: Theme.of(context)
                                .textTheme
                                .displaySmall
                                ?.copyWith(
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
      },
    );
  }
}
