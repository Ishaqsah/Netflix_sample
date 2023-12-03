// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'downloadmodel.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

DownloadsModels _$DownloadsModelsFromJson(Map<String, dynamic> json) {
  return _DownloadsModels.fromJson(json);
}

/// @nodoc
mixin _$DownloadsModels {
  @JsonKey(name: 'poster_path')
  String? get posterPath => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $DownloadsModelsCopyWith<DownloadsModels> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $DownloadsModelsCopyWith<$Res> {
  factory $DownloadsModelsCopyWith(
          DownloadsModels value, $Res Function(DownloadsModels) then) =
      _$DownloadsModelsCopyWithImpl<$Res, DownloadsModels>;
  @useResult
  $Res call({@JsonKey(name: 'poster_path') String? posterPath});
}

/// @nodoc
class _$DownloadsModelsCopyWithImpl<$Res, $Val extends DownloadsModels>
    implements $DownloadsModelsCopyWith<$Res> {
  _$DownloadsModelsCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? posterPath = freezed,
  }) {
    return _then(_value.copyWith(
      posterPath: freezed == posterPath
          ? _value.posterPath
          : posterPath // ignore: cast_nullable_to_non_nullable
              as String?,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$DownloadsModelsImplCopyWith<$Res>
    implements $DownloadsModelsCopyWith<$Res> {
  factory _$$DownloadsModelsImplCopyWith(_$DownloadsModelsImpl value,
          $Res Function(_$DownloadsModelsImpl) then) =
      __$$DownloadsModelsImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({@JsonKey(name: 'poster_path') String? posterPath});
}

/// @nodoc
class __$$DownloadsModelsImplCopyWithImpl<$Res>
    extends _$DownloadsModelsCopyWithImpl<$Res, _$DownloadsModelsImpl>
    implements _$$DownloadsModelsImplCopyWith<$Res> {
  __$$DownloadsModelsImplCopyWithImpl(
      _$DownloadsModelsImpl _value, $Res Function(_$DownloadsModelsImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? posterPath = freezed,
  }) {
    return _then(_$DownloadsModelsImpl(
      posterPath: freezed == posterPath
          ? _value.posterPath
          : posterPath // ignore: cast_nullable_to_non_nullable
              as String?,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$DownloadsModelsImpl implements _DownloadsModels {
  const _$DownloadsModelsImpl(
      {@JsonKey(name: 'poster_path') required this.posterPath});

  factory _$DownloadsModelsImpl.fromJson(Map<String, dynamic> json) =>
      _$$DownloadsModelsImplFromJson(json);

  @override
  @JsonKey(name: 'poster_path')
  final String? posterPath;

  @override
  String toString() {
    return 'DownloadsModels(posterPath: $posterPath)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$DownloadsModelsImpl &&
            (identical(other.posterPath, posterPath) ||
                other.posterPath == posterPath));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(runtimeType, posterPath);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$DownloadsModelsImplCopyWith<_$DownloadsModelsImpl> get copyWith =>
      __$$DownloadsModelsImplCopyWithImpl<_$DownloadsModelsImpl>(
          this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$DownloadsModelsImplToJson(
      this,
    );
  }
}

abstract class _DownloadsModels implements DownloadsModels {
  const factory _DownloadsModels(
          {@JsonKey(name: 'poster_path') required final String? posterPath}) =
      _$DownloadsModelsImpl;

  factory _DownloadsModels.fromJson(Map<String, dynamic> json) =
      _$DownloadsModelsImpl.fromJson;

  @override
  @JsonKey(name: 'poster_path')
  String? get posterPath;
  @override
  @JsonKey(ignore: true)
  _$$DownloadsModelsImplCopyWith<_$DownloadsModelsImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
