import 'package:json_annotation/json_annotation.dart';

part 'search_model.g.dart';

@JsonSerializable()
class SearchModel {
  @JsonKey(name: 'results')
  List<SeachResultModel>? results;

  SearchModel({
    this.results=const [],
  });

  factory SearchModel.fromJson(Map<String, dynamic> json) {
    return _$SearchModelFromJson(json);
  }

  Map<String, dynamic> toJson() => _$SearchModelToJson(this);
}



@JsonSerializable()
class SeachResultModel {
  @JsonKey(name: 'id')
  int? id  ;

  @JsonKey(name: 'original_title')
  String? originalTitle;

  @JsonKey(name: 'poster_path')
  String? posterPath;

  SeachResultModel({
    this.id ,
    this.originalTitle,
    this.posterPath,
  });

  factory SeachResultModel.fromJson(Map<String, dynamic> json) {
    return _$SeachResultModelFromJson(json);
  }

  Map<String, dynamic> toJson() => _$SeachResultModelToJson(this);
}
