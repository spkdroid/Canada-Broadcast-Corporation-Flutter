// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'article_model.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

ArticleModel _$ArticleModelFromJson(Map<String, dynamic> json) {
  return _ArticleModel.fromJson(json);
}

/// @nodoc
mixin _$ArticleModel {
  String? get id => throw _privateConstructorUsedError;
  NewsSourceModel? get source => throw _privateConstructorUsedError;
  String? get author => throw _privateConstructorUsedError;
  String get title => throw _privateConstructorUsedError;
  String? get description => throw _privateConstructorUsedError;
  String? get url => throw _privateConstructorUsedError;
  @JsonKey(name: 'urlToImage')
  String? get imageUrl => throw _privateConstructorUsedError;
  @JsonKey(name: 'publishedAt')
  String? get publishedAtString => throw _privateConstructorUsedError;
  String? get content => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $ArticleModelCopyWith<ArticleModel> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $ArticleModelCopyWith<$Res> {
  factory $ArticleModelCopyWith(
          ArticleModel value, $Res Function(ArticleModel) then) =
      _$ArticleModelCopyWithImpl<$Res, ArticleModel>;
  @useResult
  $Res call(
      {String? id,
      NewsSourceModel? source,
      String? author,
      String title,
      String? description,
      String? url,
      @JsonKey(name: 'urlToImage') String? imageUrl,
      @JsonKey(name: 'publishedAt') String? publishedAtString,
      String? content});

  $NewsSourceModelCopyWith<$Res>? get source;
}

/// @nodoc
class _$ArticleModelCopyWithImpl<$Res, $Val extends ArticleModel>
    implements $ArticleModelCopyWith<$Res> {
  _$ArticleModelCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = freezed,
    Object? source = freezed,
    Object? author = freezed,
    Object? title = null,
    Object? description = freezed,
    Object? url = freezed,
    Object? imageUrl = freezed,
    Object? publishedAtString = freezed,
    Object? content = freezed,
  }) {
    return _then(_value.copyWith(
      id: freezed == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as String?,
      source: freezed == source
          ? _value.source
          : source // ignore: cast_nullable_to_non_nullable
              as NewsSourceModel?,
      author: freezed == author
          ? _value.author
          : author // ignore: cast_nullable_to_non_nullable
              as String?,
      title: null == title
          ? _value.title
          : title // ignore: cast_nullable_to_non_nullable
              as String,
      description: freezed == description
          ? _value.description
          : description // ignore: cast_nullable_to_non_nullable
              as String?,
      url: freezed == url
          ? _value.url
          : url // ignore: cast_nullable_to_non_nullable
              as String?,
      imageUrl: freezed == imageUrl
          ? _value.imageUrl
          : imageUrl // ignore: cast_nullable_to_non_nullable
              as String?,
      publishedAtString: freezed == publishedAtString
          ? _value.publishedAtString
          : publishedAtString // ignore: cast_nullable_to_non_nullable
              as String?,
      content: freezed == content
          ? _value.content
          : content // ignore: cast_nullable_to_non_nullable
              as String?,
    ) as $Val);
  }

  @override
  @pragma('vm:prefer-inline')
  $NewsSourceModelCopyWith<$Res>? get source {
    if (_value.source == null) {
      return null;
    }

    return $NewsSourceModelCopyWith<$Res>(_value.source!, (value) {
      return _then(_value.copyWith(source: value) as $Val);
    });
  }
}

/// @nodoc
abstract class _$$ArticleModelImplCopyWith<$Res>
    implements $ArticleModelCopyWith<$Res> {
  factory _$$ArticleModelImplCopyWith(
          _$ArticleModelImpl value, $Res Function(_$ArticleModelImpl) then) =
      __$$ArticleModelImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {String? id,
      NewsSourceModel? source,
      String? author,
      String title,
      String? description,
      String? url,
      @JsonKey(name: 'urlToImage') String? imageUrl,
      @JsonKey(name: 'publishedAt') String? publishedAtString,
      String? content});

  @override
  $NewsSourceModelCopyWith<$Res>? get source;
}

