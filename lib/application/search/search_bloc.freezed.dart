// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'search_bloc.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

/// @nodoc
mixin _$SearchEvent {
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initials,
    required TResult Function(String movieQuery) searchmovie,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? initials,
    TResult? Function(String movieQuery)? searchmovie,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initials,
    TResult Function(String movieQuery)? searchmovie,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(initials value) initials,
    required TResult Function(searchmovie value) searchmovie,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(initials value)? initials,
    TResult? Function(searchmovie value)? searchmovie,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(initials value)? initials,
    TResult Function(searchmovie value)? searchmovie,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $SearchEventCopyWith<$Res> {
  factory $SearchEventCopyWith(
          SearchEvent value, $Res Function(SearchEvent) then) =
      _$SearchEventCopyWithImpl<$Res, SearchEvent>;
}

/// @nodoc
class _$SearchEventCopyWithImpl<$Res, $Val extends SearchEvent>
    implements $SearchEventCopyWith<$Res> {
  _$SearchEventCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;
}

/// @nodoc
abstract class _$$initialsImplCopyWith<$Res> {
  factory _$$initialsImplCopyWith(
          _$initialsImpl value, $Res Function(_$initialsImpl) then) =
      __$$initialsImplCopyWithImpl<$Res>;
}

/// @nodoc
class __$$initialsImplCopyWithImpl<$Res>
    extends _$SearchEventCopyWithImpl<$Res, _$initialsImpl>
    implements _$$initialsImplCopyWith<$Res> {
  __$$initialsImplCopyWithImpl(
      _$initialsImpl _value, $Res Function(_$initialsImpl) _then)
      : super(_value, _then);
}

/// @nodoc

class _$initialsImpl implements initials {
  const _$initialsImpl();

  @override
  String toString() {
    return 'SearchEvent.initials()';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is _$initialsImpl);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initials,
    required TResult Function(String movieQuery) searchmovie,
  }) {
    return initials();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? initials,
    TResult? Function(String movieQuery)? searchmovie,
  }) {
    return initials?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initials,
    TResult Function(String movieQuery)? searchmovie,
    required TResult orElse(),
  }) {
    if (initials != null) {
      return initials();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(initials value) initials,
    required TResult Function(searchmovie value) searchmovie,
  }) {
    return initials(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(initials value)? initials,
    TResult? Function(searchmovie value)? searchmovie,
  }) {
    return initials?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(initials value)? initials,
    TResult Function(searchmovie value)? searchmovie,
    required TResult orElse(),
  }) {
    if (initials != null) {
      return initials(this);
    }
    return orElse();
  }
}

abstract class initials implements SearchEvent {
  const factory initials() = _$initialsImpl;
}

/// @nodoc
abstract class _$$searchmovieImplCopyWith<$Res> {
  factory _$$searchmovieImplCopyWith(
          _$searchmovieImpl value, $Res Function(_$searchmovieImpl) then) =
      __$$searchmovieImplCopyWithImpl<$Res>;
  @useResult
  $Res call({String movieQuery});
}

/// @nodoc
class __$$searchmovieImplCopyWithImpl<$Res>
    extends _$SearchEventCopyWithImpl<$Res, _$searchmovieImpl>
    implements _$$searchmovieImplCopyWith<$Res> {
  __$$searchmovieImplCopyWithImpl(
      _$searchmovieImpl _value, $Res Function(_$searchmovieImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? movieQuery = null,
  }) {
    return _then(_$searchmovieImpl(
      movieQuery: null == movieQuery
          ? _value.movieQuery
          : movieQuery // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc

class _$searchmovieImpl implements searchmovie {
  const _$searchmovieImpl({required this.movieQuery});

  @override
  final String movieQuery;

  @override
  String toString() {
    return 'SearchEvent.searchmovie(movieQuery: $movieQuery)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$searchmovieImpl &&
            (identical(other.movieQuery, movieQuery) ||
                other.movieQuery == movieQuery));
  }

  @override
  int get hashCode => Object.hash(runtimeType, movieQuery);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$searchmovieImplCopyWith<_$searchmovieImpl> get copyWith =>
      __$$searchmovieImplCopyWithImpl<_$searchmovieImpl>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initials,
    required TResult Function(String movieQuery) searchmovie,
  }) {
    return searchmovie(movieQuery);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? initials,
    TResult? Function(String movieQuery)? searchmovie,
  }) {
    return searchmovie?.call(movieQuery);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initials,
    TResult Function(String movieQuery)? searchmovie,
    required TResult orElse(),
  }) {
    if (searchmovie != null) {
      return searchmovie(movieQuery);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(initials value) initials,
    required TResult Function(searchmovie value) searchmovie,
  }) {
    return searchmovie(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(initials value)? initials,
    TResult? Function(searchmovie value)? searchmovie,
  }) {
    return searchmovie?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(initials value)? initials,
    TResult Function(searchmovie value)? searchmovie,
    required TResult orElse(),
  }) {
    if (searchmovie != null) {
      return searchmovie(this);
    }
    return orElse();
  }
}

abstract class searchmovie implements SearchEvent {
  const factory searchmovie({required final String movieQuery}) =
      _$searchmovieImpl;

