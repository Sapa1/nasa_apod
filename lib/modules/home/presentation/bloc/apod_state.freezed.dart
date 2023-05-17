// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'apod_state.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

/// @nodoc
mixin _$ApodState {
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function() loading,
    required TResult Function(String message) failure,
    required TResult Function(List<ApodEntity> apodEntity) success,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? initial,
    TResult? Function()? loading,
    TResult? Function(String message)? failure,
    TResult? Function(List<ApodEntity> apodEntity)? success,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? loading,
    TResult Function(String message)? failure,
    TResult Function(List<ApodEntity> apodEntity)? success,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_ApodStateInitial value) initial,
    required TResult Function(_ApodStateLoading value) loading,
    required TResult Function(_ApodStateFailure value) failure,
    required TResult Function(_ApodStateSuccess value) success,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_ApodStateInitial value)? initial,
    TResult? Function(_ApodStateLoading value)? loading,
    TResult? Function(_ApodStateFailure value)? failure,
    TResult? Function(_ApodStateSuccess value)? success,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_ApodStateInitial value)? initial,
    TResult Function(_ApodStateLoading value)? loading,
    TResult Function(_ApodStateFailure value)? failure,
    TResult Function(_ApodStateSuccess value)? success,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $ApodStateCopyWith<$Res> {
  factory $ApodStateCopyWith(ApodState value, $Res Function(ApodState) then) =
      _$ApodStateCopyWithImpl<$Res, ApodState>;
}

/// @nodoc
class _$ApodStateCopyWithImpl<$Res, $Val extends ApodState>
    implements $ApodStateCopyWith<$Res> {
  _$ApodStateCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;
}

/// @nodoc
abstract class _$$_ApodStateInitialCopyWith<$Res> {
  factory _$$_ApodStateInitialCopyWith(
          _$_ApodStateInitial value, $Res Function(_$_ApodStateInitial) then) =
      __$$_ApodStateInitialCopyWithImpl<$Res>;
}

/// @nodoc
class __$$_ApodStateInitialCopyWithImpl<$Res>
    extends _$ApodStateCopyWithImpl<$Res, _$_ApodStateInitial>
    implements _$$_ApodStateInitialCopyWith<$Res> {
  __$$_ApodStateInitialCopyWithImpl(
      _$_ApodStateInitial _value, $Res Function(_$_ApodStateInitial) _then)
      : super(_value, _then);
}

/// @nodoc

class _$_ApodStateInitial implements _ApodStateInitial {
  const _$_ApodStateInitial();

  @override
  String toString() {
    return 'ApodState.initial()';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is _$_ApodStateInitial);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function() loading,
    required TResult Function(String message) failure,
    required TResult Function(List<ApodEntity> apodEntity) success,
  }) {
    return initial();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? initial,
    TResult? Function()? loading,
    TResult? Function(String message)? failure,
    TResult? Function(List<ApodEntity> apodEntity)? success,
  }) {
    return initial?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? loading,
    TResult Function(String message)? failure,
    TResult Function(List<ApodEntity> apodEntity)? success,
    required TResult orElse(),
  }) {
    if (initial != null) {
      return initial();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_ApodStateInitial value) initial,
    required TResult Function(_ApodStateLoading value) loading,
    required TResult Function(_ApodStateFailure value) failure,
    required TResult Function(_ApodStateSuccess value) success,
  }) {
    return initial(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_ApodStateInitial value)? initial,
    TResult? Function(_ApodStateLoading value)? loading,
    TResult? Function(_ApodStateFailure value)? failure,
    TResult? Function(_ApodStateSuccess value)? success,
  }) {
    return initial?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_ApodStateInitial value)? initial,
    TResult Function(_ApodStateLoading value)? loading,
    TResult Function(_ApodStateFailure value)? failure,
    TResult Function(_ApodStateSuccess value)? success,
    required TResult orElse(),
  }) {
    if (initial != null) {
      return initial(this);
    }
    return orElse();
  }
}

abstract class _ApodStateInitial implements ApodState {
  const factory _ApodStateInitial() = _$_ApodStateInitial;
}

/// @nodoc
abstract class _$$_ApodStateLoadingCopyWith<$Res> {
  factory _$$_ApodStateLoadingCopyWith(
          _$_ApodStateLoading value, $Res Function(_$_ApodStateLoading) then) =
      __$$_ApodStateLoadingCopyWithImpl<$Res>;
}

