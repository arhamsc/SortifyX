// GENERATED CODE - DO NOT MODIFY BY HAND

// **************************************************************************
// InjectableConfigGenerator
// **************************************************************************

// ignore_for_file: type=lint
// coverage:ignore-file

// ignore_for_file: no_leading_underscores_for_library_prefixes
import 'package:get_it/get_it.dart' as _i1;
import 'package:injectable/injectable.dart' as _i2;
import 'package:sortifyx_app/features/auth/application/cubits/auth_form_cubit/auth_form_cubit.dart'
    as _i11;
import 'package:sortifyx_app/shared/api/dio_api.dart' as _i4;
import 'package:sortifyx_app/shared/app/blocs/auth_bloc/user_bloc.dart' as _i14;
import 'package:sortifyx_app/shared/app/blocs/family_bloc/family_bloc.dart'
    as _i12;
import 'package:sortifyx_app/shared/app/cubits/modal_cubit/modal_cubit.dart'
    as _i13;
import 'package:sortifyx_app/shared/app/router/my_app_router.dart' as _i7;
import 'package:sortifyx_app/shared/data/data.dart' as _i9;
import 'package:sortifyx_app/shared/data/data_sources/family_data_source.dart'
    as _i5;
import 'package:sortifyx_app/shared/data/data_sources/user_data_source.dart'
    as _i6;
import 'package:sortifyx_app/shared/data/repositories/family_repo.dart' as _i8;
import 'package:sortifyx_app/shared/data/repositories/user_repository.dart'
    as _i10;
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
    gh.factory<_i5.FamilyDataSource>(() => _i5.FamilyDataSource());
    gh.factory<_i6.UserDataSource>(() => _i6.UserDataSource());
    gh.singleton<_i7.AppRouter>(_i7.AppRouter());
    gh.singleton<_i8.FamilyRepository>(
        _i8.FamilyRepository(gh<_i9.FamilyDataSource>()));
    gh.factory<_i10.UserRepository>(
        () => _i10.UserRepository(gh<_i9.UserDataSource>()));
    gh.singleton<_i11.AuthFormCubit>(_i11.AuthFormCubit());
    gh.lazySingleton<_i12.FamilyBloc>(() => _i12.FamilyBloc());
    gh.lazySingleton<_i13.ModalCubit>(() => _i13.ModalCubit());
    gh.lazySingleton<_i14.UserBloc>(
        () => _i14.UserBloc(gh<_i9.UserRepository>()));
    return this;
  }
}
