// GENERATED CODE - DO NOT MODIFY BY HAND

// **************************************************************************
// InjectableConfigGenerator
// **************************************************************************

// ignore_for_file: type=lint
// coverage:ignore-file

// ignore_for_file: no_leading_underscores_for_library_prefixes
import 'package:get_it/get_it.dart' as _i1;
import 'package:injectable/injectable.dart' as _i2;
import 'package:netflixapp/application/downloads_bloc/downloads_bloc.dart'
    as _i8;
import 'package:netflixapp/application/fast_laugh/fast_laugh_bloc.dart' as _i9;
import 'package:netflixapp/application/search/search_bloc.dart' as _i7;
import 'package:netflixapp/domain/downloads/i_downloads_repo.dart' as _i3;
import 'package:netflixapp/domain/search/i_search_repo.dart' as _i5;
import 'package:netflixapp/infratructure/downloads/downloadsRepo.dart' as _i4;
import 'package:netflixapp/infratructure/search/search_repository.dart' as _i6;

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
    gh.lazySingleton<_i3.IdownloadsRepo>(() => _i4.DownloadsRepository());
    gh.lazySingleton<_i5.IsearchRepo>(() => _i6.SearchRepositry());
    gh.factory<_i7.SearchBloc>(() => _i7.SearchBloc(
          gh<_i3.IdownloadsRepo>(),
          gh<_i5.IsearchRepo>(),
        ));
    gh.factory<_i8.DownloadsBloc>(
        () => _i8.DownloadsBloc(gh<_i3.IdownloadsRepo>()));
    gh.factory<_i9.FastLaughBloc>(
        () => _i9.FastLaughBloc(gh<_i3.IdownloadsRepo>()));
    return this;
  }
}
