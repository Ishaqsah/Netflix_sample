import 'package:bloc/bloc.dart';
import 'package:dartz/dartz.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:injectable/injectable.dart';
import 'package:netflixapp/domain/core/failures/mainfailures.dart';
import 'package:netflixapp/domain/downloads/i_downloads_repo.dart';
import 'package:netflixapp/domain/downloads/models/downloadmodel.dart';
import 'package:netflixapp/domain/search/i_search_repo.dart';
import 'package:netflixapp/domain/search/model/search_model/search_model.dart';

part 'search_event.dart';
part 'search_state.dart';
part 'search_bloc.freezed.dart';

@injectable
class SearchBloc extends Bloc<SearchEvent, SearchState> {
  final IdownloadsRepo downloadrepo;
  final IsearchRepo searchrepo;
  SearchBloc(this.downloadrepo, this.searchrepo)
      : super(SearchState.initial()) {
   
    //
    // ideal state
    on<initials>((event, emit) async {
       if (state.ideallist.isNotEmpty) {
      emit(
        SearchState(
            searchresultlist: [],
            ideallist: state.ideallist,
            isloading: false,
            iserror: false),
      );
      return;
    }
      emit(const SearchState(
        searchresultlist: [],
        ideallist: [],
        isloading: true,
        iserror: false,
      ));
      // get trending , show ui
      final _result = await downloadrepo.getdownloadsImage();

      final _state = _result.fold((MainFailure f) {
        return const SearchState(
          searchresultlist: [],
          ideallist: [],
          isloading: false,
          iserror: true,
        );
      }, (List<DownloadsModels> list) {
        return SearchState(
          searchresultlist: [],
          ideallist: list,
          isloading: false,
          iserror: false,
        );
      });

      emit(_state);
    });

    //
    // searchresultstate

    on<searchmovie>((event, emit)async {
      // get result , show ui
        emit(const SearchState(
        searchresultlist: [],
        ideallist: [],
        isloading: true,
        iserror: false,
      ));
      final result =   await searchrepo.searchmovies(moviequery: event.movieQuery);
      final _state = result.fold((MainFailure l){
     return const SearchState(
          searchresultlist: [],
          ideallist: [],
          isloading: false,
          iserror: true,
        );

      }, (SearchModel r) {
     return SearchState(
          searchresultlist: r.results ,
          ideallist: [],
          isloading: false,
          iserror: false,
        );

      }
      
      );
      emit(_state);
    });
  }
}
