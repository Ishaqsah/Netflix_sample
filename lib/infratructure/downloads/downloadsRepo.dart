
import 'package:dartz/dartz.dart';
import 'package:dio/dio.dart';
import 'package:injectable/injectable.dart';
import 'package:netflixapp/domain/core/api_end_point.dart';
import 'package:netflixapp/domain/core/failures/mainfailures.dart';
import 'package:netflixapp/domain/downloads/i_downloads_repo.dart';
import 'package:netflixapp/domain/downloads/models/downloadmodel.dart';

@LazySingleton(as: IdownloadsRepo)
class DownloadsRepository implements IdownloadsRepo {
  @override
  Future<Either<MainFailure, List<DownloadsModels>>> getdownloadsImage() async {
    try {
      final Response response =
          await Dio(BaseOptions()).get(ApiEndPoint.DownloadUrl);

      if (response.statusCode == 200 || response.statusCode == 201) {
        final downloadlist = (response.data['results'] as List).map(
          (e) {
            return DownloadsModels.fromJson(e);
          },
        ).toList();

        // final List<DownloadsModels> downloadsmodelList = [];
        // for (final raw in response.data) {
        //   downloadsmodelList
        //       .add(DownloadsModels.fromJson(raw as Map<String, dynamic>));
        // }
      
        return right(downloadlist);
      } else {
        return const Left(MainFailure.serverfailure());
      }
    } catch (e) {
      return const Left(MainFailure.clientfailure());
    }
  }
}
