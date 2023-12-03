// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'downloads_bloc.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

/// @nodoc
mixin _$DownloadsEvent {
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() getdownloadsImage,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? getdownloadsImage,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? getdownloadsImage,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_getdownloadsImage value) getdownloadsImage,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_getdownloadsImage value)? getdownloadsImage,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_getdownloadsImage value)? getdownloadsImage,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $DownloadsEventCopyWith<$Res> {
  factory $DownloadsEventCopyWith(
          DownloadsEvent value, $Res Function(DownloadsEvent) then) =
      _$DownloadsEventCopyWithImpl<$Res, DownloadsEvent>;
}

/// @nodoc
class _$DownloadsEventCopyWithImpl<$Res, $Val extends DownloadsEvent>
    implements $DownloadsEventCopyWith<$Res> {
  _$DownloadsEventCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;
}

/// @nodoc
abstract class _$$getdownloadsImageImplCopyWith<$Res> {
  factory _$$getdownloadsImageImplCopyWith(_$getdownloadsImageImpl value,
          $Res Function(_$getdownloadsImageImpl) then) =
      __$$getdownloadsImageImplCopyWithImpl<$Res>;
}

/// @nodoc
class __$$getdownloadsImageImplCopyWithImpl<$Res>
    extends _$DownloadsEventCopyWithImpl<$Res, _$getdownloadsImageImpl>
    implements _$$getdownloadsImageImplCopyWith<$Res> {
  __$$getdownloadsImageImplCopyWithImpl(_$getdownloadsImageImpl _value,
      $Res Function(_$getdownloadsImageImpl) _then)
      : super(_value, _then);
}

/// @nodoc

class _$getdownloadsImageImpl implements _getdownloadsImage {
  const _$getdownloadsImageImpl();

  @override
  String toString() {
    return 'DownloadsEvent.getdownloadsImage()';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is _$getdownloadsImageImpl);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() getdownloadsImage,
  }) {
    return getdownloadsImage();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? getdownloadsImage,
  }) {
    return getdownloadsImage?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? getdownloadsImage,
    required TResult orElse(),
  }) {
    if (getdownloadsImage != null) {
      return getdownloadsImage();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_getdownloadsImage value) getdownloadsImage,
  }) {
    return getdownloadsImage(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_getdownloadsImage value)? getdownloadsImage,
  }) {
    return getdownloadsImage?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_getdownloadsImage value)? getdownloadsImage,
    required TResult orElse(),
  }) {
    if (getdownloadsImage != null) {
      return getdownloadsImage(this);
    }
    return orElse();
  }
}

abstract class _getdownloadsImage implements DownloadsEvent {
  const factory _getdownloadsImage() = _$getdownloadsImageImpl;
}

