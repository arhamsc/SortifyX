// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'user_model.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

UserModel _$UserModelFromJson(Map<String, dynamic> json) {
  switch (json['runtimeType']) {
    case 'default':
      return User.fromJson(json);
    case 'essentialFields':
      return UserEssentialFields.fromJson(json);

    default:
      throw CheckedFromJsonException(json, 'runtimeType', 'UserModel',
          'Invalid union type "${json['runtimeType']}"!');
  }
}

/// @nodoc
mixin _$UserModel {
  String get id => throw _privateConstructorUsedError;
  String get username => throw _privateConstructorUsedError;
  String get email => throw _privateConstructorUsedError;
  String get firstName => throw _privateConstructorUsedError;
  String get lastName => throw _privateConstructorUsedError;
  String get phone => throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult when<TResult extends Object?>(
    TResult Function(
            String id,
            String username,
            String email,
            String firstName,
            String lastName,
            String phone,
            String? fcmToken,
            String? accessToken,
            String? refreshToken)
        $default, {
    required TResult Function(String id, String username, String email,
            String firstName, String lastName, String phone, bool? isAdmin)
        essentialFields,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>(
    TResult? Function(
            String id,
            String username,
            String email,
            String firstName,
            String lastName,
            String phone,
            String? fcmToken,
            String? accessToken,
            String? refreshToken)?
        $default, {
    TResult? Function(String id, String username, String email,
            String firstName, String lastName, String phone, bool? isAdmin)?
        essentialFields,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>(
    TResult Function(
            String id,
            String username,
            String email,
            String firstName,
            String lastName,
            String phone,
            String? fcmToken,
            String? accessToken,
            String? refreshToken)?
        $default, {
    TResult Function(String id, String username, String email, String firstName,
            String lastName, String phone, bool? isAdmin)?
        essentialFields,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>(
    TResult Function(User value) $default, {
    required TResult Function(UserEssentialFields value) essentialFields,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>(
    TResult? Function(User value)? $default, {
    TResult? Function(UserEssentialFields value)? essentialFields,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>(
    TResult Function(User value)? $default, {
    TResult Function(UserEssentialFields value)? essentialFields,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $UserModelCopyWith<UserModel> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $UserModelCopyWith<$Res> {
  factory $UserModelCopyWith(UserModel value, $Res Function(UserModel) then) =
      _$UserModelCopyWithImpl<$Res, UserModel>;
  @useResult
  $Res call(
      {String id,
      String username,
      String email,
      String firstName,
      String lastName,
      String phone});
}

/// @nodoc
class _$UserModelCopyWithImpl<$Res, $Val extends UserModel>
    implements $UserModelCopyWith<$Res> {
  _$UserModelCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = null,
    Object? username = null,
    Object? email = null,
    Object? firstName = null,
    Object? lastName = null,
    Object? phone = null,
  }) {
    return _then(_value.copyWith(
      id: null == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as String,
      username: null == username
          ? _value.username
          : username // ignore: cast_nullable_to_non_nullable
              as String,
      email: null == email
          ? _value.email
          : email // ignore: cast_nullable_to_non_nullable
              as String,
      firstName: null == firstName
          ? _value.firstName
          : firstName // ignore: cast_nullable_to_non_nullable
              as String,
      lastName: null == lastName
          ? _value.lastName
          : lastName // ignore: cast_nullable_to_non_nullable
              as String,
      phone: null == phone
          ? _value.phone
          : phone // ignore: cast_nullable_to_non_nullable
              as String,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$UserImplCopyWith<$Res> implements $UserModelCopyWith<$Res> {
  factory _$$UserImplCopyWith(
          _$UserImpl value, $Res Function(_$UserImpl) then) =
      __$$UserImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {String id,
      String username,
      String email,
      String firstName,
      String lastName,
      String phone,
      String? fcmToken,
      String? accessToken,
      String? refreshToken});
}

/// @nodoc
class __$$UserImplCopyWithImpl<$Res>
    extends _$UserModelCopyWithImpl<$Res, _$UserImpl>
    implements _$$UserImplCopyWith<$Res> {
  __$$UserImplCopyWithImpl(_$UserImpl _value, $Res Function(_$UserImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = null,
    Object? username = null,
    Object? email = null,
    Object? firstName = null,
    Object? lastName = null,
    Object? phone = null,
    Object? fcmToken = freezed,
    Object? accessToken = freezed,
    Object? refreshToken = freezed,
  }) {
    return _then(_$UserImpl(
      id: null == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as String,
      username: null == username
          ? _value.username
          : username // ignore: cast_nullable_to_non_nullable
              as String,
      email: null == email
          ? _value.email
          : email // ignore: cast_nullable_to_non_nullable
              as String,
      firstName: null == firstName
          ? _value.firstName
          : firstName // ignore: cast_nullable_to_non_nullable
              as String,
      lastName: null == lastName
          ? _value.lastName
          : lastName // ignore: cast_nullable_to_non_nullable
              as String,
      phone: null == phone
          ? _value.phone
          : phone // ignore: cast_nullable_to_non_nullable
              as String,
      fcmToken: freezed == fcmToken
          ? _value.fcmToken
          : fcmToken // ignore: cast_nullable_to_non_nullable
              as String?,
      accessToken: freezed == accessToken
          ? _value.accessToken
          : accessToken // ignore: cast_nullable_to_non_nullable
              as String?,
      refreshToken: freezed == refreshToken
          ? _value.refreshToken
          : refreshToken // ignore: cast_nullable_to_non_nullable
              as String?,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$UserImpl extends User with DiagnosticableTreeMixin {
  const _$UserImpl(
      {required this.id,
      required this.username,
      required this.email,
      required this.firstName,
      required this.lastName,
      required this.phone,
      this.fcmToken,
      this.accessToken,
      this.refreshToken,
      final String? $type})
      : $type = $type ?? 'default',
        super._();

  factory _$UserImpl.fromJson(Map<String, dynamic> json) =>
      _$$UserImplFromJson(json);

  @override
  final String id;
  @override
  final String username;
  @override
  final String email;
  @override
  final String firstName;
  @override
  final String lastName;
  @override
  final String phone;
  @override
  final String? fcmToken;
  @override
  final String? accessToken;
  @override
  final String? refreshToken;

  @JsonKey(name: 'runtimeType')
  final String $type;

  @override
  String toString({DiagnosticLevel minLevel = DiagnosticLevel.info}) {
    return 'UserModel(id: $id, username: $username, email: $email, firstName: $firstName, lastName: $lastName, phone: $phone, fcmToken: $fcmToken, accessToken: $accessToken, refreshToken: $refreshToken)';
  }

  @override
  void debugFillProperties(DiagnosticPropertiesBuilder properties) {
    super.debugFillProperties(properties);
    properties
      ..add(DiagnosticsProperty('type', 'UserModel'))
      ..add(DiagnosticsProperty('id', id))
      ..add(DiagnosticsProperty('username', username))
      ..add(DiagnosticsProperty('email', email))
      ..add(DiagnosticsProperty('firstName', firstName))
      ..add(DiagnosticsProperty('lastName', lastName))
      ..add(DiagnosticsProperty('phone', phone))
      ..add(DiagnosticsProperty('fcmToken', fcmToken))
      ..add(DiagnosticsProperty('accessToken', accessToken))
      ..add(DiagnosticsProperty('refreshToken', refreshToken));
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$UserImpl &&
            (identical(other.id, id) || other.id == id) &&
            (identical(other.username, username) ||
                other.username == username) &&
            (identical(other.email, email) || other.email == email) &&
            (identical(other.firstName, firstName) ||
                other.firstName == firstName) &&
            (identical(other.lastName, lastName) ||
                other.lastName == lastName) &&
            (identical(other.phone, phone) || other.phone == phone) &&
            (identical(other.fcmToken, fcmToken) ||
                other.fcmToken == fcmToken) &&
            (identical(other.accessToken, accessToken) ||
                other.accessToken == accessToken) &&
            (identical(other.refreshToken, refreshToken) ||
                other.refreshToken == refreshToken));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(runtimeType, id, username, email, firstName,
      lastName, phone, fcmToken, accessToken, refreshToken);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$UserImplCopyWith<_$UserImpl> get copyWith =>
      __$$UserImplCopyWithImpl<_$UserImpl>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>(
    TResult Function(
            String id,
            String username,
            String email,
            String firstName,
            String lastName,
            String phone,
            String? fcmToken,
            String? accessToken,
            String? refreshToken)
        $default, {
    required TResult Function(String id, String username, String email,
            String firstName, String lastName, String phone, bool? isAdmin)
        essentialFields,
  }) {
    return $default(id, username, email, firstName, lastName, phone, fcmToken,
        accessToken, refreshToken);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>(
    TResult? Function(
            String id,
            String username,
            String email,
            String firstName,
            String lastName,
            String phone,
            String? fcmToken,
            String? accessToken,
            String? refreshToken)?
        $default, {
    TResult? Function(String id, String username, String email,
            String firstName, String lastName, String phone, bool? isAdmin)?
        essentialFields,
  }) {
    return $default?.call(id, username, email, firstName, lastName, phone,
        fcmToken, accessToken, refreshToken);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>(
    TResult Function(
            String id,
            String username,
            String email,
            String firstName,
            String lastName,
            String phone,
            String? fcmToken,
            String? accessToken,
            String? refreshToken)?
        $default, {
    TResult Function(String id, String username, String email, String firstName,
            String lastName, String phone, bool? isAdmin)?
        essentialFields,
    required TResult orElse(),
  }) {
    if ($default != null) {
      return $default(id, username, email, firstName, lastName, phone, fcmToken,
          accessToken, refreshToken);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>(
    TResult Function(User value) $default, {
    required TResult Function(UserEssentialFields value) essentialFields,
  }) {
    return $default(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>(
    TResult? Function(User value)? $default, {
    TResult? Function(UserEssentialFields value)? essentialFields,
  }) {
    return $default?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>(
    TResult Function(User value)? $default, {
    TResult Function(UserEssentialFields value)? essentialFields,
    required TResult orElse(),
  }) {
    if ($default != null) {
      return $default(this);
    }
    return orElse();
  }

  @override
  Map<String, dynamic> toJson() {
    return _$$UserImplToJson(
      this,
    );
  }
}

abstract class User extends UserModel {
  const factory User(
      {required final String id,
      required final String username,
      required final String email,
      required final String firstName,
      required final String lastName,
      required final String phone,
      final String? fcmToken,
      final String? accessToken,
      final String? refreshToken}) = _$UserImpl;
  const User._() : super._();

  factory User.fromJson(Map<String, dynamic> json) = _$UserImpl.fromJson;

  @override
  String get id;
  @override
  String get username;
  @override
  String get email;
  @override
  String get firstName;
  @override
  String get lastName;
  @override
  String get phone;
  String? get fcmToken;
  String? get accessToken;
  String? get refreshToken;
  @override
  @JsonKey(ignore: true)
  _$$UserImplCopyWith<_$UserImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$UserEssentialFieldsImplCopyWith<$Res>
    implements $UserModelCopyWith<$Res> {
  factory _$$UserEssentialFieldsImplCopyWith(_$UserEssentialFieldsImpl value,
          $Res Function(_$UserEssentialFieldsImpl) then) =
      __$$UserEssentialFieldsImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {String id,
      String username,
      String email,
      String firstName,
      String lastName,
      String phone,
      bool? isAdmin});
}

/// @nodoc
class __$$UserEssentialFieldsImplCopyWithImpl<$Res>
    extends _$UserModelCopyWithImpl<$Res, _$UserEssentialFieldsImpl>
    implements _$$UserEssentialFieldsImplCopyWith<$Res> {
  __$$UserEssentialFieldsImplCopyWithImpl(_$UserEssentialFieldsImpl _value,
      $Res Function(_$UserEssentialFieldsImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = null,
    Object? username = null,
    Object? email = null,
    Object? firstName = null,
    Object? lastName = null,
    Object? phone = null,
    Object? isAdmin = freezed,
  }) {
    return _then(_$UserEssentialFieldsImpl(
      id: null == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as String,
      username: null == username
          ? _value.username
          : username // ignore: cast_nullable_to_non_nullable
              as String,
      email: null == email
          ? _value.email
          : email // ignore: cast_nullable_to_non_nullable
              as String,
      firstName: null == firstName
          ? _value.firstName
          : firstName // ignore: cast_nullable_to_non_nullable
              as String,
      lastName: null == lastName
          ? _value.lastName
          : lastName // ignore: cast_nullable_to_non_nullable
              as String,
      phone: null == phone
          ? _value.phone
          : phone // ignore: cast_nullable_to_non_nullable
              as String,
      isAdmin: freezed == isAdmin
          ? _value.isAdmin
          : isAdmin // ignore: cast_nullable_to_non_nullable
              as bool?,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$UserEssentialFieldsImpl extends UserEssentialFields
    with DiagnosticableTreeMixin {
  const _$UserEssentialFieldsImpl(
      {required this.id,
      required this.username,
      required this.email,
      required this.firstName,
      required this.lastName,
      required this.phone,
      this.isAdmin = false,
      final String? $type})
      : $type = $type ?? 'essentialFields',
        super._();

  factory _$UserEssentialFieldsImpl.fromJson(Map<String, dynamic> json) =>
      _$$UserEssentialFieldsImplFromJson(json);

  @override
  final String id;
  @override
  final String username;
  @override
  final String email;
  @override
  final String firstName;
  @override
  final String lastName;
  @override
  final String phone;
  @override
  @JsonKey()
  final bool? isAdmin;

  @JsonKey(name: 'runtimeType')
  final String $type;

  @override
  String toString({DiagnosticLevel minLevel = DiagnosticLevel.info}) {
    return 'UserModel.essentialFields(id: $id, username: $username, email: $email, firstName: $firstName, lastName: $lastName, phone: $phone, isAdmin: $isAdmin)';
  }

  @override
  void debugFillProperties(DiagnosticPropertiesBuilder properties) {
    super.debugFillProperties(properties);
    properties
      ..add(DiagnosticsProperty('type', 'UserModel.essentialFields'))
      ..add(DiagnosticsProperty('id', id))
      ..add(DiagnosticsProperty('username', username))
      ..add(DiagnosticsProperty('email', email))
      ..add(DiagnosticsProperty('firstName', firstName))
      ..add(DiagnosticsProperty('lastName', lastName))
      ..add(DiagnosticsProperty('phone', phone))
      ..add(DiagnosticsProperty('isAdmin', isAdmin));
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$UserEssentialFieldsImpl &&
            (identical(other.id, id) || other.id == id) &&
            (identical(other.username, username) ||
                other.username == username) &&
            (identical(other.email, email) || other.email == email) &&
            (identical(other.firstName, firstName) ||
                other.firstName == firstName) &&
            (identical(other.lastName, lastName) ||
                other.lastName == lastName) &&
            (identical(other.phone, phone) || other.phone == phone) &&
            (identical(other.isAdmin, isAdmin) || other.isAdmin == isAdmin));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(
      runtimeType, id, username, email, firstName, lastName, phone, isAdmin);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$UserEssentialFieldsImplCopyWith<_$UserEssentialFieldsImpl> get copyWith =>
      __$$UserEssentialFieldsImplCopyWithImpl<_$UserEssentialFieldsImpl>(
          this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>(
    TResult Function(
            String id,
            String username,
            String email,
            String firstName,
            String lastName,
            String phone,
            String? fcmToken,
            String? accessToken,
            String? refreshToken)
        $default, {
    required TResult Function(String id, String username, String email,
            String firstName, String lastName, String phone, bool? isAdmin)
        essentialFields,
  }) {
    return essentialFields(
        id, username, email, firstName, lastName, phone, isAdmin);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>(
    TResult? Function(
            String id,
            String username,
            String email,
            String firstName,
            String lastName,
            String phone,
            String? fcmToken,
            String? accessToken,
            String? refreshToken)?
        $default, {
    TResult? Function(String id, String username, String email,
            String firstName, String lastName, String phone, bool? isAdmin)?
        essentialFields,
  }) {
    return essentialFields?.call(
        id, username, email, firstName, lastName, phone, isAdmin);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>(
    TResult Function(
            String id,
            String username,
            String email,
            String firstName,
            String lastName,
            String phone,
            String? fcmToken,
            String? accessToken,
            String? refreshToken)?
        $default, {
    TResult Function(String id, String username, String email, String firstName,
            String lastName, String phone, bool? isAdmin)?
        essentialFields,
    required TResult orElse(),
  }) {
    if (essentialFields != null) {
      return essentialFields(
          id, username, email, firstName, lastName, phone, isAdmin);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>(
    TResult Function(User value) $default, {
    required TResult Function(UserEssentialFields value) essentialFields,
  }) {
    return essentialFields(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>(
    TResult? Function(User value)? $default, {
    TResult? Function(UserEssentialFields value)? essentialFields,
  }) {
    return essentialFields?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>(
    TResult Function(User value)? $default, {
    TResult Function(UserEssentialFields value)? essentialFields,
    required TResult orElse(),
  }) {
    if (essentialFields != null) {
      return essentialFields(this);
    }
    return orElse();
  }

  @override
  Map<String, dynamic> toJson() {
    return _$$UserEssentialFieldsImplToJson(
      this,
    );
  }
}

abstract class UserEssentialFields extends UserModel {
  const factory UserEssentialFields(
      {required final String id,
      required final String username,
      required final String email,
      required final String firstName,
      required final String lastName,
      required final String phone,
      final bool? isAdmin}) = _$UserEssentialFieldsImpl;
  const UserEssentialFields._() : super._();

  factory UserEssentialFields.fromJson(Map<String, dynamic> json) =
      _$UserEssentialFieldsImpl.fromJson;

  @override
  String get id;
  @override
  String get username;
  @override
  String get email;
  @override
  String get firstName;
  @override
  String get lastName;
  @override
  String get phone;
  bool? get isAdmin;
  @override
  @JsonKey(ignore: true)
  _$$UserEssentialFieldsImplCopyWith<_$UserEssentialFieldsImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