/// @nodoc
class __$$_ApodStateLoadingCopyWithImpl<$Res>
    extends _$ApodStateCopyWithImpl<$Res, _$_ApodStateLoading>
    implements _$$_ApodStateLoadingCopyWith<$Res> {
  __$$_ApodStateLoadingCopyWithImpl(
      _$_ApodStateLoading _value, $Res Function(_$_ApodStateLoading) _then)
      : super(_value, _then);
}

/// @nodoc

class _$_ApodStateLoading implements _ApodStateLoading {
  const _$_ApodStateLoading();

  @override
  String toString() {
    return 'ApodState.loading()';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is _$_ApodStateLoading);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function() loading,
    required TResult Function(String message) failure,
    required TResult Function(List<ApodEntity> apodEntity) success,
  }) {
    return loading();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? initial,
    TResult? Function()? loading,
    TResult? Function(String message)? failure,
    TResult? Function(List<ApodEntity> apodEntity)? success,
  }) {
    return loading?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? loading,
    TResult Function(String message)? failure,
    TResult Function(List<ApodEntity> apodEntity)? success,
    required TResult orElse(),
  }) {
    if (loading != null) {
      return loading();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_ApodStateInitial value) initial,
    required TResult Function(_ApodStateLoading value) loading,
    required TResult Function(_ApodStateFailure value) failure,
    required TResult Function(_ApodStateSuccess value) success,
  }) {
    return loading(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_ApodStateInitial value)? initial,
    TResult? Function(_ApodStateLoading value)? loading,
    TResult? Function(_ApodStateFailure value)? failure,
    TResult? Function(_ApodStateSuccess value)? success,
  }) {
    return loading?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_ApodStateInitial value)? initial,
    TResult Function(_ApodStateLoading value)? loading,
    TResult Function(_ApodStateFailure value)? failure,
    TResult Function(_ApodStateSuccess value)? success,
    required TResult orElse(),
  }) {
    if (loading != null) {
      return loading(this);
    }
    return orElse();
  }
}

abstract class _ApodStateLoading implements ApodState {
  const factory _ApodStateLoading() = _$_ApodStateLoading;
}

/// @nodoc
abstract class _$$_ApodStateFailureCopyWith<$Res> {
  factory _$$_ApodStateFailureCopyWith(
          _$_ApodStateFailure value, $Res Function(_$_ApodStateFailure) then) =
      __$$_ApodStateFailureCopyWithImpl<$Res>;
  @useResult
  $Res call({String message});
}

/// @nodoc
class __$$_ApodStateFailureCopyWithImpl<$Res>
    extends _$ApodStateCopyWithImpl<$Res, _$_ApodStateFailure>
    implements _$$_ApodStateFailureCopyWith<$Res> {
  __$$_ApodStateFailureCopyWithImpl(
      _$_ApodStateFailure _value, $Res Function(_$_ApodStateFailure) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? message = null,
  }) {
    return _then(_$_ApodStateFailure(
      null == message
          ? _value.message
          : message // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc

class _$_ApodStateFailure implements _ApodStateFailure {
  const _$_ApodStateFailure(this.message);

  @override
  final String message;

  @override
  String toString() {
    return 'ApodState.failure(message: $message)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_ApodStateFailure &&
            (identical(other.message, message) || other.message == message));
  }

  @override
  int get hashCode => Object.hash(runtimeType, message);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_ApodStateFailureCopyWith<_$_ApodStateFailure> get copyWith =>
      __$$_ApodStateFailureCopyWithImpl<_$_ApodStateFailure>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function() loading,
    required TResult Function(String message) failure,
    required TResult Function(List<ApodEntity> apodEntity) success,
  }) {
    return failure(message);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? initial,
    TResult? Function()? loading,
    TResult? Function(String message)? failure,
    TResult? Function(List<ApodEntity> apodEntity)? success,
  }) {
    return failure?.call(message);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? loading,
    TResult Function(String message)? failure,
    TResult Function(List<ApodEntity> apodEntity)? success,
    required TResult orElse(),
  }) {
    if (failure != null) {
      return failure(message);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_ApodStateInitial value) initial,
    required TResult Function(_ApodStateLoading value) loading,
    required TResult Function(_ApodStateFailure value) failure,
    required TResult Function(_ApodStateSuccess value) success,
  }) {
    return failure(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_ApodStateInitial value)? initial,
    TResult? Function(_ApodStateLoading value)? loading,
    TResult? Function(_ApodStateFailure value)? failure,
    TResult? Function(_ApodStateSuccess value)? success,
  }) {
    return failure?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_ApodStateInitial value)? initial,
    TResult Function(_ApodStateLoading value)? loading,
    TResult Function(_ApodStateFailure value)? failure,
    TResult Function(_ApodStateSuccess value)? success,
    required TResult orElse(),
  }) {
    if (failure != null) {
      return failure(this);
    }
    return orElse();
  }
}

