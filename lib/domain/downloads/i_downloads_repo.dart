import 'package:dartz/dartz.dart';
import 'package:netflixapp/domain/core/failures/mainfailures.dart';
import 'package:netflixapp/domain/downloads/models/downloadmodel.dart';

abstract class IdownloadsRepo {

Future<Either<MainFailure, List<DownloadsModels>>> getdownloadsImage();


  
}