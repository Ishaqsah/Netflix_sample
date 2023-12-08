part of 'search_bloc.dart';

@freezed
class SearchState with _$SearchState {
  const factory SearchState({
    required List<SeachResultModel> searchresultlist,
    required List<DownloadsModels> ideallist,
    required bool isloading,
    required bool iserror,
  }) = _SearchState;

  factory SearchState.initial() =>const SearchState(
        searchresultlist: [],
        ideallist: [],
        isloading: false,
        iserror: false,
      );
}
