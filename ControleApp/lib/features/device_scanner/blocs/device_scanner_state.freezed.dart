// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'device_scanner_state.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

/// @nodoc
mixin _$DeviceScannerState {
  Iterable<BluetoothDevice> get foundDevices =>
      throw _privateConstructorUsedError;
  Iterable<BluetoothDevice> get connectedDevices =>
      throw _privateConstructorUsedError;
  bool get scanning => throw _privateConstructorUsedError;
  DeviceScannerErrorState get errorState => throw _privateConstructorUsedError;

  @JsonKey(ignore: true)
  $DeviceScannerStateCopyWith<DeviceScannerState> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $DeviceScannerStateCopyWith<$Res> {
  factory $DeviceScannerStateCopyWith(
          DeviceScannerState value, $Res Function(DeviceScannerState) then) =
      _$DeviceScannerStateCopyWithImpl<$Res, DeviceScannerState>;
  @useResult
  $Res call(
      {Iterable<BluetoothDevice> foundDevices,
      Iterable<BluetoothDevice> connectedDevices,
      bool scanning,
      DeviceScannerErrorState errorState});
}

/// @nodoc
class _$DeviceScannerStateCopyWithImpl<$Res, $Val extends DeviceScannerState>
    implements $DeviceScannerStateCopyWith<$Res> {
  _$DeviceScannerStateCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? foundDevices = null,
    Object? connectedDevices = null,
    Object? scanning = null,
    Object? errorState = null,
  }) {
    return _then(_value.copyWith(
      foundDevices: null == foundDevices
          ? _value.foundDevices
          : foundDevices // ignore: cast_nullable_to_non_nullable
              as Iterable<BluetoothDevice>,
      connectedDevices: null == connectedDevices
          ? _value.connectedDevices
          : connectedDevices // ignore: cast_nullable_to_non_nullable
              as Iterable<BluetoothDevice>,
      scanning: null == scanning
          ? _value.scanning
          : scanning // ignore: cast_nullable_to_non_nullable
              as bool,
      errorState: null == errorState
          ? _value.errorState
          : errorState // ignore: cast_nullable_to_non_nullable
              as DeviceScannerErrorState,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$DeviceScannerStateImplCopyWith<$Res>
    implements $DeviceScannerStateCopyWith<$Res> {
  factory _$$DeviceScannerStateImplCopyWith(_$DeviceScannerStateImpl value,
          $Res Function(_$DeviceScannerStateImpl) then) =
      __$$DeviceScannerStateImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {Iterable<BluetoothDevice> foundDevices,
      Iterable<BluetoothDevice> connectedDevices,
      bool scanning,
      DeviceScannerErrorState errorState});
}

/// @nodoc
class __$$DeviceScannerStateImplCopyWithImpl<$Res>
    extends _$DeviceScannerStateCopyWithImpl<$Res, _$DeviceScannerStateImpl>
    implements _$$DeviceScannerStateImplCopyWith<$Res> {
  __$$DeviceScannerStateImplCopyWithImpl(_$DeviceScannerStateImpl _value,
      $Res Function(_$DeviceScannerStateImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? foundDevices = null,
    Object? connectedDevices = null,
    Object? scanning = null,
    Object? errorState = null,
  }) {
    return _then(_$DeviceScannerStateImpl(
      foundDevices: null == foundDevices
          ? _value.foundDevices
          : foundDevices // ignore: cast_nullable_to_non_nullable
              as Iterable<BluetoothDevice>,
      connectedDevices: null == connectedDevices
          ? _value.connectedDevices
          : connectedDevices // ignore: cast_nullable_to_non_nullable
              as Iterable<BluetoothDevice>,
      scanning: null == scanning
          ? _value.scanning
          : scanning // ignore: cast_nullable_to_non_nullable
              as bool,
      errorState: null == errorState
          ? _value.errorState
          : errorState // ignore: cast_nullable_to_non_nullable
              as DeviceScannerErrorState,
    ));
  }
}

/// @nodoc

class _$DeviceScannerStateImpl implements _DeviceScannerState {
  const _$DeviceScannerStateImpl(
      {this.foundDevices = const [],
      this.connectedDevices = const [],
      this.scanning = false,
      this.errorState = DeviceScannerErrorState.none});

  @override
  @JsonKey()
  final Iterable<BluetoothDevice> foundDevices;
  @override
  @JsonKey()
  final Iterable<BluetoothDevice> connectedDevices;
  @override
  @JsonKey()
  final bool scanning;
  @override
  @JsonKey()
  final DeviceScannerErrorState errorState;

  @override
  String toString() {
    return 'DeviceScannerState(foundDevices: $foundDevices, connectedDevices: $connectedDevices, scanning: $scanning, errorState: $errorState)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$DeviceScannerStateImpl &&
            const DeepCollectionEquality()
                .equals(other.foundDevices, foundDevices) &&
            const DeepCollectionEquality()
                .equals(other.connectedDevices, connectedDevices) &&
            (identical(other.scanning, scanning) ||
                other.scanning == scanning) &&
            (identical(other.errorState, errorState) ||
                other.errorState == errorState));
  }

  @override
  int get hashCode => Object.hash(
      runtimeType,
      const DeepCollectionEquality().hash(foundDevices),
      const DeepCollectionEquality().hash(connectedDevices),
      scanning,
      errorState);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$DeviceScannerStateImplCopyWith<_$DeviceScannerStateImpl> get copyWith =>
      __$$DeviceScannerStateImplCopyWithImpl<_$DeviceScannerStateImpl>(
          this, _$identity);
}

abstract class _DeviceScannerState implements DeviceScannerState {
  const factory _DeviceScannerState(
      {final Iterable<BluetoothDevice> foundDevices,
      final Iterable<BluetoothDevice> connectedDevices,
      final bool scanning,
      final DeviceScannerErrorState errorState}) = _$DeviceScannerStateImpl;

  @override
  Iterable<BluetoothDevice> get foundDevices;
  @override
  Iterable<BluetoothDevice> get connectedDevices;
  @override
  bool get scanning;
  @override
  DeviceScannerErrorState get errorState;
  @override
  @JsonKey(ignore: true)
  _$$DeviceScannerStateImplCopyWith<_$DeviceScannerStateImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
