part of 'auth_form_cubit.dart';

class AuthFormState extends Equatable {
  AuthFormState();

  final registerFamilyForm = FormGroup({
    "familyName": FormControl<String>(
      validators: [
        Validators.required,
        Validators.minLength(6),
      ],
    ),
  });

  final joinFamilyForm = FormGroup({
    "familyCode": FormControl<String>(
      validators: [
        Validators.required,
        // Validators.minLength(4),
      ],
    ),
  });

  final loginForm = FormGroup(
    {
      "username": FormControl<String>(validators: [
        Validators.required,
        Validators.composeOR(
          [
            Validators.email,
            Validators.minLength(5),
          ],
        ),
      ]),
      "password": FormControl<String>(
        validators: [
          Validators.required,
        ],
      ),
    },
  );

  final signUpForm = FormGroup(
    {
      "id": FormControl<String>(value: "aa"),//Dummy values
      "email": FormControl<String>(
          validators: [Validators.required, Validators.email]),
      "password": FormControl<String>(validators: [
        Validators.required,
        Validators.pattern(strongPasswordRegex),
      ]),
      "confirmPassword": FormControl<String>(validators: [Validators.required]),
      "firstName": FormControl<String>(validators: [Validators.required]),
      "lastName": FormControl<String>(validators: [Validators.required]),
      "phone": FormControl<String>(
        validators: [
          Validators.required,
          Validators.pattern(phoneRegex),
        ],
      ),
      "username": FormControl<String>(
        validators: [
          // Validators.required,
          Validators.minLength(5),
        ],
      ),
    },
    validators: [
      Validators.mustMatch(
        "password",
        "confirmPassword",
      ),
    ],
  );
  @override
  List<Object> get props => [
        loginForm,
        signUpForm,
      ];
}

class AuthFormInitial extends AuthFormState {}
