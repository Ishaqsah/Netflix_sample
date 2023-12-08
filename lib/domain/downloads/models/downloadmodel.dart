import 'package:freezed_annotation/freezed_annotation.dart';
part 'downloadmodel.freezed.dart';
part 'downloadmodel.g.dart';

@freezed
class DownloadsModels with _$DownloadsModels {
  const factory DownloadsModels({
    @JsonKey(name: 'poster_path' ) 
    required String? posterPath ,

    @JsonKey(name: 'backdrop_path') 
    required String? backdroppath,

   @JsonKey(name: 'title') 
   required String? title 
  }) = _DownloadsModels;

  factory DownloadsModels.fromJson(Map<String, dynamic> json) =>
      _$DownloadsModelsFromJson(json);

     
}
