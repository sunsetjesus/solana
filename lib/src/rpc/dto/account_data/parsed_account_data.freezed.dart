// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target

part of 'parsed_account_data.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more informations: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

ParsedAccountData _$ParsedAccountDataFromJson(Map<String, dynamic> json) {
  switch (json['program']) {
    case 'spl-token':
      return ParsedSplTokenProgramAccountData.fromJson(json);
    case 'stake':
      return ParsedStakeProgramAccountData.fromJson(json);

    default:
      return UnsupportedProgramAccountData.fromJson(json);
  }
}

/// @nodoc
class _$ParsedAccountDataTearOff {
  const _$ParsedAccountDataTearOff();

  ParsedSplTokenProgramAccountData splToken(SplTokenProgramAccountData parsed) {
    return ParsedSplTokenProgramAccountData(
      parsed,
    );
  }

  ParsedStakeProgramAccountData stake(StakeProgramAccountData parsed) {
    return ParsedStakeProgramAccountData(
      parsed,
    );
  }

  UnsupportedProgramAccountData unsupported(Map<String, dynamic> parsed) {
    return UnsupportedProgramAccountData(
      parsed,
    );
  }

  ParsedAccountData fromJson(Map<String, Object?> json) {
    return ParsedAccountData.fromJson(json);
  }
}

/// @nodoc
const $ParsedAccountData = _$ParsedAccountDataTearOff();

