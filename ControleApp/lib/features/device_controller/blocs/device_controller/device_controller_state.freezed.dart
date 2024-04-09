// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'device_controller_state.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

/// @nodoc
mixin _$DeviceControllerState {
  BluetoothDevice get device => throw _privateConstructorUsedError;
  Iterable<BluetoothCharacteristic> get characteristics =>
      throw _privateConstructorUsedError;

  @JsonKey(ignore: true)
  $DeviceControllerStateCopyWith<DeviceControllerState> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $DeviceControllerStateCopyWith<$Res> {
  factory $DeviceControllerStateCopyWith(DeviceControllerState value,
          $Res Function(DeviceControllerState) then) =
      _$DeviceControllerStateCopyWithImpl<$Res, DeviceControllerState>;
  @useResult
  $Res call(
      {BluetoothDevice device,
      Iterable<BluetoothCharacteristic> characteristics});
}

/// @nodoc
class _$DeviceControllerStateCopyWithImpl<$Res,
        $Val extends DeviceControllerState>
    implements $DeviceControllerStateCopyWith<$Res> {
  _$DeviceControllerStateCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? device = null,
    Object? characteristics = null,
  }) {
    return _then(_value.copyWith(
      device: null == device
          ? _value.device
          : device // ignore: cast_nullable_to_non_nullable
              as BluetoothDevice,
      characteristics: null == characteristics
          ? _value.characteristics
          : characteristics // ignore: cast_nullable_to_non_nullable
              as Iterable<BluetoothCharacteristic>,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$DeviceControllerStateImplCopyWith<$Res>
    implements $DeviceControllerStateCopyWith<$Res> {
  factory _$$DeviceControllerStateImplCopyWith(
          _$DeviceControllerStateImpl value,
          $Res Function(_$DeviceControllerStateImpl) then) =
      __$$DeviceControllerStateImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {BluetoothDevice device,
      Iterable<BluetoothCharacteristic> characteristics});
}

/// @nodoc
class __$$DeviceControllerStateImplCopyWithImpl<$Res>
    extends _$DeviceControllerStateCopyWithImpl<$Res,
        _$DeviceControllerStateImpl>
    implements _$$DeviceControllerStateImplCopyWith<$Res> {
  __$$DeviceControllerStateImplCopyWithImpl(_$DeviceControllerStateImpl _value,
      $Res Function(_$DeviceControllerStateImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? device = null,
    Object? characteristics = null,
  }) {
    return _then(_$DeviceControllerStateImpl(
      device: null == device
          ? _value.device
          : device // ignore: cast_nullable_to_non_nullable
              as BluetoothDevice,
      characteristics: null == characteristics
          ? _value.characteristics
          : characteristics // ignore: cast_nullable_to_non_nullable
              as Iterable<BluetoothCharacteristic>,
    ));
  }
}

/// @nodoc

class _$DeviceControllerStateImpl implements _DeviceControllerState {
  const _$DeviceControllerStateImpl(
      {required this.device, this.characteristics = const []});

  @override
  final BluetoothDevice device;
  @override
  @JsonKey()
  final Iterable<BluetoothCharacteristic> characteristics;

  @override
  String toString() {
    return 'DeviceControllerState(device: $device, characteristics: $characteristics)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$DeviceControllerStateImpl &&
            (identical(other.device, device) || other.device == device) &&
            const DeepCollectionEquality()
                .equals(other.characteristics, characteristics));
  }

  @override
  int get hashCode => Object.hash(runtimeType, device,
      const DeepCollectionEquality().hash(characteristics));

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$DeviceControllerStateImplCopyWith<_$DeviceControllerStateImpl>
      get copyWith => __$$DeviceControllerStateImplCopyWithImpl<
          _$DeviceControllerStateImpl>(this, _$identity);
}

abstract class _DeviceControllerState implements DeviceControllerState {
  const factory _DeviceControllerState(
          {required final BluetoothDevice device,
          final Iterable<BluetoothCharacteristic> characteristics}) =
      _$DeviceControllerStateImpl;

  @override
  BluetoothDevice get device;
  @override
  Iterable<BluetoothCharacteristic> get characteristics;
  @override
  @JsonKey(ignore: true)
  _$$DeviceControllerStateImplCopyWith<_$DeviceControllerStateImpl>
      get copyWith => throw _privateConstructorUsedError;
}
