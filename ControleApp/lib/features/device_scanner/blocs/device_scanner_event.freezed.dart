// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'device_scanner_event.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

/// @nodoc
mixin _$DeviceScannerEvent {
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() scan,
    required TResult Function() stopScan,
    required TResult Function() init,
    required TResult Function(BluetoothDevice device) connect,
    required TResult Function(BluetoothDevice device) disconnect,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? scan,
    TResult? Function()? stopScan,
    TResult? Function()? init,
    TResult? Function(BluetoothDevice device)? connect,
    TResult? Function(BluetoothDevice device)? disconnect,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? scan,
    TResult Function()? stopScan,
    TResult Function()? init,
    TResult Function(BluetoothDevice device)? connect,
    TResult Function(BluetoothDevice device)? disconnect,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(Scan value) scan,
    required TResult Function(StopScan value) stopScan,
    required TResult Function(Init value) init,
    required TResult Function(Connect value) connect,
    required TResult Function(Disconnect value) disconnect,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(Scan value)? scan,
    TResult? Function(StopScan value)? stopScan,
    TResult? Function(Init value)? init,
    TResult? Function(Connect value)? connect,
    TResult? Function(Disconnect value)? disconnect,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(Scan value)? scan,
    TResult Function(StopScan value)? stopScan,
    TResult Function(Init value)? init,
    TResult Function(Connect value)? connect,
    TResult Function(Disconnect value)? disconnect,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $DeviceScannerEventCopyWith<$Res> {
  factory $DeviceScannerEventCopyWith(
          DeviceScannerEvent value, $Res Function(DeviceScannerEvent) then) =
      _$DeviceScannerEventCopyWithImpl<$Res, DeviceScannerEvent>;
}

/// @nodoc
class _$DeviceScannerEventCopyWithImpl<$Res, $Val extends DeviceScannerEvent>
    implements $DeviceScannerEventCopyWith<$Res> {
  _$DeviceScannerEventCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;
}

/// @nodoc
abstract class _$$ScanImplCopyWith<$Res> {
  factory _$$ScanImplCopyWith(
          _$ScanImpl value, $Res Function(_$ScanImpl) then) =
      __$$ScanImplCopyWithImpl<$Res>;
}

/// @nodoc
class __$$ScanImplCopyWithImpl<$Res>
    extends _$DeviceScannerEventCopyWithImpl<$Res, _$ScanImpl>
    implements _$$ScanImplCopyWith<$Res> {
  __$$ScanImplCopyWithImpl(_$ScanImpl _value, $Res Function(_$ScanImpl) _then)
      : super(_value, _then);
}

/// @nodoc

class _$ScanImpl implements Scan {
  const _$ScanImpl();

  @override
  String toString() {
    return 'DeviceScannerEvent.scan()';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is _$ScanImpl);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() scan,
    required TResult Function() stopScan,
    required TResult Function() init,
    required TResult Function(BluetoothDevice device) connect,
    required TResult Function(BluetoothDevice device) disconnect,
  }) {
    return scan();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? scan,
    TResult? Function()? stopScan,
    TResult? Function()? init,
    TResult? Function(BluetoothDevice device)? connect,
    TResult? Function(BluetoothDevice device)? disconnect,
  }) {
    return scan?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? scan,
    TResult Function()? stopScan,
    TResult Function()? init,
    TResult Function(BluetoothDevice device)? connect,
    TResult Function(BluetoothDevice device)? disconnect,
    required TResult orElse(),
  }) {
    if (scan != null) {
      return scan();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(Scan value) scan,
    required TResult Function(StopScan value) stopScan,
    required TResult Function(Init value) init,
    required TResult Function(Connect value) connect,
    required TResult Function(Disconnect value) disconnect,
  }) {
    return scan(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(Scan value)? scan,
    TResult? Function(StopScan value)? stopScan,
    TResult? Function(Init value)? init,
    TResult? Function(Connect value)? connect,
    TResult? Function(Disconnect value)? disconnect,
  }) {
    return scan?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(Scan value)? scan,
    TResult Function(StopScan value)? stopScan,
    TResult Function(Init value)? init,
    TResult Function(Connect value)? connect,
    TResult Function(Disconnect value)? disconnect,
    required TResult orElse(),
  }) {
    if (scan != null) {
      return scan(this);
    }
    return orElse();
  }
}