/// @nodoc
mixin _$ParsedAccountData {
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(SplTokenProgramAccountData parsed) splToken,
    required TResult Function(StakeProgramAccountData parsed) stake,
    required TResult Function(Map<String, dynamic> parsed) unsupported,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function(SplTokenProgramAccountData parsed)? splToken,
    TResult Function(StakeProgramAccountData parsed)? stake,
    TResult Function(Map<String, dynamic> parsed)? unsupported,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(SplTokenProgramAccountData parsed)? splToken,
    TResult Function(StakeProgramAccountData parsed)? stake,
    TResult Function(Map<String, dynamic> parsed)? unsupported,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(ParsedSplTokenProgramAccountData value) splToken,
    required TResult Function(ParsedStakeProgramAccountData value) stake,
    required TResult Function(UnsupportedProgramAccountData value) unsupported,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(ParsedSplTokenProgramAccountData value)? splToken,
    TResult Function(ParsedStakeProgramAccountData value)? stake,
    TResult Function(UnsupportedProgramAccountData value)? unsupported,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(ParsedSplTokenProgramAccountData value)? splToken,
    TResult Function(ParsedStakeProgramAccountData value)? stake,
    TResult Function(UnsupportedProgramAccountData value)? unsupported,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $ParsedAccountDataCopyWith<$Res> {
  factory $ParsedAccountDataCopyWith(
          ParsedAccountData value, $Res Function(ParsedAccountData) then) =
      _$ParsedAccountDataCopyWithImpl<$Res>;
}

/// @nodoc
class _$ParsedAccountDataCopyWithImpl<$Res>
    implements $ParsedAccountDataCopyWith<$Res> {
  _$ParsedAccountDataCopyWithImpl(this._value, this._then);

  final ParsedAccountData _value;
  // ignore: unused_field
  final $Res Function(ParsedAccountData) _then;
}

/// @nodoc
abstract class $ParsedSplTokenProgramAccountDataCopyWith<$Res> {
  factory $ParsedSplTokenProgramAccountDataCopyWith(
          ParsedSplTokenProgramAccountData value,
          $Res Function(ParsedSplTokenProgramAccountData) then) =
      _$ParsedSplTokenProgramAccountDataCopyWithImpl<$Res>;
  $Res call({SplTokenProgramAccountData parsed});

  $SplTokenProgramAccountDataCopyWith<$Res> get parsed;
}

/// @nodoc
class _$ParsedSplTokenProgramAccountDataCopyWithImpl<$Res>
    extends _$ParsedAccountDataCopyWithImpl<$Res>
    implements $ParsedSplTokenProgramAccountDataCopyWith<$Res> {
  _$ParsedSplTokenProgramAccountDataCopyWithImpl(
      ParsedSplTokenProgramAccountData _value,
      $Res Function(ParsedSplTokenProgramAccountData) _then)
      : super(_value, (v) => _then(v as ParsedSplTokenProgramAccountData));

  @override
  ParsedSplTokenProgramAccountData get _value =>
      super._value as ParsedSplTokenProgramAccountData;

  @override
  $Res call({
    Object? parsed = freezed,
  }) {
    return _then(ParsedSplTokenProgramAccountData(
      parsed == freezed
          ? _value.parsed
          : parsed // ignore: cast_nullable_to_non_nullable
              as SplTokenProgramAccountData,
    ));
  }

  @override
  $SplTokenProgramAccountDataCopyWith<$Res> get parsed {
    return $SplTokenProgramAccountDataCopyWith<$Res>(_value.parsed, (value) {
      return _then(_value.copyWith(parsed: value));
    });
  }
}

/// @nodoc
@JsonSerializable()
@FreezedUnionValue('spl-token')
class _$ParsedSplTokenProgramAccountData
    implements ParsedSplTokenProgramAccountData {
  const _$ParsedSplTokenProgramAccountData(this.parsed, {String? $type})
      : $type = $type ?? 'spl-token';

  factory _$ParsedSplTokenProgramAccountData.fromJson(
          Map<String, dynamic> json) =>
      _$$ParsedSplTokenProgramAccountDataFromJson(json);

  @override
  final SplTokenProgramAccountData parsed;

  @JsonKey(name: 'program')
  final String $type;

  @override
  String toString() {
    return 'ParsedAccountData.splToken(parsed: $parsed)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is ParsedSplTokenProgramAccountData &&
            const DeepCollectionEquality().equals(other.parsed, parsed));
  }

  @override
  int get hashCode =>
      Object.hash(runtimeType, const DeepCollectionEquality().hash(parsed));

  @JsonKey(ignore: true)
  @override
  $ParsedSplTokenProgramAccountDataCopyWith<ParsedSplTokenProgramAccountData>
      get copyWith => _$ParsedSplTokenProgramAccountDataCopyWithImpl<
          ParsedSplTokenProgramAccountData>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(SplTokenProgramAccountData parsed) splToken,
    required TResult Function(StakeProgramAccountData parsed) stake,
    required TResult Function(Map<String, dynamic> parsed) unsupported,
  }) {
    return splToken(parsed);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function(SplTokenProgramAccountData parsed)? splToken,
    TResult Function(StakeProgramAccountData parsed)? stake,
    TResult Function(Map<String, dynamic> parsed)? unsupported,
  }) {
    return splToken?.call(parsed);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(SplTokenProgramAccountData parsed)? splToken,
    TResult Function(StakeProgramAccountData parsed)? stake,
    TResult Function(Map<String, dynamic> parsed)? unsupported,
    required TResult orElse(),
  }) {
    if (splToken != null) {
      return splToken(parsed);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(ParsedSplTokenProgramAccountData value) splToken,
    required TResult Function(ParsedStakeProgramAccountData value) stake,
    required TResult Function(UnsupportedProgramAccountData value) unsupported,
  }) {
    return splToken(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(ParsedSplTokenProgramAccountData value)? splToken,
    TResult Function(ParsedStakeProgramAccountData value)? stake,
    TResult Function(UnsupportedProgramAccountData value)? unsupported,
  }) {
    return splToken?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(ParsedSplTokenProgramAccountData value)? splToken,
    TResult Function(ParsedStakeProgramAccountData value)? stake,
    TResult Function(UnsupportedProgramAccountData value)? unsupported,
    required TResult orElse(),
  }) {
    if (splToken != null) {
      return splToken(this);
    }
    return orElse();
  }

  @override
  Map<String, dynamic> toJson() {
    return _$$ParsedSplTokenProgramAccountDataToJson(this);
  }
}

abstract class ParsedSplTokenProgramAccountData implements ParsedAccountData {
  const factory ParsedSplTokenProgramAccountData(
      SplTokenProgramAccountData parsed) = _$ParsedSplTokenProgramAccountData;

  factory ParsedSplTokenProgramAccountData.fromJson(Map<String, dynamic> json) =
      _$ParsedSplTokenProgramAccountData.fromJson;

