// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'downloadmodel.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$DownloadsModelsImpl _$$DownloadsModelsImplFromJson(
        Map<String, dynamic> json) =>
    _$DownloadsModelsImpl(
      posterPath: json['poster_path'] as String?,
      backdroppath: json['backdrop_path'] as String?,
      title: json['title'] as String?,
    );

Map<String, dynamic> _$$DownloadsModelsImplToJson(
        _$DownloadsModelsImpl instance) =>
    <String, dynamic>{
      'poster_path': instance.posterPath,
      'backdrop_path': instance.backdroppath,
      'title': instance.title,
    };
