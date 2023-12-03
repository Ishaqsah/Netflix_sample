
import 'package:freezed_annotation/freezed_annotation.dart';
part 'downloadmodel.freezed.dart';
part 'downloadmodel.g.dart';
@freezed
class DownloadsModels with _$DownloadsModels{

  const factory DownloadsModels({
   @JsonKey(name:'poster_path') required String? posterPath,
  }) = _DownloadsModels;

  factory DownloadsModels.fromJson(Map<String, dynamic> json) => _$DownloadsModelsFromJson(json);
}