/// @nodoc
mixin _$DownloadsState {
  bool get isloading => throw _privateConstructorUsedError;
  List<DownloadsModels>? get downloadmodel =>
      throw _privateConstructorUsedError;
  Option<Either<MainFailure, List<DownloadsModels>>>
      get downloadsFailureOrSuccesOption => throw _privateConstructorUsedError;

  @JsonKey(ignore: true)
  $DownloadsStateCopyWith<DownloadsState> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $DownloadsStateCopyWith<$Res> {
  factory $DownloadsStateCopyWith(
          DownloadsState value, $Res Function(DownloadsState) then) =
      _$DownloadsStateCopyWithImpl<$Res, DownloadsState>;
  @useResult
  $Res call(
      {bool isloading,
      List<DownloadsModels>? downloadmodel,
      Option<Either<MainFailure, List<DownloadsModels>>>
          downloadsFailureOrSuccesOption});
}

/// @nodoc
class _$DownloadsStateCopyWithImpl<$Res, $Val extends DownloadsState>
    implements $DownloadsStateCopyWith<$Res> {
  _$DownloadsStateCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? isloading = null,
    Object? downloadmodel = freezed,
    Object? downloadsFailureOrSuccesOption = null,
  }) {
    return _then(_value.copyWith(
      isloading: null == isloading
          ? _value.isloading
          : isloading // ignore: cast_nullable_to_non_nullable
              as bool,
      downloadmodel: freezed == downloadmodel
          ? _value.downloadmodel
          : downloadmodel // ignore: cast_nullable_to_non_nullable
              as List<DownloadsModels>?,
      downloadsFailureOrSuccesOption: null == downloadsFailureOrSuccesOption
          ? _value.downloadsFailureOrSuccesOption
          : downloadsFailureOrSuccesOption // ignore: cast_nullable_to_non_nullable
              as Option<Either<MainFailure, List<DownloadsModels>>>,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$DownloadsStateImplCopyWith<$Res>
    implements $DownloadsStateCopyWith<$Res> {
  factory _$$DownloadsStateImplCopyWith(_$DownloadsStateImpl value,
          $Res Function(_$DownloadsStateImpl) then) =
      __$$DownloadsStateImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {bool isloading,
      List<DownloadsModels>? downloadmodel,
      Option<Either<MainFailure, List<DownloadsModels>>>
          downloadsFailureOrSuccesOption});
}

/// @nodoc
class __$$DownloadsStateImplCopyWithImpl<$Res>
    extends _$DownloadsStateCopyWithImpl<$Res, _$DownloadsStateImpl>
    implements _$$DownloadsStateImplCopyWith<$Res> {
  __$$DownloadsStateImplCopyWithImpl(
      _$DownloadsStateImpl _value, $Res Function(_$DownloadsStateImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? isloading = null,
    Object? downloadmodel = freezed,
    Object? downloadsFailureOrSuccesOption = null,
  }) {
    return _then(_$DownloadsStateImpl(
      isloading: null == isloading
          ? _value.isloading
          : isloading // ignore: cast_nullable_to_non_nullable
              as bool,
      downloadmodel: freezed == downloadmodel
          ? _value._downloadmodel
          : downloadmodel // ignore: cast_nullable_to_non_nullable
              as List<DownloadsModels>?,
      downloadsFailureOrSuccesOption: null == downloadsFailureOrSuccesOption
          ? _value.downloadsFailureOrSuccesOption
          : downloadsFailureOrSuccesOption // ignore: cast_nullable_to_non_nullable
              as Option<Either<MainFailure, List<DownloadsModels>>>,
    ));
  }
}

/// @nodoc

class _$DownloadsStateImpl implements _DownloadsState {
  const _$DownloadsStateImpl(
      {required this.isloading,
      final List<DownloadsModels>? downloadmodel,
      required this.downloadsFailureOrSuccesOption})
      : _downloadmodel = downloadmodel;

  @override
  final bool isloading;
  final List<DownloadsModels>? _downloadmodel;
  @override
  List<DownloadsModels>? get downloadmodel {
    final value = _downloadmodel;
    if (value == null) return null;
    if (_downloadmodel is EqualUnmodifiableListView) return _downloadmodel;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(value);
  }

  @override
  final Option<Either<MainFailure, List<DownloadsModels>>>
      downloadsFailureOrSuccesOption;

  @override
  String toString() {
    return 'DownloadsState(isloading: $isloading, downloadmodel: $downloadmodel, downloadsFailureOrSuccesOption: $downloadsFailureOrSuccesOption)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$DownloadsStateImpl &&
            (identical(other.isloading, isloading) ||
                other.isloading == isloading) &&
            const DeepCollectionEquality()
                .equals(other._downloadmodel, _downloadmodel) &&
            (identical(other.downloadsFailureOrSuccesOption,
                    downloadsFailureOrSuccesOption) ||
                other.downloadsFailureOrSuccesOption ==
                    downloadsFailureOrSuccesOption));
  }

  @override
  int get hashCode => Object.hash(
      runtimeType,
      isloading,
      const DeepCollectionEquality().hash(_downloadmodel),
      downloadsFailureOrSuccesOption);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$DownloadsStateImplCopyWith<_$DownloadsStateImpl> get copyWith =>
      __$$DownloadsStateImplCopyWithImpl<_$DownloadsStateImpl>(
          this, _$identity);
}

abstract class _DownloadsState implements DownloadsState {
  const factory _DownloadsState(
      {required final bool isloading,
      final List<DownloadsModels>? downloadmodel,
      required final Option<Either<MainFailure, List<DownloadsModels>>>
          downloadsFailureOrSuccesOption}) = _$DownloadsStateImpl;

  @override
  bool get isloading;
  @override
  List<DownloadsModels>? get downloadmodel;
  @override
  Option<Either<MainFailure, List<DownloadsModels>>>
      get downloadsFailureOrSuccesOption;
  @override
  @JsonKey(ignore: true)
  _$$DownloadsStateImplCopyWith<_$DownloadsStateImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
