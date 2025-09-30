// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'news_response_model.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

NewsResponseModel _$NewsResponseModelFromJson(Map<String, dynamic> json) {
  return _NewsResponseModel.fromJson(json);
}

/// @nodoc
mixin _$NewsResponseModel {
  String get status => throw _privateConstructorUsedError;
  int? get totalResults => throw _privateConstructorUsedError;
  List<ArticleModel> get articles => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $NewsResponseModelCopyWith<NewsResponseModel> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $NewsResponseModelCopyWith<$Res> {
  factory $NewsResponseModelCopyWith(
          NewsResponseModel value, $Res Function(NewsResponseModel) then) =
      _$NewsResponseModelCopyWithImpl<$Res, NewsResponseModel>;
  @useResult
  $Res call({String status, int? totalResults, List<ArticleModel> articles});
}

/// @nodoc
class _$NewsResponseModelCopyWithImpl<$Res, $Val extends NewsResponseModel>
    implements $NewsResponseModelCopyWith<$Res> {
  _$NewsResponseModelCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? status = null,
    Object? totalResults = freezed,
    Object? articles = null,
  }) {
    return _then(_value.copyWith(
      status: null == status
          ? _value.status
          : status // ignore: cast_nullable_to_non_nullable
              as String,
      totalResults: freezed == totalResults
          ? _value.totalResults
          : totalResults // ignore: cast_nullable_to_non_nullable
              as int?,
      articles: null == articles
          ? _value.articles
          : articles // ignore: cast_nullable_to_non_nullable
              as List<ArticleModel>,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$NewsResponseModelImplCopyWith<$Res>
    implements $NewsResponseModelCopyWith<$Res> {
  factory _$$NewsResponseModelImplCopyWith(_$NewsResponseModelImpl value,
          $Res Function(_$NewsResponseModelImpl) then) =
      __$$NewsResponseModelImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({String status, int? totalResults, List<ArticleModel> articles});
}

/// @nodoc
class __$$NewsResponseModelImplCopyWithImpl<$Res>
    extends _$NewsResponseModelCopyWithImpl<$Res, _$NewsResponseModelImpl>
    implements _$$NewsResponseModelImplCopyWith<$Res> {
  __$$NewsResponseModelImplCopyWithImpl(_$NewsResponseModelImpl _value,
      $Res Function(_$NewsResponseModelImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? status = null,
    Object? totalResults = freezed,
    Object? articles = null,
  }) {
    return _then(_$NewsResponseModelImpl(
      status: null == status
          ? _value.status
          : status // ignore: cast_nullable_to_non_nullable
              as String,
      totalResults: freezed == totalResults
          ? _value.totalResults
          : totalResults // ignore: cast_nullable_to_non_nullable
              as int?,
      articles: null == articles
          ? _value._articles
          : articles // ignore: cast_nullable_to_non_nullable
              as List<ArticleModel>,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$NewsResponseModelImpl implements _NewsResponseModel {
  const _$NewsResponseModelImpl(
      {required this.status,
      this.totalResults,
      required final List<ArticleModel> articles})
      : _articles = articles;

  factory _$NewsResponseModelImpl.fromJson(Map<String, dynamic> json) =>
      _$$NewsResponseModelImplFromJson(json);

  @override
  final String status;
  @override
  final int? totalResults;
  final List<ArticleModel> _articles;
  @override
  List<ArticleModel> get articles {
    if (_articles is EqualUnmodifiableListView) return _articles;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_articles);
  }

  @override
  String toString() {
    return 'NewsResponseModel(status: $status, totalResults: $totalResults, articles: $articles)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$NewsResponseModelImpl &&
            (identical(other.status, status) || other.status == status) &&
            (identical(other.totalResults, totalResults) ||
                other.totalResults == totalResults) &&
            const DeepCollectionEquality().equals(other._articles, _articles));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(runtimeType, status, totalResults,
      const DeepCollectionEquality().hash(_articles));

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$NewsResponseModelImplCopyWith<_$NewsResponseModelImpl> get copyWith =>
      __$$NewsResponseModelImplCopyWithImpl<_$NewsResponseModelImpl>(
          this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$NewsResponseModelImplToJson(
      this,
    );
  }
}

abstract class _NewsResponseModel implements NewsResponseModel {
  const factory _NewsResponseModel(
      {required final String status,
      final int? totalResults,
      required final List<ArticleModel> articles}) = _$NewsResponseModelImpl;

  factory _NewsResponseModel.fromJson(Map<String, dynamic> json) =
      _$NewsResponseModelImpl.fromJson;

  @override
  String get status;
  @override
  int? get totalResults;
  @override
  List<ArticleModel> get articles;
  @override
  @JsonKey(ignore: true)
  _$$NewsResponseModelImplCopyWith<_$NewsResponseModelImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
