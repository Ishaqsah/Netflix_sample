import 'package:dartz/dartz.dart';
import 'package:netflixapp/domain/core/failures/mainfailures.dart';
import 'package:netflixapp/domain/search/model/search_model/search_model.dart';

abstract class IsearchRepo{

 Future<Either<MainFailure , SeachResultModel>> searchmovies(
  {required String moviequery}

 );


}