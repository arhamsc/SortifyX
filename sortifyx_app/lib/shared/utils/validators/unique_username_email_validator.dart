import 'package:reactive_forms/reactive_forms.dart';
import 'package:sortifyx_app/config/injectable/injectable.dart';
import 'package:sortifyx_app/features/auth/data/data.dart';

/// Validator that validates the user's username is unique, sending a request to
/// the Server.
class UniqueUsernameAsyncValidator extends AsyncValidator<dynamic> {
  @override
  Future<Map<String, dynamic>?> validate(
      AbstractControl<dynamic> control) async {
    final error = {'unique': false};

    if (control.dirty) {
      final isUniqueUsername = await getIt
          .get<UserRepository>()
          .checkUsernameOrEmail(username: control.value);
      if (isUniqueUsername.data != null && !isUniqueUsername.data!) {
        control.markAsTouched();
        return error;
      }
    }

    return null;
  }
}

class UniqueEmailAsyncValidator extends AsyncValidator<dynamic> {
  @override
  Future<Map<String, dynamic>?> validate(
      AbstractControl<dynamic> control) async {
    final error = {'unique': false};

    if (control.dirty) {
      final isUniqueEmail = await getIt
          .get<UserRepository>()
          .checkUsernameOrEmail(email: control.value);
      if (isUniqueEmail.data != null && !isUniqueEmail.data!) {
        control.markAsTouched();
        return error;
      }
    }

    return null;
  }
}
