// GENERATED CODE - DO NOT MODIFY BY HAND

// **************************************************************************
// InjectableConfigGenerator
// **************************************************************************

// ignore_for_file: no_leading_underscores_for_library_prefixes
import 'package:dio/dio.dart' as _i3;
import 'package:get_it/get_it.dart' as _i1;
import 'package:injectable/injectable.dart' as _i2;

import 'injector.dart' as _i7;
import 'presenter/bloc/pokemon_api_result_bloc.dart' as _i6;
import 'repositories/interfaces/i_pokemon_api_result_repository.dart' as _i4;
import 'repositories/pokemon_api_result_repository_implements.dart'
    as _i5; // ignore_for_file: unnecessary_lambdas

// ignore_for_file: lines_longer_than_80_chars
/// initializes the registration of provided dependencies inside of [GetIt]
_i1.GetIt $initGetIt(_i1.GetIt get,
    {String? environment, _i2.EnvironmentFilter? environmentFilter}) {
  final gh = _i2.GetItHelper(get, environment, environmentFilter);
  final registerModule = _$RegisterModule();
  gh.factory<String>(() => registerModule.baseUrl, instanceName: 'BaseUrl');
  gh.singleton<_i3.Dio>(
      registerModule.dio(get<String>(instanceName: 'BaseUrl')));
  gh.factory<_i4.IPokemonApiResultRepository>(
      () => _i5.PokemonApiResultRepositoryImplements(get<_i3.Dio>()));
  gh.factory<_i6.PokemonApiResultBloc>(() => _i6.PokemonApiResultBloc(
      pokemonApiResultRepository: get<_i4.IPokemonApiResultRepository>()));
  return get;
}

class _$RegisterModule extends _i7.RegisterModule {}
