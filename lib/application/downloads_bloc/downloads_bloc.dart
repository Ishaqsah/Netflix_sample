import 'package:bloc/bloc.dart';
import 'package:dartz/dartz.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:netflixapp/domain/core/failures/mainfailures.dart';
import 'package:netflixapp/domain/downloads/i_downloads_repo.dart';
import 'package:netflixapp/domain/downloads/models/downloadmodel.dart';

part 'downloads_event.dart';
part 'downloads_state.dart';
part 'downloads_bloc.freezed.dart';

class DownloadsBloc extends Bloc<DownloadsEvent, DownloadsState> {
  final IdownloadsRepo _idownloadrepo;

  DownloadsBloc(this._idownloadrepo) : super(DownloadsState.initial()) {
    on<_getdownloadsImage>((event, emit) async {
      emit(state.copyWith(
        isloading: false,
        downloadsFailureOrSuccesOption: none(),
      ));
      final Either<MainFailure, List<DownloadsModels>> downloadoptions =
          await _idownloadrepo.getdownloadsImage();

      emit(downloadoptions.fold(
          (failure) => state.copyWith(
              isloading: false,
              downloadsFailureOrSuccesOption: some(left(failure))),
          (success) => state.copyWith(
              isloading: false,
              downloadmodel: success,
              downloadsFailureOrSuccesOption: some(right(success),
              
              ))));
    });
  }
}
