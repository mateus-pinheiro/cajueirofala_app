// GENERATED CODE - DO NOT MODIFY BY HAND
// coverage:ignore-file
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'auth_state.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

// dart format off
T _$identity<T>(T value) => value;

/// @nodoc
mixin _$LoginState {
  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is LoginState);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  String toString() {
    return 'LoginState()';
  }
}

/// @nodoc
class $LoginStateCopyWith<$Res> {
  $LoginStateCopyWith(LoginState _, $Res Function(LoginState) __);
}

/// Adds pattern-matching-related methods to [LoginState].
extension LoginStatePatterns on LoginState {
  /// A variant of `map` that fallback to returning `orElse`.
  ///
  /// It is equivalent to doing:
  /// ```dart
  /// switch (sealedClass) {
  ///   case final Subclass value:
  ///     return ...;
  ///   case _:
  ///     return orElse();
  /// }
  /// ```

  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(LoginStateInitial value)? initial,
    TResult Function(LoginStateLoading value)? loading,
    TResult Function(LoginStateSuccess value)? success,
    TResult Function(LoginStateReady value)? ready,
    TResult Function(LoginStateError value)? error,
    TResult Function(LoginStateSendSMS value)? sendSMS,
    TResult Function(LoginStateSendSMSCode value)? sendSMSCode,
    required TResult orElse(),
  }) {
    final _that = this;
    switch (_that) {
      case LoginStateInitial() when initial != null:
        return initial(_that);
      case LoginStateLoading() when loading != null:
        return loading(_that);
      case LoginStateSuccess() when success != null:
        return success(_that);
      case LoginStateReady() when ready != null:
        return ready(_that);
      case LoginStateError() when error != null:
        return error(_that);
      case LoginStateSendSMS() when sendSMS != null:
        return sendSMS(_that);
      case LoginStateSendSMSCode() when sendSMSCode != null:
        return sendSMSCode(_that);
      case _:
        return orElse();
    }
  }

  /// A `switch`-like method, using callbacks.
  ///
  /// Callbacks receives the raw object, upcasted.
  /// It is equivalent to doing:
  /// ```dart
  /// switch (sealedClass) {
  ///   case final Subclass value:
  ///     return ...;
  ///   case final Subclass2 value:
  ///     return ...;
  /// }
  /// ```

  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(LoginStateInitial value) initial,
    required TResult Function(LoginStateLoading value) loading,
    required TResult Function(LoginStateSuccess value) success,
    required TResult Function(LoginStateReady value) ready,
    required TResult Function(LoginStateError value) error,
    required TResult Function(LoginStateSendSMS value) sendSMS,
    required TResult Function(LoginStateSendSMSCode value) sendSMSCode,
  }) {
    final _that = this;
    switch (_that) {
      case LoginStateInitial():
        return initial(_that);
      case LoginStateLoading():
        return loading(_that);
      case LoginStateSuccess():
        return success(_that);
      case LoginStateReady():
        return ready(_that);
      case LoginStateError():
        return error(_that);
      case LoginStateSendSMS():
        return sendSMS(_that);
      case LoginStateSendSMSCode():
        return sendSMSCode(_that);
    }
  }

  /// A variant of `map` that fallback to returning `null`.
  ///
  /// It is equivalent to doing:
  /// ```dart
  /// switch (sealedClass) {
  ///   case final Subclass value:
  ///     return ...;
  ///   case _:
  ///     return null;
  /// }
  /// ```

  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(LoginStateInitial value)? initial,
    TResult? Function(LoginStateLoading value)? loading,
    TResult? Function(LoginStateSuccess value)? success,
    TResult? Function(LoginStateReady value)? ready,
    TResult? Function(LoginStateError value)? error,
    TResult? Function(LoginStateSendSMS value)? sendSMS,
    TResult? Function(LoginStateSendSMSCode value)? sendSMSCode,
  }) {
    final _that = this;
    switch (_that) {
      case LoginStateInitial() when initial != null:
        return initial(_that);
      case LoginStateLoading() when loading != null:
        return loading(_that);
      case LoginStateSuccess() when success != null:
        return success(_that);
      case LoginStateReady() when ready != null:
        return ready(_that);
      case LoginStateError() when error != null:
        return error(_that);
      case LoginStateSendSMS() when sendSMS != null:
        return sendSMS(_that);
      case LoginStateSendSMSCode() when sendSMSCode != null:
        return sendSMSCode(_that);
      case _:
        return null;
    }
  }

  /// A variant of `when` that fallback to an `orElse` callback.
  ///
  /// It is equivalent to doing:
  /// ```dart
  /// switch (sealedClass) {
  ///   case Subclass(:final field):
  ///     return ...;
  ///   case _:
  ///     return orElse();
  /// }
  /// ```

  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? loading,
    TResult Function()? success,
    TResult Function(String phoneNumber)? ready,
    TResult Function(String message)? error,
    TResult Function()? sendSMS,
    TResult Function()? sendSMSCode,
    required TResult orElse(),
  }) {
    final _that = this;
    switch (_that) {
      case LoginStateInitial() when initial != null:
        return initial();
      case LoginStateLoading() when loading != null:
        return loading();
      case LoginStateSuccess() when success != null:
        return success();
      case LoginStateReady() when ready != null:
        return ready(_that.phoneNumber);
      case LoginStateError() when error != null:
        return error(_that.message);
      case LoginStateSendSMS() when sendSMS != null:
        return sendSMS();
      case LoginStateSendSMSCode() when sendSMSCode != null:
        return sendSMSCode();
      case _:
        return orElse();
    }
  }

  /// A `switch`-like method, using callbacks.
  ///
  /// As opposed to `map`, this offers destructuring.
  /// It is equivalent to doing:
  /// ```dart
  /// switch (sealedClass) {
  ///   case Subclass(:final field):
  ///     return ...;
  ///   case Subclass2(:final field2):
  ///     return ...;
  /// }
  /// ```

  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function() loading,
    required TResult Function() success,
    required TResult Function(String phoneNumber) ready,
    required TResult Function(String message) error,
    required TResult Function() sendSMS,
    required TResult Function() sendSMSCode,
  }) {
    final _that = this;
    switch (_that) {
      case LoginStateInitial():
        return initial();
      case LoginStateLoading():
        return loading();
      case LoginStateSuccess():
        return success();
      case LoginStateReady():
        return ready(_that.phoneNumber);
      case LoginStateError():
        return error(_that.message);
      case LoginStateSendSMS():
        return sendSMS();
      case LoginStateSendSMSCode():
        return sendSMSCode();
    }
  }

  /// A variant of `when` that fallback to returning `null`
  ///
  /// It is equivalent to doing:
  /// ```dart
  /// switch (sealedClass) {
  ///   case Subclass(:final field):
  ///     return ...;
  ///   case _:
  ///     return null;
  /// }
  /// ```

  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? initial,
    TResult? Function()? loading,
    TResult? Function()? success,
    TResult? Function(String phoneNumber)? ready,
    TResult? Function(String message)? error,
    TResult? Function()? sendSMS,
    TResult? Function()? sendSMSCode,
  }) {
    final _that = this;
    switch (_that) {
      case LoginStateInitial() when initial != null:
        return initial();
      case LoginStateLoading() when loading != null:
        return loading();
      case LoginStateSuccess() when success != null:
        return success();
      case LoginStateReady() when ready != null:
        return ready(_that.phoneNumber);
      case LoginStateError() when error != null:
        return error(_that.message);
      case LoginStateSendSMS() when sendSMS != null:
        return sendSMS();
      case LoginStateSendSMSCode() when sendSMSCode != null:
        return sendSMSCode();
      case _:
        return null;
    }
  }
}