/// @nodoc
class __$$ArticleModelImplCopyWithImpl<$Res>
    extends _$ArticleModelCopyWithImpl<$Res, _$ArticleModelImpl>
    implements _$$ArticleModelImplCopyWith<$Res> {
  __$$ArticleModelImplCopyWithImpl(
      _$ArticleModelImpl _value, $Res Function(_$ArticleModelImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = freezed,
    Object? source = freezed,
    Object? author = freezed,
    Object? title = null,
    Object? description = freezed,
    Object? url = freezed,
    Object? imageUrl = freezed,
    Object? publishedAtString = freezed,
    Object? content = freezed,
  }) {
    return _then(_$ArticleModelImpl(
      id: freezed == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as String?,
      source: freezed == source
          ? _value.source
          : source // ignore: cast_nullable_to_non_nullable
              as NewsSourceModel?,
      author: freezed == author
          ? _value.author
          : author // ignore: cast_nullable_to_non_nullable
              as String?,
      title: null == title
          ? _value.title
          : title // ignore: cast_nullable_to_non_nullable
              as String,
      description: freezed == description
          ? _value.description
          : description // ignore: cast_nullable_to_non_nullable
              as String?,
      url: freezed == url
          ? _value.url
          : url // ignore: cast_nullable_to_non_nullable
              as String?,
      imageUrl: freezed == imageUrl
          ? _value.imageUrl
          : imageUrl // ignore: cast_nullable_to_non_nullable
              as String?,
      publishedAtString: freezed == publishedAtString
          ? _value.publishedAtString
          : publishedAtString // ignore: cast_nullable_to_non_nullable
              as String?,
      content: freezed == content
          ? _value.content
          : content // ignore: cast_nullable_to_non_nullable
              as String?,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$ArticleModelImpl implements _ArticleModel {
  const _$ArticleModelImpl(
      {this.id,
      this.source,
      this.author,
      required this.title,
      this.description,
      this.url,
      @JsonKey(name: 'urlToImage') this.imageUrl,
      @JsonKey(name: 'publishedAt') this.publishedAtString,
      this.content});

  factory _$ArticleModelImpl.fromJson(Map<String, dynamic> json) =>
      _$$ArticleModelImplFromJson(json);

  @override
  final String? id;
  @override
  final NewsSourceModel? source;
  @override
  final String? author;
  @override
  final String title;
  @override
  final String? description;
  @override
  final String? url;
  @override
  @JsonKey(name: 'urlToImage')
  final String? imageUrl;
  @override
  @JsonKey(name: 'publishedAt')
  final String? publishedAtString;
  @override
  final String? content;

  @override
  String toString() {
    return 'ArticleModel(id: $id, source: $source, author: $author, title: $title, description: $description, url: $url, imageUrl: $imageUrl, publishedAtString: $publishedAtString, content: $content)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$ArticleModelImpl &&
            (identical(other.id, id) || other.id == id) &&
            (identical(other.source, source) || other.source == source) &&
            (identical(other.author, author) || other.author == author) &&
            (identical(other.title, title) || other.title == title) &&
            (identical(other.description, description) ||
                other.description == description) &&
            (identical(other.url, url) || other.url == url) &&
            (identical(other.imageUrl, imageUrl) ||
                other.imageUrl == imageUrl) &&
            (identical(other.publishedAtString, publishedAtString) ||
                other.publishedAtString == publishedAtString) &&
            (identical(other.content, content) || other.content == content));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(runtimeType, id, source, author, title,
      description, url, imageUrl, publishedAtString, content);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$ArticleModelImplCopyWith<_$ArticleModelImpl> get copyWith =>
      __$$ArticleModelImplCopyWithImpl<_$ArticleModelImpl>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$ArticleModelImplToJson(
      this,
    );
  }
}

abstract class _ArticleModel implements ArticleModel {
  const factory _ArticleModel(
      {final String? id,
      final NewsSourceModel? source,
      final String? author,
      required final String title,
      final String? description,
      final String? url,
      @JsonKey(name: 'urlToImage') final String? imageUrl,
      @JsonKey(name: 'publishedAt') final String? publishedAtString,
      final String? content}) = _$ArticleModelImpl;

  factory _ArticleModel.fromJson(Map<String, dynamic> json) =
      _$ArticleModelImpl.fromJson;

  @override
  String? get id;
  @override
  NewsSourceModel? get source;
  @override
  String? get author;
  @override
  String get title;
  @override
  String? get description;
  @override
  String? get url;
  @override
  @JsonKey(name: 'urlToImage')
  String? get imageUrl;
  @override
  @JsonKey(name: 'publishedAt')
  String? get publishedAtString;
  @override
  String? get content;
  @override
  @JsonKey(ignore: true)
  _$$ArticleModelImplCopyWith<_$ArticleModelImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
