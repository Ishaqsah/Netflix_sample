import 'package:bloc/bloc.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:injectable/injectable.dart';
import 'package:netflixapp/domain/core/failures/mainfailures.dart';
import 'package:netflixapp/domain/downloads/i_downloads_repo.dart';
import 'package:netflixapp/domain/downloads/models/downloadmodel.dart';

part 'fast_laugh_event.dart';
part 'fast_laugh_state.dart';
part 'fast_laugh_bloc.freezed.dart';

final videourl = [
  "http://commondatastorage.googleapis.com/gtv-videos-bucket/sample/BigBuckBunny.mp4",
  "http://commondatastorage.googleapis.com/gtv-videos-bucket/sample/ElephantsDream.mp4",
  "http://commondatastorage.googleapis.com/gtv-videos-bucket/sample/ForBiggerBlazes.mp4",
  "http://commondatastorage.googleapis.com/gtv-videos-bucket/sample/ForBiggerEscapes.mp4",
  "http://commondatastorage.googleapis.com/gtv-videos-bucket/sample/ForBiggerFun.mp4",
];

@injectable
class FastLaughBloc extends Bloc<FastLaughEvent, FastLaughState> {
  FastLaughBloc(
    IdownloadsRepo downloadservice,
  ) : super(FastLaughState.initial()) {
    on<Initialize>((event, emit) async {
      // sent loading to ui

      emit(const FastLaughState(
        videolist: [],
        isLoading: true,
        isError: false,
      ));

      // get trending movies
      final result = await downloadservice.getdownloadsImage();

      final _state = result.fold(
          (MainFailure l) => const FastLaughState(
                videolist: [],
                isLoading: false,
                isError: true,
              ),
          (resp) => FastLaughState(
                videolist: resp,
                isLoading: false,
                isError: false,
              ));

      //sent ui
      emit(_state);
    });
  }
}
