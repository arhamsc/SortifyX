// GENERATED CODE - DO NOT MODIFY BY HAND

// **************************************************************************
// InjectableConfigGenerator
// **************************************************************************

// ignore_for_file: type=lint
// coverage:ignore-file

// ignore_for_file: no_leading_underscores_for_library_prefixes
import 'package:get_it/get_it.dart' as _i1;
import 'package:injectable/injectable.dart' as _i2;
import 'package:sortifyx_app/features/family_auth/application/bloc/auth_bloc/auth_bloc.dart'
    as _i11;
import 'package:sortifyx_app/features/family_auth/application/cubits/auth_form_cubit/auth_form_cubit.dart'
    as _i8;
import 'package:sortifyx_app/features/family_auth/data/data.dart' as _i10;
import 'package:sortifyx_app/features/family_auth/data/data_source/auth_data_source.dart'
    as _i6;
import 'package:sortifyx_app/features/family_auth/data/repository/auth_repository.dart'
    as _i9;
import 'package:sortifyx_app/shared/api/api.dart' as _i7;
import 'package:sortifyx_app/shared/api/dio_api.dart' as _i4;
import 'package:sortifyx_app/shared/app/my_app_router.dart' as _i5;
import 'package:sortifyx_app/shared/utils/my_talker.dart' as _i3;

extension GetItInjectableX on _i1.GetIt {
// initializes the registration of main-scope dependencies inside of GetIt
  _i1.GetIt init({
    String? environment,
    _i2.EnvironmentFilter? environmentFilter,
  }) {
    final gh = _i2.GetItHelper(
      this,
      environment,
      environmentFilter,
    );
    gh.singleton<_i3.MyTalker>(_i3.MyTalker());
    gh.singleton<_i4.API>(_i4.API());
    gh.singleton<_i5.AppRouter>(_i5.AppRouter());
    gh.factory<_i6.AuthDataSource>(() => _i6.AuthDataSource(gh<_i7.API>()));
    gh.singleton<_i8.AuthFormCubit>(_i8.AuthFormCubit());
    gh.factory<_i9.AuthRepository>(
        () => _i9.AuthRepository(gh<_i10.AuthDataSource>()));
    gh.singleton<_i11.AuthBloc>(_i11.AuthBloc(gh<_i10.AuthRepository>()));
    return this;
  }
}