abstract class Scan implements DeviceScannerEvent {
  const factory Scan() = _$ScanImpl;
}

/// @nodoc
abstract class _$$StopScanImplCopyWith<$Res> {
  factory _$$StopScanImplCopyWith(
          _$StopScanImpl value, $Res Function(_$StopScanImpl) then) =
      __$$StopScanImplCopyWithImpl<$Res>;
}

/// @nodoc
class __$$StopScanImplCopyWithImpl<$Res>
    extends _$DeviceScannerEventCopyWithImpl<$Res, _$StopScanImpl>
    implements _$$StopScanImplCopyWith<$Res> {
  __$$StopScanImplCopyWithImpl(
      _$StopScanImpl _value, $Res Function(_$StopScanImpl) _then)
      : super(_value, _then);
}

/// @nodoc

class _$StopScanImpl implements StopScan {
  const _$StopScanImpl();

  @override
  String toString() {
    return 'DeviceScannerEvent.stopScan()';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is _$StopScanImpl);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() scan,
    required TResult Function() stopScan,
    required TResult Function() init,
    required TResult Function(BluetoothDevice device) connect,
    required TResult Function(BluetoothDevice device) disconnect,
  }) {
    return stopScan();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? scan,
    TResult? Function()? stopScan,
    TResult? Function()? init,
    TResult? Function(BluetoothDevice device)? connect,
    TResult? Function(BluetoothDevice device)? disconnect,
  }) {
    return stopScan?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? scan,
    TResult Function()? stopScan,
    TResult Function()? init,
    TResult Function(BluetoothDevice device)? connect,
    TResult Function(BluetoothDevice device)? disconnect,
    required TResult orElse(),
  }) {
    if (stopScan != null) {
      return stopScan();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(Scan value) scan,
    required TResult Function(StopScan value) stopScan,
    required TResult Function(Init value) init,
    required TResult Function(Connect value) connect,
    required TResult Function(Disconnect value) disconnect,
  }) {
    return stopScan(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(Scan value)? scan,
    TResult? Function(StopScan value)? stopScan,
    TResult? Function(Init value)? init,
    TResult? Function(Connect value)? connect,
    TResult? Function(Disconnect value)? disconnect,
  }) {
    return stopScan?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(Scan value)? scan,
    TResult Function(StopScan value)? stopScan,
    TResult Function(Init value)? init,
    TResult Function(Connect value)? connect,
    TResult Function(Disconnect value)? disconnect,
    required TResult orElse(),
  }) {
    if (stopScan != null) {
      return stopScan(this);
    }
    return orElse();
  }
}

abstract class StopScan implements DeviceScannerEvent {
  const factory StopScan() = _$StopScanImpl;
}

/// @nodoc
abstract class _$$InitImplCopyWith<$Res> {
  factory _$$InitImplCopyWith(
          _$InitImpl value, $Res Function(_$InitImpl) then) =
      __$$InitImplCopyWithImpl<$Res>;
}

/// @nodoc
class __$$InitImplCopyWithImpl<$Res>
    extends _$DeviceScannerEventCopyWithImpl<$Res, _$InitImpl>
    implements _$$InitImplCopyWith<$Res> {
  __$$InitImplCopyWithImpl(_$InitImpl _value, $Res Function(_$InitImpl) _then)
      : super(_value, _then);
}

/// @nodoc

class _$InitImpl implements Init {
  const _$InitImpl();

