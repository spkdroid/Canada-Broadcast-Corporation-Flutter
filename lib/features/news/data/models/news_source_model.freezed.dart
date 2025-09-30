// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'news_source_model.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

NewsSourceModel _$NewsSourceModelFromJson(Map<String, dynamic> json) {
  return _NewsSourceModel.fromJson(json);
}

/// @nodoc
mixin _$NewsSourceModel {
  String? get id => throw _privateConstructorUsedError;
  String get name => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $NewsSourceModelCopyWith<NewsSourceModel> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $NewsSourceModelCopyWith<$Res> {
  factory $NewsSourceModelCopyWith(
          NewsSourceModel value, $Res Function(NewsSourceModel) then) =
      _$NewsSourceModelCopyWithImpl<$Res, NewsSourceModel>;
  @useResult
  $Res call({String? id, String name});
}

/// @nodoc
class _$NewsSourceModelCopyWithImpl<$Res, $Val extends NewsSourceModel>
    implements $NewsSourceModelCopyWith<$Res> {
  _$NewsSourceModelCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = freezed,
    Object? name = null,
  }) {
    return _then(_value.copyWith(
      id: freezed == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as String?,
      name: null == name
          ? _value.name
          : name // ignore: cast_nullable_to_non_nullable
              as String,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$NewsSourceModelImplCopyWith<$Res>
    implements $NewsSourceModelCopyWith<$Res> {
  factory _$$NewsSourceModelImplCopyWith(_$NewsSourceModelImpl value,
          $Res Function(_$NewsSourceModelImpl) then) =
      __$$NewsSourceModelImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({String? id, String name});
}

/// @nodoc
class __$$NewsSourceModelImplCopyWithImpl<$Res>
    extends _$NewsSourceModelCopyWithImpl<$Res, _$NewsSourceModelImpl>
    implements _$$NewsSourceModelImplCopyWith<$Res> {
  __$$NewsSourceModelImplCopyWithImpl(
      _$NewsSourceModelImpl _value, $Res Function(_$NewsSourceModelImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = freezed,
    Object? name = null,
  }) {
    return _then(_$NewsSourceModelImpl(
      id: freezed == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as String?,
      name: null == name
          ? _value.name
          : name // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$NewsSourceModelImpl implements _NewsSourceModel {
  const _$NewsSourceModelImpl({this.id, required this.name});

  factory _$NewsSourceModelImpl.fromJson(Map<String, dynamic> json) =>
      _$$NewsSourceModelImplFromJson(json);

  @override
  final String? id;
  @override
  final String name;

  @override
  String toString() {
    return 'NewsSourceModel(id: $id, name: $name)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$NewsSourceModelImpl &&
            (identical(other.id, id) || other.id == id) &&
            (identical(other.name, name) || other.name == name));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(runtimeType, id, name);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$NewsSourceModelImplCopyWith<_$NewsSourceModelImpl> get copyWith =>
      __$$NewsSourceModelImplCopyWithImpl<_$NewsSourceModelImpl>(
          this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$NewsSourceModelImplToJson(
      this,
    );
  }
}

abstract class _NewsSourceModel implements NewsSourceModel {
  const factory _NewsSourceModel(
      {final String? id, required final String name}) = _$NewsSourceModelImpl;

  factory _NewsSourceModel.fromJson(Map<String, dynamic> json) =
      _$NewsSourceModelImpl.fromJson;

  @override
  String? get id;
  @override
  String get name;
  @override
  @JsonKey(ignore: true)
  _$$NewsSourceModelImplCopyWith<_$NewsSourceModelImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
