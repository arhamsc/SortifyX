// ignore_for_file: public_member_api_docs, sort_constructors_first
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:reactive_forms/reactive_forms.dart';
import 'package:responsive_sizer/responsive_sizer.dart';
import 'package:sortifyx_app/config/injectable/injectable.dart';
import 'package:sortifyx_app/features/auth/application/cubits/cubits.dart';
import 'package:sortifyx_app/shared/app/app.dart';
import 'package:sortifyx_app/shared/app/cubits/modal_cubit/modal_cubit.dart';
import 'package:sortifyx_app/shared/data/data.dart';
import 'package:sortifyx_app/shared/utils/utils.dart';

class UsernameForm extends StatelessWidget {
  const UsernameForm({
    super.key,
    required this.onGoBack,
    required this.onGoToLogin,
  });
  final Function() onGoBack;
  final Function() onGoToLogin;

  @override
  Widget build(BuildContext context) {
    return BlocBuilder<UserBloc, UserState>(
      builder: (context, authState) {
        return ReactiveFormBuilder(
          form: () => context.read<AuthFormCubit>().state.signUpForm,
          builder: (context, form, _) {
            return Column(
              children: [
                SizedBox(
                  child: SingleChildScrollView(
                    child: Column(
                      children: [
                        MyTextfield(
                          label: "Username",
                          hintText: "enter username",
                          formFieldName: "username",
                          variant: 2,
                          suffixIcon: ReactiveStatusListenableBuilder(
                            formControlName: "username",
                            builder: (context, control, child) {
                              if (control.pending) {
                                getIt.get<ModalCubit>().showModal(
                                      modalMessage: "Checking for username",
                                      modalTitle: "Username",
                                      modalType: ModalType.loading,
                                    );
                                return Container(width: 0);
                              } else {
                                getIt.get<ModalCubit>().hideModal();
                                return Container(width: 0);
                              }
                            },
                          ),
                          validationMessages: {
                            'unique': (error) {
                              getIt.get<MyTalker>().talker.log(error);
                              return 'Username already taken.';
                            }
                          },
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
                  isSuccess: authState.status.isLoggedIn,
                  variant: 2,
                  width: 100.w,
                  onPressed: () {
                    // print(form.value);
                    // return;
                    if (form.control('username').value == null ||
                        (form.control('username').value as String).isEmpty) {
                      form.control('username').setErrors({
                        'required': true,
                      });
                      form.control('username').markAllAsTouched();
                      return;
                    }
                    form.control('username').removeError('required');
                    final signUpDto = SignUpDto.fromJson(form.value);
                    context.read<UserBloc>().add(
                          UserEvent.signUpRequest(
                            signUpDto: signUpDto,
                          ),
                        );
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
          },
        );
      },
    );
  }
}
