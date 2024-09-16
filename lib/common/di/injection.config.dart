// GENERATED CODE - DO NOT MODIFY BY HAND

// **************************************************************************
// InjectableConfigGenerator
// **************************************************************************

// ignore_for_file: type=lint
// coverage:ignore-file

// ignore_for_file: no_leading_underscores_for_library_prefixes
import 'package:dio/dio.dart' as _i361;
import 'package:get_it/get_it.dart' as _i174;
import 'package:injectable/injectable.dart' as _i526;

import '../../features/auth/data/auth_shared_preference.dart' as _i1034;
import '../../features/fact/data/fact_api.dart' as _i175;
import '../../features/fact/data/fact_repository_impl.dart' as _i56;
import '../../features/fact/domain/fact_repository.dart' as _i880;
import '../../features/fact/domain/usecases/get_fact_usecase.dart' as _i866;
import '../../features/fact/presentation/cubits/get_fact_cubit.dart' as _i893;
import 'data_module.dart' as _i444;
import 'domain_module.dart' as _i435;
import 'fact_feature_module.dart' as _i357;

extension GetItInjectableX on _i174.GetIt {
// initializes the registration of main-scope dependencies inside of GetIt
  _i174.GetIt init({
    String? environment,
    _i526.EnvironmentFilter? environmentFilter,
  }) {
    final gh = _i526.GetItHelper(
      this,
      environment,
      environmentFilter,
    );
    final dataModule = _$DataModule(this);
    final domainModule = _$DomainModule(this);
    final factFeatureModule = _$FactFeatureModule(this);
    gh.singleton<_i1034.AuthSharedPreference>(
        () => dataModule.authSharedPreference);
    gh.singleton<_i361.Dio>(() => dataModule.dio);
    gh.singleton<_i175.FactApi>(() => dataModule.factApi);
    gh.lazySingleton<_i880.FactRepository>(() => domainModule.factRepository);
    gh.lazySingleton<_i866.GetFactUsecase>(() => domainModule.getFactUsecase);
    gh.factory<_i893.GetFactCubit>(() => factFeatureModule.getFactCubit);
    return this;
  }
}

class _$DataModule extends _i444.DataModule {
  _$DataModule(this._getIt);

  final _i174.GetIt _getIt;

  @override
  _i1034.AuthSharedPreference get authSharedPreference =>
      _i1034.AuthSharedPreference();

  @override
  _i175.FactApi get factApi => _i175.FactApi(_getIt<_i361.Dio>());
}

class _$DomainModule extends _i435.DomainModule {
  _$DomainModule(this._getIt);

  final _i174.GetIt _getIt;

  @override
  _i56.FactRepositoryImpl get factRepository =>
      _i56.FactRepositoryImpl(remoteDataApi: _getIt<_i175.FactApi>());

  @override
  _i866.GetFactUsecase get getFactUsecase =>
      _i866.GetFactUsecase(_getIt<_i880.FactRepository>());
}

class _$FactFeatureModule extends _i357.FactFeatureModule {
  _$FactFeatureModule(this._getIt);

  final _i174.GetIt _getIt;

  @override
  _i893.GetFactCubit get getFactCubit =>
      _i893.GetFactCubit(_getIt<_i866.GetFactUsecase>());
}
