// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'time_characteristic_state.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

/// @nodoc
mixin _$TimeCharacteristicState {
  DateTime get time => throw _privateConstructorUsedError;

  @JsonKey(ignore: true)
  $TimeCharacteristicStateCopyWith<TimeCharacteristicState> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $TimeCharacteristicStateCopyWith<$Res> {
  factory $TimeCharacteristicStateCopyWith(TimeCharacteristicState value,
          $Res Function(TimeCharacteristicState) then) =
      _$TimeCharacteristicStateCopyWithImpl<$Res, TimeCharacteristicState>;
  @useResult
  $Res call({DateTime time});
}

/// @nodoc
class _$TimeCharacteristicStateCopyWithImpl<$Res,
        $Val extends TimeCharacteristicState>
    implements $TimeCharacteristicStateCopyWith<$Res> {
  _$TimeCharacteristicStateCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? time = null,
  }) {
    return _then(_value.copyWith(
      time: null == time
          ? _value.time
          : time // ignore: cast_nullable_to_non_nullable
              as DateTime,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$TimeCharacteristicStateImplCopyWith<$Res>
    implements $TimeCharacteristicStateCopyWith<$Res> {
  factory _$$TimeCharacteristicStateImplCopyWith(
          _$TimeCharacteristicStateImpl value,
          $Res Function(_$TimeCharacteristicStateImpl) then) =
      __$$TimeCharacteristicStateImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({DateTime time});
}

/// @nodoc
class __$$TimeCharacteristicStateImplCopyWithImpl<$Res>
    extends _$TimeCharacteristicStateCopyWithImpl<$Res,
        _$TimeCharacteristicStateImpl>
    implements _$$TimeCharacteristicStateImplCopyWith<$Res> {
  __$$TimeCharacteristicStateImplCopyWithImpl(
      _$TimeCharacteristicStateImpl _value,
      $Res Function(_$TimeCharacteristicStateImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? time = null,
  }) {
    return _then(_$TimeCharacteristicStateImpl(
      time: null == time
          ? _value.time
          : time // ignore: cast_nullable_to_non_nullable
              as DateTime,
    ));
  }
}

/// @nodoc

class _$TimeCharacteristicStateImpl implements _TimeCharacteristicState {
  const _$TimeCharacteristicStateImpl({required this.time});

  @override
  final DateTime time;

  @override
  String toString() {
    return 'TimeCharacteristicState(time: $time)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$TimeCharacteristicStateImpl &&
            (identical(other.time, time) || other.time == time));
  }

  @override
  int get hashCode => Object.hash(runtimeType, time);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$TimeCharacteristicStateImplCopyWith<_$TimeCharacteristicStateImpl>
      get copyWith => __$$TimeCharacteristicStateImplCopyWithImpl<
          _$TimeCharacteristicStateImpl>(this, _$identity);
}

abstract class _TimeCharacteristicState implements TimeCharacteristicState {
  const factory _TimeCharacteristicState({required final DateTime time}) =
      _$TimeCharacteristicStateImpl;

  @override
  DateTime get time;
  @override
  @JsonKey(ignore: true)
  _$$TimeCharacteristicStateImplCopyWith<_$TimeCharacteristicStateImpl>
      get copyWith => throw _privateConstructorUsedError;
}
