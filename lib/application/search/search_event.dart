part of 'search_bloc.dart';

@freezed
class SearchEvent with _$SearchEvent {
  const factory SearchEvent.initials() = initials;
  const factory SearchEvent.searchmovie(
    {required String movieQuery}
  ) = searchmovie;
}