import 'dart:developer';

import 'package:dartz/dartz.dart';
import 'package:dio/dio.dart';
import 'package:injectable/injectable.dart';
import 'package:netflixapp/domain/core/api_end_point.dart';
import 'package:netflixapp/domain/core/failures/mainfailures.dart';
import 'package:netflixapp/domain/search/i_search_repo.dart';
import 'package:netflixapp/domain/search/model/search_model/search_model.dart';

@LazySingleton(as: IsearchRepo)
class SearchRepositry implements IsearchRepo {
  @override
  Future<Either<MainFailure, SearchModel>> searchmovies(
      {required String moviequery}) async {
    try {
      final Response response =
          await Dio(BaseOptions()).get(ApiEndPoint.SearchUrl, queryParameters: {
        'query': moviequery,
      });

      log(response.data.toString());

      if (response.statusCode == 200 || response.statusCode == 201) {
        final searchresult = SearchModel.fromJson(response.data);

        return right(searchresult);
      } else {
        return const Left(MainFailure.serverfailure());
      }
    } catch (e) {
      log(e.toString());
      return const Left(MainFailure.clientfailure());
    }
  }
}