  SplTokenProgramAccountData get parsed;
  @JsonKey(ignore: true)
  $ParsedSplTokenProgramAccountDataCopyWith<ParsedSplTokenProgramAccountData>
      get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $ParsedStakeProgramAccountDataCopyWith<$Res> {
  factory $ParsedStakeProgramAccountDataCopyWith(
          ParsedStakeProgramAccountData value,
          $Res Function(ParsedStakeProgramAccountData) then) =
      _$ParsedStakeProgramAccountDataCopyWithImpl<$Res>;
  $Res call({StakeProgramAccountData parsed});

  $StakeProgramAccountDataCopyWith<$Res> get parsed;
}

/// @nodoc
class _$ParsedStakeProgramAccountDataCopyWithImpl<$Res>
    extends _$ParsedAccountDataCopyWithImpl<$Res>
    implements $ParsedStakeProgramAccountDataCopyWith<$Res> {
  _$ParsedStakeProgramAccountDataCopyWithImpl(
      ParsedStakeProgramAccountData _value,
      $Res Function(ParsedStakeProgramAccountData) _then)
      : super(_value, (v) => _then(v as ParsedStakeProgramAccountData));

  @override
  ParsedStakeProgramAccountData get _value =>
      super._value as ParsedStakeProgramAccountData;

  @override
  $Res call({
    Object? parsed = freezed,
  }) {
    return _then(ParsedStakeProgramAccountData(
      parsed == freezed
          ? _value.parsed
          : parsed // ignore: cast_nullable_to_non_nullable
              as StakeProgramAccountData,
    ));
  }

  @override
  $StakeProgramAccountDataCopyWith<$Res> get parsed {
    return $StakeProgramAccountDataCopyWith<$Res>(_value.parsed, (value) {
      return _then(_value.copyWith(parsed: value));
    });
  }
}

/// @nodoc
@JsonSerializable()
class _$ParsedStakeProgramAccountData implements ParsedStakeProgramAccountData {
  const _$ParsedStakeProgramAccountData(this.parsed, {String? $type})
      : $type = $type ?? 'stake';

  factory _$ParsedStakeProgramAccountData.fromJson(Map<String, dynamic> json) =>
      _$$ParsedStakeProgramAccountDataFromJson(json);

  @override
  final StakeProgramAccountData parsed;

  @JsonKey(name: 'program')
  final String $type;

  @override
  String toString() {
    return 'ParsedAccountData.stake(parsed: $parsed)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is ParsedStakeProgramAccountData &&
            const DeepCollectionEquality().equals(other.parsed, parsed));
  }

  @override
  int get hashCode =>
      Object.hash(runtimeType, const DeepCollectionEquality().hash(parsed));

  @JsonKey(ignore: true)
  @override
  $ParsedStakeProgramAccountDataCopyWith<ParsedStakeProgramAccountData>
      get copyWith => _$ParsedStakeProgramAccountDataCopyWithImpl<
          ParsedStakeProgramAccountData>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(SplTokenProgramAccountData parsed) splToken,
    required TResult Function(StakeProgramAccountData parsed) stake,
    required TResult Function(Map<String, dynamic> parsed) unsupported,
  }) {
    return stake(parsed);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function(SplTokenProgramAccountData parsed)? splToken,
    TResult Function(StakeProgramAccountData parsed)? stake,
    TResult Function(Map<String, dynamic> parsed)? unsupported,
  }) {
    return stake?.call(parsed);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(SplTokenProgramAccountData parsed)? splToken,
    TResult Function(StakeProgramAccountData parsed)? stake,
    TResult Function(Map<String, dynamic> parsed)? unsupported,
    required TResult orElse(),
  }) {
    if (stake != null) {
      return stake(parsed);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(ParsedSplTokenProgramAccountData value) splToken,
    required TResult Function(ParsedStakeProgramAccountData value) stake,
    required TResult Function(UnsupportedProgramAccountData value) unsupported,
  }) {
    return stake(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(ParsedSplTokenProgramAccountData value)? splToken,
    TResult Function(ParsedStakeProgramAccountData value)? stake,
    TResult Function(UnsupportedProgramAccountData value)? unsupported,
  }) {
    return stake?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(ParsedSplTokenProgramAccountData value)? splToken,
    TResult Function(ParsedStakeProgramAccountData value)? stake,
    TResult Function(UnsupportedProgramAccountData value)? unsupported,
    required TResult orElse(),
  }) {
    if (stake != null) {
      return stake(this);
    }
    return orElse();
  }

  @override
  Map<String, dynamic> toJson() {
    return _$$ParsedStakeProgramAccountDataToJson(this);
  }
}

abstract class ParsedStakeProgramAccountData implements ParsedAccountData {
  const factory ParsedStakeProgramAccountData(StakeProgramAccountData parsed) =
      _$ParsedStakeProgramAccountData;

  factory ParsedStakeProgramAccountData.fromJson(Map<String, dynamic> json) =
      _$ParsedStakeProgramAccountData.fromJson;

