// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target

part of 'post_service_model.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

/// @nodoc
mixin _$PostModel {
  Isar get isar => throw _privateConstructorUsedError;
  List<String> get titleList => throw _privateConstructorUsedError;
  List<DateTime> get dateList => throw _privateConstructorUsedError;

  @JsonKey(ignore: true)
  $PostModelCopyWith<PostModel> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $PostModelCopyWith<$Res> {
  factory $PostModelCopyWith(PostModel value, $Res Function(PostModel) then) =
      _$PostModelCopyWithImpl<$Res>;
  $Res call({Isar isar, List<String> titleList, List<DateTime> dateList});
}

/// @nodoc
class _$PostModelCopyWithImpl<$Res> implements $PostModelCopyWith<$Res> {
  _$PostModelCopyWithImpl(this._value, this._then);

  final PostModel _value;
  // ignore: unused_field
  final $Res Function(PostModel) _then;

  @override
  $Res call({
    Object? isar = freezed,
    Object? titleList = freezed,
    Object? dateList = freezed,
  }) {
    return _then(_value.copyWith(
      isar: isar == freezed
          ? _value.isar
          : isar // ignore: cast_nullable_to_non_nullable
              as Isar,
      titleList: titleList == freezed
          ? _value.titleList
          : titleList // ignore: cast_nullable_to_non_nullable
              as List<String>,
      dateList: dateList == freezed
          ? _value.dateList
          : dateList // ignore: cast_nullable_to_non_nullable
              as List<DateTime>,
    ));
  }
}

/// @nodoc
abstract class _$$_PostModelCopyWith<$Res> implements $PostModelCopyWith<$Res> {
  factory _$$_PostModelCopyWith(
          _$_PostModel value, $Res Function(_$_PostModel) then) =
      __$$_PostModelCopyWithImpl<$Res>;
  @override
  $Res call({Isar isar, List<String> titleList, List<DateTime> dateList});
}

/// @nodoc
class __$$_PostModelCopyWithImpl<$Res> extends _$PostModelCopyWithImpl<$Res>
    implements _$$_PostModelCopyWith<$Res> {
  __$$_PostModelCopyWithImpl(
      _$_PostModel _value, $Res Function(_$_PostModel) _then)
      : super(_value, (v) => _then(v as _$_PostModel));

  @override
  _$_PostModel get _value => super._value as _$_PostModel;

  @override
  $Res call({
    Object? isar = freezed,
    Object? titleList = freezed,
    Object? dateList = freezed,
  }) {
    return _then(_$_PostModel(
      isar: isar == freezed
          ? _value.isar
          : isar // ignore: cast_nullable_to_non_nullable
              as Isar,
      titleList: titleList == freezed
          ? _value._titleList
          : titleList // ignore: cast_nullable_to_non_nullable
              as List<String>,
      dateList: dateList == freezed
          ? _value._dateList
          : dateList // ignore: cast_nullable_to_non_nullable
              as List<DateTime>,
    ));
  }
}

/// @nodoc

class _$_PostModel implements _PostModel {
  const _$_PostModel(
      {required this.isar,
      required final List<String> titleList,
      required final List<DateTime> dateList})
      : _titleList = titleList,
        _dateList = dateList;

  @override
  final Isar isar;
  final List<String> _titleList;
  @override
  List<String> get titleList {
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_titleList);
  }

  final List<DateTime> _dateList;
  @override
  List<DateTime> get dateList {
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_dateList);
  }

  @override
  String toString() {
    return 'PostModel(isar: $isar, titleList: $titleList, dateList: $dateList)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_PostModel &&
            const DeepCollectionEquality().equals(other.isar, isar) &&
            const DeepCollectionEquality()
                .equals(other._titleList, _titleList) &&
            const DeepCollectionEquality().equals(other._dateList, _dateList));
  }

  @override
  int get hashCode => Object.hash(
      runtimeType,
      const DeepCollectionEquality().hash(isar),
      const DeepCollectionEquality().hash(_titleList),
      const DeepCollectionEquality().hash(_dateList));

  @JsonKey(ignore: true)
  @override
  _$$_PostModelCopyWith<_$_PostModel> get copyWith =>
      __$$_PostModelCopyWithImpl<_$_PostModel>(this, _$identity);
}

abstract class _PostModel implements PostModel {
  const factory _PostModel(
      {required final Isar isar,
      required final List<String> titleList,
      required final List<DateTime> dateList}) = _$_PostModel;

  @override
  Isar get isar => throw _privateConstructorUsedError;
  @override
  List<String> get titleList => throw _privateConstructorUsedError;
  @override
  List<DateTime> get dateList => throw _privateConstructorUsedError;
  @override
  @JsonKey(ignore: true)
  _$$_PostModelCopyWith<_$_PostModel> get copyWith =>
      throw _privateConstructorUsedError;
}