  @override
  String toString() {
    return 'DeviceScannerEvent.init()';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is _$InitImpl);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() scan,
    required TResult Function() stopScan,
    required TResult Function() init,
    required TResult Function(BluetoothDevice device) connect,
    required TResult Function(BluetoothDevice device) disconnect,
  }) {
    return init();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? scan,
    TResult? Function()? stopScan,
    TResult? Function()? init,
    TResult? Function(BluetoothDevice device)? connect,
    TResult? Function(BluetoothDevice device)? disconnect,
  }) {
    return init?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? scan,
    TResult Function()? stopScan,
    TResult Function()? init,
    TResult Function(BluetoothDevice device)? connect,
    TResult Function(BluetoothDevice device)? disconnect,
    required TResult orElse(),
  }) {
    if (init != null) {
      return init();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(Scan value) scan,
    required TResult Function(StopScan value) stopScan,
    required TResult Function(Init value) init,
    required TResult Function(Connect value) connect,
    required TResult Function(Disconnect value) disconnect,
  }) {
    return init(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(Scan value)? scan,
    TResult? Function(StopScan value)? stopScan,
    TResult? Function(Init value)? init,
    TResult? Function(Connect value)? connect,
    TResult? Function(Disconnect value)? disconnect,
  }) {
    return init?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(Scan value)? scan,
    TResult Function(StopScan value)? stopScan,
    TResult Function(Init value)? init,
    TResult Function(Connect value)? connect,
    TResult Function(Disconnect value)? disconnect,
    required TResult orElse(),
  }) {
    if (init != null) {
      return init(this);
    }
    return orElse();
  }
}

abstract class Init implements DeviceScannerEvent {
  const factory Init() = _$InitImpl;
}

/// @nodoc
abstract class _$$ConnectImplCopyWith<$Res> {
  factory _$$ConnectImplCopyWith(
          _$ConnectImpl value, $Res Function(_$ConnectImpl) then) =
      __$$ConnectImplCopyWithImpl<$Res>;
  @useResult
  $Res call({BluetoothDevice device});
}

/// @nodoc
class __$$ConnectImplCopyWithImpl<$Res>
    extends _$DeviceScannerEventCopyWithImpl<$Res, _$ConnectImpl>
    implements _$$ConnectImplCopyWith<$Res> {
  __$$ConnectImplCopyWithImpl(
      _$ConnectImpl _value, $Res Function(_$ConnectImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? device = null,
  }) {
    return _then(_$ConnectImpl(
      null == device
          ? _value.device
          : device // ignore: cast_nullable_to_non_nullable
              as BluetoothDevice,
    ));
  }
}

/// @nodoc

class _$ConnectImpl implements Connect {
  const _$ConnectImpl(this.device);

  @override
  final BluetoothDevice device;

  @override
  String toString() {
    return 'DeviceScannerEvent.connect(device: $device)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$ConnectImpl &&
            (identical(other.device, device) || other.device == device));
  }

  @override
  int get hashCode => Object.hash(runtimeType, device);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$ConnectImplCopyWith<_$ConnectImpl> get copyWith =>
      __$$ConnectImplCopyWithImpl<_$ConnectImpl>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() scan,
    required TResult Function() stopScan,
    required TResult Function() init,
    required TResult Function(BluetoothDevice device) connect,
    required TResult Function(BluetoothDevice device) disconnect,
  }) {
    return connect(device);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? scan,
    TResult? Function()? stopScan,
    TResult? Function()? init,
    TResult? Function(BluetoothDevice device)? connect,
    TResult? Function(BluetoothDevice device)? disconnect,
  }) {
    return connect?.call(device);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? scan,
    TResult Function()? stopScan,
    TResult Function()? init,
    TResult Function(BluetoothDevice device)? connect,
    TResult Function(BluetoothDevice device)? disconnect,
    required TResult orElse(),
  }) {
    if (connect != null) {
      return connect(device);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(Scan value) scan,
    required TResult Function(StopScan value) stopScan,
    required TResult Function(Init value) init,
    required TResult Function(Connect value) connect,
    required TResult Function(Disconnect value) disconnect,
  }) {
    return connect(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(Scan value)? scan,
    TResult? Function(StopScan value)? stopScan,
    TResult? Function(Init value)? init,
    TResult? Function(Connect value)? connect,
    TResult? Function(Disconnect value)? disconnect,
  }) {
    return connect?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(Scan value)? scan,
    TResult Function(StopScan value)? stopScan,
    TResult Function(Init value)? init,
    TResult Function(Connect value)? connect,
    TResult Function(Disconnect value)? disconnect,
    required TResult orElse(),
  }) {
    if (connect != null) {
      return connect(this);
    }
    return orElse();
  }
}

