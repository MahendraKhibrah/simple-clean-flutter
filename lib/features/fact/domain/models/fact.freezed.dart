// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'fact.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

/// @nodoc
mixin _$Fact {
  String get description => throw _privateConstructorUsedError;
  String get information => throw _privateConstructorUsedError;

  /// Create a copy of Fact
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $FactCopyWith<Fact> get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $FactCopyWith<$Res> {
  factory $FactCopyWith(Fact value, $Res Function(Fact) then) =
      _$FactCopyWithImpl<$Res, Fact>;
  @useResult
  $Res call({String description, String information});
}

/// @nodoc
class _$FactCopyWithImpl<$Res, $Val extends Fact>
    implements $FactCopyWith<$Res> {
  _$FactCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of Fact
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? description = null,
    Object? information = null,
  }) {
    return _then(_value.copyWith(
      description: null == description
          ? _value.description
          : description // ignore: cast_nullable_to_non_nullable
              as String,
      information: null == information
          ? _value.information
          : information // ignore: cast_nullable_to_non_nullable
              as String,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$FactImplCopyWith<$Res> implements $FactCopyWith<$Res> {
  factory _$$FactImplCopyWith(
          _$FactImpl value, $Res Function(_$FactImpl) then) =
      __$$FactImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({String description, String information});
}

/// @nodoc
class __$$FactImplCopyWithImpl<$Res>
    extends _$FactCopyWithImpl<$Res, _$FactImpl>
    implements _$$FactImplCopyWith<$Res> {
  __$$FactImplCopyWithImpl(_$FactImpl _value, $Res Function(_$FactImpl) _then)
      : super(_value, _then);

  /// Create a copy of Fact
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? description = null,
    Object? information = null,
  }) {
    return _then(_$FactImpl(
      description: null == description
          ? _value.description
          : description // ignore: cast_nullable_to_non_nullable
              as String,
      information: null == information
          ? _value.information
          : information // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc

class _$FactImpl implements _Fact {
  const _$FactImpl({required this.description, required this.information});

  @override
  final String description;
  @override
  final String information;

  @override
  String toString() {
    return 'Fact(description: $description, information: $information)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$FactImpl &&
            (identical(other.description, description) ||
                other.description == description) &&
            (identical(other.information, information) ||
                other.information == information));
  }

  @override
  int get hashCode => Object.hash(runtimeType, description, information);

  /// Create a copy of Fact
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$FactImplCopyWith<_$FactImpl> get copyWith =>
      __$$FactImplCopyWithImpl<_$FactImpl>(this, _$identity);
}

abstract class _Fact implements Fact {
  const factory _Fact(
      {required final String description,
      required final String information}) = _$FactImpl;

  @override
  String get description;
  @override
  String get information;

  /// Create a copy of Fact
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$FactImplCopyWith<_$FactImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