  StakeProgramAccountData get parsed;
  @JsonKey(ignore: true)
  $ParsedStakeProgramAccountDataCopyWith<ParsedStakeProgramAccountData>
      get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $UnsupportedProgramAccountDataCopyWith<$Res> {
  factory $UnsupportedProgramAccountDataCopyWith(
          UnsupportedProgramAccountData value,
          $Res Function(UnsupportedProgramAccountData) then) =
      _$UnsupportedProgramAccountDataCopyWithImpl<$Res>;
  $Res call({Map<String, dynamic> parsed});
}

/// @nodoc
class _$UnsupportedProgramAccountDataCopyWithImpl<$Res>
    extends _$ParsedAccountDataCopyWithImpl<$Res>
    implements $UnsupportedProgramAccountDataCopyWith<$Res> {
  _$UnsupportedProgramAccountDataCopyWithImpl(
      UnsupportedProgramAccountData _value,
      $Res Function(UnsupportedProgramAccountData) _then)
      : super(_value, (v) => _then(v as UnsupportedProgramAccountData));

  @override
  UnsupportedProgramAccountData get _value =>
      super._value as UnsupportedProgramAccountData;

  @override
  $Res call({
    Object? parsed = freezed,
  }) {
    return _then(UnsupportedProgramAccountData(
      parsed == freezed
          ? _value.parsed
          : parsed // ignore: cast_nullable_to_non_nullable
              as Map<String, dynamic>,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$UnsupportedProgramAccountData implements UnsupportedProgramAccountData {
  const _$UnsupportedProgramAccountData(this.parsed, {String? $type})
      : $type = $type ?? 'unsupported';

  factory _$UnsupportedProgramAccountData.fromJson(Map<String, dynamic> json) =>
      _$$UnsupportedProgramAccountDataFromJson(json);

  @override
  final Map<String, dynamic> parsed;

  @JsonKey(name: 'program')
  final String $type;

  @override
  String toString() {
    return 'ParsedAccountData.unsupported(parsed: $parsed)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is UnsupportedProgramAccountData &&
            const DeepCollectionEquality().equals(other.parsed, parsed));
  }

  @override
  int get hashCode =>
      Object.hash(runtimeType, const DeepCollectionEquality().hash(parsed));

  @JsonKey(ignore: true)
  @override
  $UnsupportedProgramAccountDataCopyWith<UnsupportedProgramAccountData>
      get copyWith => _$UnsupportedProgramAccountDataCopyWithImpl<
          UnsupportedProgramAccountData>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(SplTokenProgramAccountData parsed) splToken,
    required TResult Function(StakeProgramAccountData parsed) stake,
    required TResult Function(Map<String, dynamic> parsed) unsupported,
  }) {
    return unsupported(parsed);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function(SplTokenProgramAccountData parsed)? splToken,
    TResult Function(StakeProgramAccountData parsed)? stake,
    TResult Function(Map<String, dynamic> parsed)? unsupported,
  }) {
    return unsupported?.call(parsed);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(SplTokenProgramAccountData parsed)? splToken,
    TResult Function(StakeProgramAccountData parsed)? stake,
    TResult Function(Map<String, dynamic> parsed)? unsupported,
    required TResult orElse(),
  }) {
    if (unsupported != null) {
      return unsupported(parsed);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(ParsedSplTokenProgramAccountData value) splToken,
    required TResult Function(ParsedStakeProgramAccountData value) stake,
    required TResult Function(UnsupportedProgramAccountData value) unsupported,
  }) {
    return unsupported(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(ParsedSplTokenProgramAccountData value)? splToken,
    TResult Function(ParsedStakeProgramAccountData value)? stake,
    TResult Function(UnsupportedProgramAccountData value)? unsupported,
  }) {
    return unsupported?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(ParsedSplTokenProgramAccountData value)? splToken,
    TResult Function(ParsedStakeProgramAccountData value)? stake,
    TResult Function(UnsupportedProgramAccountData value)? unsupported,
    required TResult orElse(),
  }) {
    if (unsupported != null) {
      return unsupported(this);
    }
    return orElse();
  }

  @override
  Map<String, dynamic> toJson() {
    return _$$UnsupportedProgramAccountDataToJson(this);
  }
}

abstract class UnsupportedProgramAccountData implements ParsedAccountData {
  const factory UnsupportedProgramAccountData(Map<String, dynamic> parsed) =
      _$UnsupportedProgramAccountData;

  factory UnsupportedProgramAccountData.fromJson(Map<String, dynamic> json) =
      _$UnsupportedProgramAccountData.fromJson;

  Map<String, dynamic> get parsed;
  @JsonKey(ignore: true)
  $UnsupportedProgramAccountDataCopyWith<UnsupportedProgramAccountData>
      get copyWith => throw _privateConstructorUsedError;
}
