// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'voltage_characteristic_state.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

/// @nodoc
mixin _$VoltageCharacteristicState {
  double get voltage => throw _privateConstructorUsedError;

  @JsonKey(ignore: true)
  $VoltageCharacteristicStateCopyWith<VoltageCharacteristicState>
      get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $VoltageCharacteristicStateCopyWith<$Res> {
  factory $VoltageCharacteristicStateCopyWith(VoltageCharacteristicState value,
          $Res Function(VoltageCharacteristicState) then) =
      _$VoltageCharacteristicStateCopyWithImpl<$Res,
          VoltageCharacteristicState>;
  @useResult
  $Res call({double voltage});
}

/// @nodoc
class _$VoltageCharacteristicStateCopyWithImpl<$Res,
        $Val extends VoltageCharacteristicState>
    implements $VoltageCharacteristicStateCopyWith<$Res> {
  _$VoltageCharacteristicStateCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? voltage = null,
  }) {
    return _then(_value.copyWith(
      voltage: null == voltage
          ? _value.voltage
          : voltage // ignore: cast_nullable_to_non_nullable
              as double,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$VoltageCharacteristicStateImplCopyWith<$Res>
    implements $VoltageCharacteristicStateCopyWith<$Res> {
  factory _$$VoltageCharacteristicStateImplCopyWith(
          _$VoltageCharacteristicStateImpl value,
          $Res Function(_$VoltageCharacteristicStateImpl) then) =
      __$$VoltageCharacteristicStateImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({double voltage});
}

/// @nodoc
class __$$VoltageCharacteristicStateImplCopyWithImpl<$Res>
    extends _$VoltageCharacteristicStateCopyWithImpl<$Res,
        _$VoltageCharacteristicStateImpl>
    implements _$$VoltageCharacteristicStateImplCopyWith<$Res> {
  __$$VoltageCharacteristicStateImplCopyWithImpl(
      _$VoltageCharacteristicStateImpl _value,
      $Res Function(_$VoltageCharacteristicStateImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? voltage = null,
  }) {
    return _then(_$VoltageCharacteristicStateImpl(
      voltage: null == voltage
          ? _value.voltage
          : voltage // ignore: cast_nullable_to_non_nullable
              as double,
    ));
  }
}

/// @nodoc

class _$VoltageCharacteristicStateImpl implements _VoltageCharacteristicState {
  const _$VoltageCharacteristicStateImpl({required this.voltage});

  @override
  final double voltage;

  @override
  String toString() {
    return 'VoltageCharacteristicState(voltage: $voltage)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$VoltageCharacteristicStateImpl &&
            (identical(other.voltage, voltage) || other.voltage == voltage));
  }

  @override
  int get hashCode => Object.hash(runtimeType, voltage);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$VoltageCharacteristicStateImplCopyWith<_$VoltageCharacteristicStateImpl>
      get copyWith => __$$VoltageCharacteristicStateImplCopyWithImpl<
          _$VoltageCharacteristicStateImpl>(this, _$identity);
}

abstract class _VoltageCharacteristicState
    implements VoltageCharacteristicState {
  const factory _VoltageCharacteristicState({required final double voltage}) =
      _$VoltageCharacteristicStateImpl;

  @override
  double get voltage;
  @override
  @JsonKey(ignore: true)
  _$$VoltageCharacteristicStateImplCopyWith<_$VoltageCharacteristicStateImpl>
      get copyWith => throw _privateConstructorUsedError;
}
