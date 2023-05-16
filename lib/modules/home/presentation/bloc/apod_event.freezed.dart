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
  String get startDate => throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(String startDate) getApod,
    required TResult Function(String startDate) getNextPage,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(String startDate)? getApod,
    TResult? Function(String startDate)? getNextPage,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(String startDate)? getApod,
    TResult Function(String startDate)? getNextPage,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_ApodEventGetApod value) getApod,
    required TResult Function(_ApodEventGetNextPage value) getNextPage,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_ApodEventGetApod value)? getApod,
    TResult? Function(_ApodEventGetNextPage value)? getNextPage,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_ApodEventGetApod value)? getApod,
    TResult Function(_ApodEventGetNextPage value)? getNextPage,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;

  @JsonKey(ignore: true)
  $ApodEventCopyWith<ApodEvent> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $ApodEventCopyWith<$Res> {
  factory $ApodEventCopyWith(ApodEvent value, $Res Function(ApodEvent) then) =
      _$ApodEventCopyWithImpl<$Res, ApodEvent>;
  @useResult
  $Res call({String startDate});
}

/// @nodoc
class _$ApodEventCopyWithImpl<$Res, $Val extends ApodEvent>
    implements $ApodEventCopyWith<$Res> {
  _$ApodEventCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? startDate = null,
  }) {
    return _then(_value.copyWith(
      startDate: null == startDate
          ? _value.startDate
          : startDate // ignore: cast_nullable_to_non_nullable
              as String,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$_ApodEventGetApodCopyWith<$Res>
    implements $ApodEventCopyWith<$Res> {
  factory _$$_ApodEventGetApodCopyWith(
          _$_ApodEventGetApod value, $Res Function(_$_ApodEventGetApod) then) =
      __$$_ApodEventGetApodCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({String startDate});
}

/// @nodoc
class __$$_ApodEventGetApodCopyWithImpl<$Res>
    extends _$ApodEventCopyWithImpl<$Res, _$_ApodEventGetApod>
    implements _$$_ApodEventGetApodCopyWith<$Res> {
  __$$_ApodEventGetApodCopyWithImpl(
      _$_ApodEventGetApod _value, $Res Function(_$_ApodEventGetApod) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? startDate = null,
  }) {
    return _then(_$_ApodEventGetApod(
      startDate: null == startDate
          ? _value.startDate
          : startDate // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc

class _$_ApodEventGetApod implements _ApodEventGetApod {
  const _$_ApodEventGetApod({required this.startDate});

  @override
  final String startDate;

  @override
  String toString() {
    return 'ApodEvent.getApod(startDate: $startDate)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_ApodEventGetApod &&
            (identical(other.startDate, startDate) ||
                other.startDate == startDate));
  }

  @override
  int get hashCode => Object.hash(runtimeType, startDate);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_ApodEventGetApodCopyWith<_$_ApodEventGetApod> get copyWith =>
      __$$_ApodEventGetApodCopyWithImpl<_$_ApodEventGetApod>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(String startDate) getApod,
    required TResult Function(String startDate) getNextPage,
  }) {
    return getApod(startDate);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(String startDate)? getApod,
    TResult? Function(String startDate)? getNextPage,
  }) {
    return getApod?.call(startDate);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(String startDate)? getApod,
    TResult Function(String startDate)? getNextPage,
    required TResult orElse(),
  }) {
    if (getApod != null) {
      return getApod(startDate);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_ApodEventGetApod value) getApod,
    required TResult Function(_ApodEventGetNextPage value) getNextPage,
  }) {
    return getApod(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_ApodEventGetApod value)? getApod,
    TResult? Function(_ApodEventGetNextPage value)? getNextPage,
  }) {
    return getApod?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_ApodEventGetApod value)? getApod,
    TResult Function(_ApodEventGetNextPage value)? getNextPage,
    required TResult orElse(),
  }) {
    if (getApod != null) {
      return getApod(this);
    }
    return orElse();
  }
}

abstract class _ApodEventGetApod implements ApodEvent {
  const factory _ApodEventGetApod({required final String startDate}) =
      _$_ApodEventGetApod;

  @override
  String get startDate;
  @override
  @JsonKey(ignore: true)
  _$$_ApodEventGetApodCopyWith<_$_ApodEventGetApod> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$_ApodEventGetNextPageCopyWith<$Res>
    implements $ApodEventCopyWith<$Res> {
  factory _$$_ApodEventGetNextPageCopyWith(_$_ApodEventGetNextPage value,
          $Res Function(_$_ApodEventGetNextPage) then) =
      __$$_ApodEventGetNextPageCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({String startDate});
}

/// @nodoc
class __$$_ApodEventGetNextPageCopyWithImpl<$Res>
    extends _$ApodEventCopyWithImpl<$Res, _$_ApodEventGetNextPage>
    implements _$$_ApodEventGetNextPageCopyWith<$Res> {
  __$$_ApodEventGetNextPageCopyWithImpl(_$_ApodEventGetNextPage _value,
      $Res Function(_$_ApodEventGetNextPage) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? startDate = null,
  }) {
    return _then(_$_ApodEventGetNextPage(
      startDate: null == startDate
          ? _value.startDate
          : startDate // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc

class _$_ApodEventGetNextPage implements _ApodEventGetNextPage {
  const _$_ApodEventGetNextPage({required this.startDate});

  @override
  final String startDate;

  @override
  String toString() {
    return 'ApodEvent.getNextPage(startDate: $startDate)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_ApodEventGetNextPage &&
            (identical(other.startDate, startDate) ||
                other.startDate == startDate));
  }

  @override
  int get hashCode => Object.hash(runtimeType, startDate);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_ApodEventGetNextPageCopyWith<_$_ApodEventGetNextPage> get copyWith =>
      __$$_ApodEventGetNextPageCopyWithImpl<_$_ApodEventGetNextPage>(
          this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(String startDate) getApod,
    required TResult Function(String startDate) getNextPage,
  }) {
    return getNextPage(startDate);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(String startDate)? getApod,
    TResult? Function(String startDate)? getNextPage,
  }) {
    return getNextPage?.call(startDate);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(String startDate)? getApod,
    TResult Function(String startDate)? getNextPage,
    required TResult orElse(),
  }) {
    if (getNextPage != null) {
      return getNextPage(startDate);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_ApodEventGetApod value) getApod,
    required TResult Function(_ApodEventGetNextPage value) getNextPage,
  }) {
    return getNextPage(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_ApodEventGetApod value)? getApod,
    TResult? Function(_ApodEventGetNextPage value)? getNextPage,
  }) {
    return getNextPage?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_ApodEventGetApod value)? getApod,
    TResult Function(_ApodEventGetNextPage value)? getNextPage,
    required TResult orElse(),
  }) {
    if (getNextPage != null) {
      return getNextPage(this);
    }
    return orElse();
  }
}

abstract class _ApodEventGetNextPage implements ApodEvent {
  const factory _ApodEventGetNextPage({required final String startDate}) =
      _$_ApodEventGetNextPage;

  @override
  String get startDate;
  @override
  @JsonKey(ignore: true)
  _$$_ApodEventGetNextPageCopyWith<_$_ApodEventGetNextPage> get copyWith =>
      throw _privateConstructorUsedError;
}
