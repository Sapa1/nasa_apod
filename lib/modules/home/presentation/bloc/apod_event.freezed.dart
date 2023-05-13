// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'apod_event.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

/// @nodoc
mixin _$ApodEvent {
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() getApod,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? getApod,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? getApod,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_ApodEventGetApod value) getApod,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_ApodEventGetApod value)? getApod,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_ApodEventGetApod value)? getApod,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $ApodEventCopyWith<$Res> {
  factory $ApodEventCopyWith(ApodEvent value, $Res Function(ApodEvent) then) =
      _$ApodEventCopyWithImpl<$Res, ApodEvent>;
}

/// @nodoc
class _$ApodEventCopyWithImpl<$Res, $Val extends ApodEvent>
    implements $ApodEventCopyWith<$Res> {
  _$ApodEventCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;
}

/// @nodoc
abstract class _$$_ApodEventGetApodCopyWith<$Res> {
  factory _$$_ApodEventGetApodCopyWith(
          _$_ApodEventGetApod value, $Res Function(_$_ApodEventGetApod) then) =
      __$$_ApodEventGetApodCopyWithImpl<$Res>;
}

/// @nodoc
class __$$_ApodEventGetApodCopyWithImpl<$Res>
    extends _$ApodEventCopyWithImpl<$Res, _$_ApodEventGetApod>
    implements _$$_ApodEventGetApodCopyWith<$Res> {
  __$$_ApodEventGetApodCopyWithImpl(
      _$_ApodEventGetApod _value, $Res Function(_$_ApodEventGetApod) _then)
      : super(_value, _then);
}

/// @nodoc

class _$_ApodEventGetApod implements _ApodEventGetApod {
  const _$_ApodEventGetApod();

  @override
  String toString() {
    return 'ApodEvent.getApod()';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is _$_ApodEventGetApod);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() getApod,
  }) {
    return getApod();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? getApod,
  }) {
    return getApod?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? getApod,
    required TResult orElse(),
  }) {
    if (getApod != null) {
      return getApod();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_ApodEventGetApod value) getApod,
  }) {
    return getApod(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_ApodEventGetApod value)? getApod,
  }) {
    return getApod?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_ApodEventGetApod value)? getApod,
    required TResult orElse(),
  }) {
    if (getApod != null) {
      return getApod(this);
    }
    return orElse();
  }
}

abstract class _ApodEventGetApod implements ApodEvent {
  const factory _ApodEventGetApod() = _$_ApodEventGetApod;
}
