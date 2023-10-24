import 'package:equatable/equatable.dart';
import 'package:hydrated_bloc/hydrated_bloc.dart';
import 'package:injectable/injectable.dart';
import 'package:reactive_forms/reactive_forms.dart';
import 'package:sortifyx_app/shared/utils/validators/unique_username_email_validator.dart';
import '../../../../../constants/constants.dart';

part 'auth_form_state.dart';

@singleton
class AuthFormCubit extends Cubit<AuthFormState> {
  AuthFormCubit() : super(AuthFormInitial());
}