  String get movieQuery;
  @JsonKey(ignore: true)
  _$$searchmovieImplCopyWith<_$searchmovieImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
mixin _$SearchState {
  List<SeachResultModel> get searchresultlist =>
      throw _privateConstructorUsedError;
  List<DownloadsModels> get ideallist => throw _privateConstructorUsedError;
  bool get isloading => throw _privateConstructorUsedError;
  bool get iserror => throw _privateConstructorUsedError;

  @JsonKey(ignore: true)
  $SearchStateCopyWith<SearchState> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $SearchStateCopyWith<$Res> {
  factory $SearchStateCopyWith(
          SearchState value, $Res Function(SearchState) then) =
      _$SearchStateCopyWithImpl<$Res, SearchState>;
  @useResult
  $Res call(
      {List<SeachResultModel> searchresultlist,
      List<DownloadsModels> ideallist,
      bool isloading,
      bool iserror});
}

/// @nodoc
class _$SearchStateCopyWithImpl<$Res, $Val extends SearchState>
    implements $SearchStateCopyWith<$Res> {
  _$SearchStateCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? searchresultlist = null,
    Object? ideallist = null,
    Object? isloading = null,
    Object? iserror = null,
  }) {
    return _then(_value.copyWith(
      searchresultlist: null == searchresultlist
          ? _value.searchresultlist
          : searchresultlist // ignore: cast_nullable_to_non_nullable
              as List<SeachResultModel>,
      ideallist: null == ideallist
          ? _value.ideallist
          : ideallist // ignore: cast_nullable_to_non_nullable
              as List<DownloadsModels>,
      isloading: null == isloading
          ? _value.isloading
          : isloading // ignore: cast_nullable_to_non_nullable
              as bool,
      iserror: null == iserror
          ? _value.iserror
          : iserror // ignore: cast_nullable_to_non_nullable
              as bool,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$SearchStateImplCopyWith<$Res>
    implements $SearchStateCopyWith<$Res> {
  factory _$$SearchStateImplCopyWith(
          _$SearchStateImpl value, $Res Function(_$SearchStateImpl) then) =
      __$$SearchStateImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {List<SeachResultModel> searchresultlist,
      List<DownloadsModels> ideallist,
      bool isloading,
      bool iserror});
}

/// @nodoc
class __$$SearchStateImplCopyWithImpl<$Res>
    extends _$SearchStateCopyWithImpl<$Res, _$SearchStateImpl>
    implements _$$SearchStateImplCopyWith<$Res> {
  __$$SearchStateImplCopyWithImpl(
      _$SearchStateImpl _value, $Res Function(_$SearchStateImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? searchresultlist = null,
    Object? ideallist = null,
    Object? isloading = null,
    Object? iserror = null,
  }) {
    return _then(_$SearchStateImpl(
      searchresultlist: null == searchresultlist
          ? _value._searchresultlist
          : searchresultlist // ignore: cast_nullable_to_non_nullable
              as List<SeachResultModel>,
      ideallist: null == ideallist
          ? _value._ideallist
          : ideallist // ignore: cast_nullable_to_non_nullable
              as List<DownloadsModels>,
      isloading: null == isloading
          ? _value.isloading
          : isloading // ignore: cast_nullable_to_non_nullable
              as bool,
      iserror: null == iserror
          ? _value.iserror
          : iserror // ignore: cast_nullable_to_non_nullable
              as bool,
    ));
  }
}

/// @nodoc

class _$SearchStateImpl implements _SearchState {
  const _$SearchStateImpl(
      {required final List<SeachResultModel> searchresultlist,
      required final List<DownloadsModels> ideallist,
      required this.isloading,
      required this.iserror})
      : _searchresultlist = searchresultlist,
        _ideallist = ideallist;

  final List<SeachResultModel> _searchresultlist;
  @override
  List<SeachResultModel> get searchresultlist {
    if (_searchresultlist is EqualUnmodifiableListView)
      return _searchresultlist;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_searchresultlist);
  }

  final List<DownloadsModels> _ideallist;
  @override
  List<DownloadsModels> get ideallist {
    if (_ideallist is EqualUnmodifiableListView) return _ideallist;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_ideallist);
  }

  @override
  final bool isloading;
  @override
  final bool iserror;

  @override
  String toString() {
    return 'SearchState(searchresultlist: $searchresultlist, ideallist: $ideallist, isloading: $isloading, iserror: $iserror)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$SearchStateImpl &&
            const DeepCollectionEquality()
                .equals(other._searchresultlist, _searchresultlist) &&
            const DeepCollectionEquality()
                .equals(other._ideallist, _ideallist) &&
            (identical(other.isloading, isloading) ||
                other.isloading == isloading) &&
            (identical(other.iserror, iserror) || other.iserror == iserror));
  }

  @override
  int get hashCode => Object.hash(
      runtimeType,
      const DeepCollectionEquality().hash(_searchresultlist),
      const DeepCollectionEquality().hash(_ideallist),
      isloading,
      iserror);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$SearchStateImplCopyWith<_$SearchStateImpl> get copyWith =>
      __$$SearchStateImplCopyWithImpl<_$SearchStateImpl>(this, _$identity);
}

abstract class _SearchState implements SearchState {
  const factory _SearchState(
      {required final List<SeachResultModel> searchresultlist,
      required final List<DownloadsModels> ideallist,
      required final bool isloading,
      required final bool iserror}) = _$SearchStateImpl;

  @override
  List<SeachResultModel> get searchresultlist;
  @override
  List<DownloadsModels> get ideallist;
  @override
  bool get isloading;
  @override
  bool get iserror;
  @override
  @JsonKey(ignore: true)
  _$$SearchStateImplCopyWith<_$SearchStateImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
