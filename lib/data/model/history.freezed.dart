// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'history.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

/// @nodoc
mixin _$History {
  String get id => throw _privateConstructorUsedError;
  String get articleId => throw _privateConstructorUsedError;
  String? get taisenId => throw _privateConstructorUsedError;
  List<HistoryQuiz> get historyQuizzes => throw _privateConstructorUsedError;
  bool get isTaisen => throw _privateConstructorUsedError;
  bool get isPublic => throw _privateConstructorUsedError;

  @JsonKey(ignore: true)
  $HistoryCopyWith<History> get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $HistoryCopyWith<$Res> {
  factory $HistoryCopyWith(History value, $Res Function(History) then) =
      _$HistoryCopyWithImpl<$Res, History>;
  @useResult
  $Res call(
      {String id,
      String articleId,
      String? taisenId,
      List<HistoryQuiz> historyQuizzes,
      bool isTaisen,
      bool isPublic});
}

/// @nodoc
class _$HistoryCopyWithImpl<$Res, $Val extends History>
    implements $HistoryCopyWith<$Res> {
  _$HistoryCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = null,
    Object? articleId = null,
    Object? taisenId = freezed,
    Object? historyQuizzes = null,
    Object? isTaisen = null,
    Object? isPublic = null,
  }) {
    return _then(_value.copyWith(
      id: null == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as String,
      articleId: null == articleId
          ? _value.articleId
          : articleId // ignore: cast_nullable_to_non_nullable
              as String,
      taisenId: freezed == taisenId
          ? _value.taisenId
          : taisenId // ignore: cast_nullable_to_non_nullable
              as String?,
      historyQuizzes: null == historyQuizzes
          ? _value.historyQuizzes
          : historyQuizzes // ignore: cast_nullable_to_non_nullable
              as List<HistoryQuiz>,
      isTaisen: null == isTaisen
          ? _value.isTaisen
          : isTaisen // ignore: cast_nullable_to_non_nullable
              as bool,
      isPublic: null == isPublic
          ? _value.isPublic
          : isPublic // ignore: cast_nullable_to_non_nullable
              as bool,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$HistoryImplCopyWith<$Res> implements $HistoryCopyWith<$Res> {
  factory _$$HistoryImplCopyWith(
          _$HistoryImpl value, $Res Function(_$HistoryImpl) then) =
      __$$HistoryImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {String id,
      String articleId,
      String? taisenId,
      List<HistoryQuiz> historyQuizzes,
      bool isTaisen,
      bool isPublic});
}

/// @nodoc
class __$$HistoryImplCopyWithImpl<$Res>
    extends _$HistoryCopyWithImpl<$Res, _$HistoryImpl>
    implements _$$HistoryImplCopyWith<$Res> {
  __$$HistoryImplCopyWithImpl(
      _$HistoryImpl _value, $Res Function(_$HistoryImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = null,
    Object? articleId = null,
    Object? taisenId = freezed,
    Object? historyQuizzes = null,
    Object? isTaisen = null,
    Object? isPublic = null,
  }) {
    return _then(_$HistoryImpl(
      id: null == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as String,
      articleId: null == articleId
          ? _value.articleId
          : articleId // ignore: cast_nullable_to_non_nullable
              as String,
      taisenId: freezed == taisenId
          ? _value.taisenId
          : taisenId // ignore: cast_nullable_to_non_nullable
              as String?,
      historyQuizzes: null == historyQuizzes
          ? _value._historyQuizzes
          : historyQuizzes // ignore: cast_nullable_to_non_nullable
              as List<HistoryQuiz>,
      isTaisen: null == isTaisen
          ? _value.isTaisen
          : isTaisen // ignore: cast_nullable_to_non_nullable
              as bool,
      isPublic: null == isPublic
          ? _value.isPublic
          : isPublic // ignore: cast_nullable_to_non_nullable
              as bool,
    ));
  }
}

/// @nodoc

class _$HistoryImpl extends _History {
  const _$HistoryImpl(
      {required this.id,
      required this.articleId,
      required this.taisenId,
      required final List<HistoryQuiz> historyQuizzes,
      this.isTaisen = false,
      this.isPublic = false})
      : _historyQuizzes = historyQuizzes,
        super._();

  @override
  final String id;
  @override
  final String articleId;
  @override
  final String? taisenId;
  final List<HistoryQuiz> _historyQuizzes;
  @override
  List<HistoryQuiz> get historyQuizzes {
    if (_historyQuizzes is EqualUnmodifiableListView) return _historyQuizzes;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_historyQuizzes);
  }

  @override
  @JsonKey()
  final bool isTaisen;
  @override
  @JsonKey()
  final bool isPublic;

  @override
  String toString() {
    return 'History(id: $id, articleId: $articleId, taisenId: $taisenId, historyQuizzes: $historyQuizzes, isTaisen: $isTaisen, isPublic: $isPublic)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$HistoryImpl &&
            (identical(other.id, id) || other.id == id) &&
            (identical(other.articleId, articleId) ||
                other.articleId == articleId) &&
            (identical(other.taisenId, taisenId) ||
                other.taisenId == taisenId) &&
            const DeepCollectionEquality()
                .equals(other._historyQuizzes, _historyQuizzes) &&
            (identical(other.isTaisen, isTaisen) ||
                other.isTaisen == isTaisen) &&
            (identical(other.isPublic, isPublic) ||
                other.isPublic == isPublic));
  }

  @override
  int get hashCode => Object.hash(runtimeType, id, articleId, taisenId,
      const DeepCollectionEquality().hash(_historyQuizzes), isTaisen, isPublic);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$HistoryImplCopyWith<_$HistoryImpl> get copyWith =>
      __$$HistoryImplCopyWithImpl<_$HistoryImpl>(this, _$identity);
}

abstract class _History extends History {
  const factory _History(
      {required final String id,
      required final String articleId,
      required final String? taisenId,
      required final List<HistoryQuiz> historyQuizzes,
      final bool isTaisen,
      final bool isPublic}) = _$HistoryImpl;
  const _History._() : super._();

  @override
  String get id;
  @override
  String get articleId;
  @override
  String? get taisenId;
  @override
  List<HistoryQuiz> get historyQuizzes;
  @override
  bool get isTaisen;
  @override
  bool get isPublic;
  @override
  @JsonKey(ignore: true)
  _$$HistoryImplCopyWith<_$HistoryImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
