// ignore_for_file: public_member_api_docs, sort_constructors_first
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:reactive_forms/reactive_forms.dart';
import 'package:responsive_sizer/responsive_sizer.dart';
import 'package:sortifyx_app/config/injectable/injectable.dart';
import 'package:sortifyx_app/shared/app/cubits/modal_cubit/modal_cubit.dart';

import '../../../../shared/utils/utils.dart';
import '../../../../shared/app/widgets/widgets.dart';
import '../../application/cubits/cubits.dart';

class SignupForm extends StatelessWidget {
  const SignupForm({
    super.key,
    required this.onToggleAuth,
    required this.onNext,
  });
  final Function() onToggleAuth;
  final Function() onNext;
  @override
  Widget build(BuildContext context) {
    return ReactiveFormBuilder(
      form: () => context.read<AuthFormCubit>().state.signUpForm,
      builder: (context, form, _) {
        return Column(
          children: [
            SizedBox(
              height: 45.h,
              child: SingleChildScrollView(
                child: Column(
                  children: [
                    MyTextfield(
                      label: "Email",
                      hintText: "enter email",
                      formFieldName: "email",
                      variant: 2,
                      suffixIcon: ReactiveStatusListenableBuilder(
                        formControlName: "email",
                        builder: (context, control, child) {
                          if (control.pending) {
                            getIt.get<ModalCubit>().showModal(
                                  modalMessage: "Checking for email",
                                  modalTitle: "Email",
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
                          return 'Email already exists.';
                        }
                      },
                    ),
                    SizedBoxSeparator(
                      height: getHeight(20),
                    ),
                    const MyTextfield(
                      label: "Password",
                      hintText: "enter password",
                      formFieldName: "password",
                      variant: 2,
                      hideText: true,
                    ),
                    SizedBoxSeparator(
                      height: getHeight(10),
                    ),
                    const MyTextfield(
                      label: "Confirm Password",
                      hintText: "enter password once more",
                      formFieldName: "confirmPassword",
                      variant: 2,
                      hideText: true,
                    ),
                    SizedBoxSeparator(
                      height: getHeight(10),
                    ),
                    Row(
                      children: [
                        const Expanded(
                          child: MyTextfield(
                            label: "First Name",
                            hintText: "first name",
                            formFieldName: "firstName",
                            variant: 2,
                          ),
                        ),
                        SizedBoxSeparator(
                          width: getWidth(20),
                        ),
                        const Expanded(
                          child: MyTextfield(
                            label: "Last Name",
                            hintText: "last name",
                            formFieldName: "lastName",
                            variant: 2,
                          ),
                        ),
                      ],
                    ),
                    SizedBoxSeparator(
                      height: getHeight(10),
                    ),
                    const MyTextfield(
                      label: "Phone",
                      hintText: "+91",
                      formFieldName: "phone",
                      variant: 2,
                    ),
                  ],
                ),
              ),
            ),
            SizedBoxSeparator(
              height: getHeight(30),
            ),
            PrimaryButton(
              label: "Next",
              variant: 2,
              width: 100.w,
              onPressed: () {
                if (form.invalid) {
                  form.markAllAsTouched();
                  getIt.get<MyTalker>().talker.warning(form.errors);
                  return;
                }
                onNext();
              },
            ),
            SizedBoxSeparator(
              height: getHeight(5),
            ),
            GestureDetector(
              onTap: onToggleAuth,
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
