import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:reactive_forms/reactive_forms.dart';
import 'package:sizer/sizer.dart';
import 'package:sortifyx_app/config/injectable/injectable.dart';

import '../../../../shared/utils/utils.dart';
import '../../../../shared/widgets/widgets.dart';
import '../../application/cubits/cubits.dart';

class JoinFamilyForm extends StatelessWidget {
  const JoinFamilyForm({
    super.key,
    required this.onGoBack,
  });

  final Function()? onGoBack;

  @override
  Widget build(BuildContext context) {
    return BlocBuilder<AuthFormCubit, AuthFormState>(
      builder: (context, authFormState) => ReactiveFormBuilder(
        form: () => context.read<AuthFormCubit>().state.joinFamilyForm,
        builder: (context, form, _) => Column(
          children: [
            const MyTextfield(
              label: "Family code",
              hintText: "enter family code",
              formFieldName: "familyCode",
              variant: 2,
            ),
            SizedBoxSeparator(
              height: getHeight(100),
            ),
            PrimaryButton(
              label: "Join",
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
              onTap: onGoBack,
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