abstract class Connect implements DeviceScannerEvent {
  const factory Connect(final BluetoothDevice device) = _$ConnectImpl;

  BluetoothDevice get device;
  @JsonKey(ignore: true)
  _$$ConnectImplCopyWith<_$ConnectImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$DisconnectImplCopyWith<$Res> {
  factory _$$DisconnectImplCopyWith(
          _$DisconnectImpl value, $Res Function(_$DisconnectImpl) then) =
      __$$DisconnectImplCopyWithImpl<$Res>;
  @useResult
  $Res call({BluetoothDevice device});
}

/// @nodoc
class __$$DisconnectImplCopyWithImpl<$Res>
    extends _$DeviceScannerEventCopyWithImpl<$Res, _$DisconnectImpl>
    implements _$$DisconnectImplCopyWith<$Res> {
  __$$DisconnectImplCopyWithImpl(
      _$DisconnectImpl _value, $Res Function(_$DisconnectImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? device = null,
  }) {
    return _then(_$DisconnectImpl(
      null == device
          ? _value.device
          : device // ignore: cast_nullable_to_non_nullable
              as BluetoothDevice,
    ));
  }
}

/// @nodoc

class _$DisconnectImpl implements Disconnect {
  const _$DisconnectImpl(this.device);

  @override
  final BluetoothDevice device;

  @override
  String toString() {
    return 'DeviceScannerEvent.disconnect(device: $device)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$DisconnectImpl &&
            (identical(other.device, device) || other.device == device));
  }

  @override
  int get hashCode => Object.hash(runtimeType, device);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$DisconnectImplCopyWith<_$DisconnectImpl> get copyWith =>
      __$$DisconnectImplCopyWithImpl<_$DisconnectImpl>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() scan,
    required TResult Function() stopScan,
    required TResult Function() init,
    required TResult Function(BluetoothDevice device) connect,
    required TResult Function(BluetoothDevice device) disconnect,
  }) {
    return disconnect(device);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? scan,
    TResult? Function()? stopScan,
    TResult? Function()? init,
    TResult? Function(BluetoothDevice device)? connect,
    TResult? Function(BluetoothDevice device)? disconnect,
  }) {
    return disconnect?.call(device);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? scan,
    TResult Function()? stopScan,
    TResult Function()? init,
    TResult Function(BluetoothDevice device)? connect,
    TResult Function(BluetoothDevice device)? disconnect,
    required TResult orElse(),
  }) {
    if (disconnect != null) {
      return disconnect(device);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(Scan value) scan,
    required TResult Function(StopScan value) stopScan,
    required TResult Function(Init value) init,
    required TResult Function(Connect value) connect,
    required TResult Function(Disconnect value) disconnect,
  }) {
    return disconnect(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(Scan value)? scan,
    TResult? Function(StopScan value)? stopScan,
    TResult? Function(Init value)? init,
    TResult? Function(Connect value)? connect,
    TResult? Function(Disconnect value)? disconnect,
  }) {
    return disconnect?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(Scan value)? scan,
    TResult Function(StopScan value)? stopScan,
    TResult Function(Init value)? init,
    TResult Function(Connect value)? connect,
    TResult Function(Disconnect value)? disconnect,
    required TResult orElse(),
  }) {
    if (disconnect != null) {
      return disconnect(this);
    }
    return orElse();
  }
}

abstract class Disconnect implements DeviceScannerEvent {
  const factory Disconnect(final BluetoothDevice device) = _$DisconnectImpl;

  BluetoothDevice get device;
  @JsonKey(ignore: true)
  _$$DisconnectImplCopyWith<_$DisconnectImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
