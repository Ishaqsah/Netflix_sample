part of 'downloads_bloc.dart';

@freezed
class DownloadsState with _$DownloadsState {
  const factory DownloadsState({
    required bool isloading,
    List<DownloadsModels>? downloadmodel,
    required Option<Either<MainFailure, List<DownloadsModels>>>
        downloadsFailureOrSuccesOption,
  }) = _DownloadsState;

  factory DownloadsState.initial() {
    return const DownloadsState(
      isloading: false,
      downloadsFailureOrSuccesOption: None(),
    );
  }
}