/// @nodoc

class LoginStateInitial implements LoginState {
  const LoginStateInitial();

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is LoginStateInitial);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  String toString() {
    return 'LoginState.initial()';
  }
}

/// @nodoc

class LoginStateLoading implements LoginState {
  const LoginStateLoading();

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is LoginStateLoading);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  String toString() {
    return 'LoginState.loading()';
  }
}

/// @nodoc

class LoginStateSuccess implements LoginState {
  const LoginStateSuccess();

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is LoginStateSuccess);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  String toString() {
    return 'LoginState.success()';
  }
}

/// @nodoc

class LoginStateReady implements LoginState {
  const LoginStateReady({required this.phoneNumber});

  final String phoneNumber;

  /// Create a copy of LoginState
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @pragma('vm:prefer-inline')
  $LoginStateReadyCopyWith<LoginStateReady> get copyWith =>
      _$LoginStateReadyCopyWithImpl<LoginStateReady>(this, _$identity);

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is LoginStateReady &&
            (identical(other.phoneNumber, phoneNumber) ||
                other.phoneNumber == phoneNumber));
  }

  @override
  int get hashCode => Object.hash(runtimeType, phoneNumber);

  @override
  String toString() {
    return 'LoginState.ready(phoneNumber: $phoneNumber)';
  }
}

