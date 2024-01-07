part of 'fast_laugh_bloc.dart';

@freezed
class FastLaughState with _$FastLaughState {
  const factory FastLaughState({
    required List<DownloadsModels> videolist,
    required bool isLoading,
    required bool isError,
  }) = _Initial;

  factory FastLaughState.initial() => FastLaughState(
        videolist: [],
        isLoading: true,
        isError: false,
      );
}
