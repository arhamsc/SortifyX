import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:reactive_forms/reactive_forms.dart';
import 'package:sizer/sizer.dart';
import 'package:sortifyx_app/config/injectable/injectable.dart';

import '../../../../shared/utils/utils.dart';
import '../../../../shared/widgets/widgets.dart';
import '../../application/cubits/cubits.dart';

class RegisterFamilyForm extends StatefulWidget {
  const RegisterFamilyForm({
    super.key,
    required this.onGoBack,
  });

  final Function()? onGoBack;

  @override
  State<RegisterFamilyForm> createState() => _RegisterFamilyFormState();
}

class _RegisterFamilyFormState extends State<RegisterFamilyForm> {
  String _familyCode = "";

  void setFamilyCode(String familyName) {
    final code = generateFamilyCode(familyName);
    setState(() {
      _familyCode = code;
    });
  }

  @override
  Widget build(BuildContext context) {
    return BlocBuilder<AuthFormCubit, AuthFormState>(
      builder: (context, authFormState) => ReactiveFormBuilder(
        form: () => context.read<AuthFormCubit>().state.registerFamilyForm,
        builder: (context, form, _) => Column(
          children: [
            const MyTextfield(
              label: "Family Name",
              hintText: "enter family name",
              formFieldName: "familyName",
              variant: 2,
            ),
            SizedBoxSeparator(
              height: getHeight(30),
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                TextDisplayLarge(text: "Your Family Code is:\n$_familyCode"),
                // PrimaryButton(
                //   label: "Get Code",
                //   width: 20.w,
                //   height: 4.h,
                //   onPressed: () {
                //     if (form.invalid) {
                //       form.markAllAsTouched();
                //       return;
                //     }
                //     setFamilyCode(
                //       form.control('familyName').value,
                //     );
                //   },
                // ),
              ],
            ),
            SizedBoxSeparator(
              height: getHeight(30),
            ),
            PrimaryButton(
              label: "Register",
              variant: 2,
              width: 100.w,
              onPressed: () {
                if (form.invalid) {
                  form.markAllAsTouched();
                  return;
                }
                getIt.get<MyTalker>().talker.log(form.value);
              },
            ),
            SizedBoxSeparator(
              height: getHeight(5),
            ),
            GestureDetector(
              onTap: widget.onGoBack,
              child: Text(
                "Go back?",
                style: Theme.of(context).textTheme.displaySmall,
              ),
            ),
          ],
        ),
      ),
    );
  }
}
