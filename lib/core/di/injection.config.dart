// GENERATED CODE - DO NOT MODIFY BY HAND

// **************************************************************************
// InjectableConfigGenerator
// **************************************************************************

// ignore_for_file: type=lint
// coverage:ignore-file

// ignore_for_file: no_leading_underscores_for_library_prefixes
import 'package:cbc_news_reader/core/network/network_service.dart' as _i84;
import 'package:cbc_news_reader/features/news/data/datasources/news_remote_data_source.dart'
    as _i429;
import 'package:cbc_news_reader/features/news/data/repositories/news_repository_impl.dart'
    as _i953;
import 'package:cbc_news_reader/features/news/domain/repositories/news_repository.dart'
    as _i253;
import 'package:cbc_news_reader/features/news/domain/usecases/get_news_articles.dart'
    as _i58;
import 'package:cbc_news_reader/features/news/domain/usecases/search_articles.dart'
    as _i304;
import 'package:cbc_news_reader/features/news/presentation/bloc/news_bloc.dart'
    as _i45;
import 'package:dio/dio.dart' as _i361;
import 'package:get_it/get_it.dart' as _i174;
import 'package:injectable/injectable.dart' as _i526;
import 'package:logger/logger.dart' as _i974;

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
    final networkModule = _$NetworkModule();
    gh.lazySingleton<_i361.Dio>(() => networkModule.dio());
    gh.lazySingleton<_i974.Logger>(() => networkModule.logger());
    gh.lazySingleton<_i84.NetworkInfo>(() => _i84.NetworkInfoImpl());
    gh.lazySingleton<_i429.NewsRemoteDataSource>(
        () => _i429.NewsRemoteDataSourceImpl(gh<_i361.Dio>()));
    gh.lazySingleton<_i253.NewsRepository>(() => _i953.NewsRepositoryImpl(
          remoteDataSource: gh<_i429.NewsRemoteDataSource>(),
          networkInfo: gh<_i84.NetworkInfo>(),
        ));
    gh.lazySingleton<_i58.GetNewsArticles>(
        () => _i58.GetNewsArticles(gh<_i253.NewsRepository>()));
    gh.lazySingleton<_i304.SearchArticles>(
        () => _i304.SearchArticles(gh<_i253.NewsRepository>()));
    gh.factory<_i45.NewsBloc>(() => _i45.NewsBloc(
          getNewsArticles: gh<_i58.GetNewsArticles>(),
          searchArticles: gh<_i304.SearchArticles>(),
        ));
    return this;
  }
}

class _$NetworkModule extends _i84.NetworkModule {}