abstract class _ApodStateFailure implements ApodState {
  const factory _ApodStateFailure(final String message) = _$_ApodStateFailure;

  String get message;
  @JsonKey(ignore: true)
  _$$_ApodStateFailureCopyWith<_$_ApodStateFailure> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$_ApodStateSuccessCopyWith<$Res> {
  factory _$$_ApodStateSuccessCopyWith(
          _$_ApodStateSuccess value, $Res Function(_$_ApodStateSuccess) then) =
      __$$_ApodStateSuccessCopyWithImpl<$Res>;
  @useResult
  $Res call({List<ApodEntity> apodEntity});
}

/// @nodoc
class __$$_ApodStateSuccessCopyWithImpl<$Res>
    extends _$ApodStateCopyWithImpl<$Res, _$_ApodStateSuccess>
    implements _$$_ApodStateSuccessCopyWith<$Res> {
  __$$_ApodStateSuccessCopyWithImpl(
      _$_ApodStateSuccess _value, $Res Function(_$_ApodStateSuccess) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? apodEntity = null,
  }) {
    return _then(_$_ApodStateSuccess(
      apodEntity: null == apodEntity
          ? _value._apodEntity
          : apodEntity // ignore: cast_nullable_to_non_nullable
              as List<ApodEntity>,
    ));
  }
}

/// @nodoc

class _$_ApodStateSuccess implements _ApodStateSuccess {
  const _$_ApodStateSuccess({required final List<ApodEntity> apodEntity})
      : _apodEntity = apodEntity;

  final List<ApodEntity> _apodEntity;
  @override
  List<ApodEntity> get apodEntity {
    if (_apodEntity is EqualUnmodifiableListView) return _apodEntity;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_apodEntity);
  }

  @override
  String toString() {
    return 'ApodState.success(apodEntity: $apodEntity)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_ApodStateSuccess &&
            const DeepCollectionEquality()
                .equals(other._apodEntity, _apodEntity));
  }

  @override
  int get hashCode => Object.hash(
      runtimeType, const DeepCollectionEquality().hash(_apodEntity));

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_ApodStateSuccessCopyWith<_$_ApodStateSuccess> get copyWith =>
      __$$_ApodStateSuccessCopyWithImpl<_$_ApodStateSuccess>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function() loading,
    required TResult Function(String message) failure,
    required TResult Function(List<ApodEntity> apodEntity) success,
  }) {
    return success(apodEntity);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? initial,
    TResult? Function()? loading,
    TResult? Function(String message)? failure,
    TResult? Function(List<ApodEntity> apodEntity)? success,
  }) {
    return success?.call(apodEntity);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? loading,
    TResult Function(String message)? failure,
    TResult Function(List<ApodEntity> apodEntity)? success,
    required TResult orElse(),
  }) {
    if (success != null) {
      return success(apodEntity);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_ApodStateInitial value) initial,
    required TResult Function(_ApodStateLoading value) loading,
    required TResult Function(_ApodStateFailure value) failure,
    required TResult Function(_ApodStateSuccess value) success,
  }) {
    return success(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_ApodStateInitial value)? initial,
    TResult? Function(_ApodStateLoading value)? loading,
    TResult? Function(_ApodStateFailure value)? failure,
    TResult? Function(_ApodStateSuccess value)? success,
  }) {
    return success?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_ApodStateInitial value)? initial,
    TResult Function(_ApodStateLoading value)? loading,
    TResult Function(_ApodStateFailure value)? failure,
    TResult Function(_ApodStateSuccess value)? success,
    required TResult orElse(),
  }) {
    if (success != null) {
      return success(this);
    }
    return orElse();
  }
}

abstract class _ApodStateSuccess implements ApodState {
  const factory _ApodStateSuccess(
      {required final List<ApodEntity> apodEntity}) = _$_ApodStateSuccess;

  List<ApodEntity> get apodEntity;
  @JsonKey(ignore: true)
  _$$_ApodStateSuccessCopyWith<_$_ApodStateSuccess> get copyWith =>
      throw _privateConstructorUsedError;
}