/// @nodoc
abstract mixin class $LoginStateReadyCopyWith<$Res>
    implements $LoginStateCopyWith<$Res> {
  factory $LoginStateReadyCopyWith(
          LoginStateReady value, $Res Function(LoginStateReady) _then) =
      _$LoginStateReadyCopyWithImpl;
  @useResult
  $Res call({String phoneNumber});
}

/// @nodoc
class _$LoginStateReadyCopyWithImpl<$Res>
    implements $LoginStateReadyCopyWith<$Res> {
  _$LoginStateReadyCopyWithImpl(this._self, this._then);

  final LoginStateReady _self;
  final $Res Function(LoginStateReady) _then;

  /// Create a copy of LoginState
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  $Res call({
    Object? phoneNumber = null,
  }) {
    return _then(LoginStateReady(
      phoneNumber: null == phoneNumber
          ? _self.phoneNumber
          : phoneNumber // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc

class LoginStateError implements LoginState {
  const LoginStateError(this.message);

  final String message;

  /// Create a copy of LoginState
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @pragma('vm:prefer-inline')
  $LoginStateErrorCopyWith<LoginStateError> get copyWith =>
      _$LoginStateErrorCopyWithImpl<LoginStateError>(this, _$identity);

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is LoginStateError &&
            (identical(other.message, message) || other.message == message));
  }

  @override
  int get hashCode => Object.hash(runtimeType, message);

  @override
  String toString() {
    return 'LoginState.error(message: $message)';
  }
}

/// @nodoc
abstract mixin class $LoginStateErrorCopyWith<$Res>
    implements $LoginStateCopyWith<$Res> {
  factory $LoginStateErrorCopyWith(
          LoginStateError value, $Res Function(LoginStateError) _then) =
      _$LoginStateErrorCopyWithImpl;
  @useResult
  $Res call({String message});
}

/// @nodoc
class _$LoginStateErrorCopyWithImpl<$Res>
    implements $LoginStateErrorCopyWith<$Res> {
  _$LoginStateErrorCopyWithImpl(this._self, this._then);

  final LoginStateError _self;
  final $Res Function(LoginStateError) _then;

  /// Create a copy of LoginState
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  $Res call({
    Object? message = null,
  }) {
    return _then(LoginStateError(
      null == message
          ? _self.message
          : message // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc

class LoginStateSendSMS implements LoginState {
  const LoginStateSendSMS();

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is LoginStateSendSMS);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  String toString() {
    return 'LoginState.sendSMS()';
  }
}

/// @nodoc

class LoginStateSendSMSCode implements LoginState {
  const LoginStateSendSMSCode();

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is LoginStateSendSMSCode);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  String toString() {
    return 'LoginState.sendSMSCode()';
  }
}

// dart format on
