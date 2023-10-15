// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'use_home_screen_state.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

/// @nodoc
mixin _$HomeScreenState {
  bool get isQuizMode => throw _privateConstructorUsedError;
  void Function(bool) get setMode => throw _privateConstructorUsedError;

  @JsonKey(ignore: true)
  $HomeScreenStateCopyWith<HomeScreenState> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $HomeScreenStateCopyWith<$Res> {
  factory $HomeScreenStateCopyWith(
          HomeScreenState value, $Res Function(HomeScreenState) then) =
      _$HomeScreenStateCopyWithImpl<$Res, HomeScreenState>;
  @useResult
  $Res call({bool isQuizMode, void Function(bool) setMode});
}

/// @nodoc
class _$HomeScreenStateCopyWithImpl<$Res, $Val extends HomeScreenState>
    implements $HomeScreenStateCopyWith<$Res> {
  _$HomeScreenStateCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? isQuizMode = null,
    Object? setMode = null,
  }) {
    return _then(_value.copyWith(
      isQuizMode: null == isQuizMode
          ? _value.isQuizMode
          : isQuizMode // ignore: cast_nullable_to_non_nullable
              as bool,
      setMode: null == setMode
          ? _value.setMode
          : setMode // ignore: cast_nullable_to_non_nullable
              as void Function(bool),
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$HomeScreenStateImplCopyWith<$Res>
    implements $HomeScreenStateCopyWith<$Res> {
  factory _$$HomeScreenStateImplCopyWith(_$HomeScreenStateImpl value,
          $Res Function(_$HomeScreenStateImpl) then) =
      __$$HomeScreenStateImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({bool isQuizMode, void Function(bool) setMode});
}

/// @nodoc
class __$$HomeScreenStateImplCopyWithImpl<$Res>
    extends _$HomeScreenStateCopyWithImpl<$Res, _$HomeScreenStateImpl>
    implements _$$HomeScreenStateImplCopyWith<$Res> {
  __$$HomeScreenStateImplCopyWithImpl(
      _$HomeScreenStateImpl _value, $Res Function(_$HomeScreenStateImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? isQuizMode = null,
    Object? setMode = null,
  }) {
    return _then(_$HomeScreenStateImpl(
      isQuizMode: null == isQuizMode
          ? _value.isQuizMode
          : isQuizMode // ignore: cast_nullable_to_non_nullable
              as bool,
      setMode: null == setMode
          ? _value.setMode
          : setMode // ignore: cast_nullable_to_non_nullable
              as void Function(bool),
    ));
  }
}

/// @nodoc

class _$HomeScreenStateImpl extends _HomeScreenState {
  const _$HomeScreenStateImpl({required this.isQuizMode, required this.setMode})
      : super._();

  @override
  final bool isQuizMode;
  @override
  final void Function(bool) setMode;

  @override
  String toString() {
    return 'HomeScreenState(isQuizMode: $isQuizMode, setMode: $setMode)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$HomeScreenStateImpl &&
            (identical(other.isQuizMode, isQuizMode) ||
                other.isQuizMode == isQuizMode) &&
            (identical(other.setMode, setMode) || other.setMode == setMode));
  }

  @override
  int get hashCode => Object.hash(runtimeType, isQuizMode, setMode);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$HomeScreenStateImplCopyWith<_$HomeScreenStateImpl> get copyWith =>
      __$$HomeScreenStateImplCopyWithImpl<_$HomeScreenStateImpl>(
          this, _$identity);
}

abstract class _HomeScreenState extends HomeScreenState {
  const factory _HomeScreenState(
      {required final bool isQuizMode,
      required final void Function(bool) setMode}) = _$HomeScreenStateImpl;
  const _HomeScreenState._() : super._();

  @override
  bool get isQuizMode;
  @override
  void Function(bool) get setMode;
  @override
  @JsonKey(ignore: true)
  _$$HomeScreenStateImplCopyWith<_$HomeScreenStateImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
