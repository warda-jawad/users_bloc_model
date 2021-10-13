// GENERATED CODE - DO NOT MODIFY BY HAND

part of user_state;

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

class _$UsersState extends UsersState {
  @override
  final String error;
  @override
  final bool loading;
  @override
  final UserModel? userData;

  factory _$UsersState([void Function(UsersStateBuilder)? updates]) =>
      (new UsersStateBuilder()..update(updates)).build();

  _$UsersState._({required this.error, required this.loading, this.userData})
      : super._() {
    BuiltValueNullFieldError.checkNotNull(error, 'UsersState', 'error');
    BuiltValueNullFieldError.checkNotNull(loading, 'UsersState', 'loading');
  }

  @override
  UsersState rebuild(void Function(UsersStateBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  UsersStateBuilder toBuilder() => new UsersStateBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is UsersState &&
        error == other.error &&
        loading == other.loading &&
        userData == other.userData;
  }

  @override
  int get hashCode {
    return $jf(
        $jc($jc($jc(0, error.hashCode), loading.hashCode), userData.hashCode));
  }

  @override
  String toString() {
    return (newBuiltValueToStringHelper('UsersState')
          ..add('error', error)
          ..add('loading', loading)
          ..add('userData', userData))
        .toString();
  }
}

class UsersStateBuilder implements Builder<UsersState, UsersStateBuilder> {
  _$UsersState? _$v;

  String? _error;
  String? get error => _$this._error;
  set error(String? error) => _$this._error = error;

  bool? _loading;
  bool? get loading => _$this._loading;
  set loading(bool? loading) => _$this._loading = loading;

  UserModel? _userData;
  UserModel? get userData => _$this._userData;
  set userData(UserModel? userData) => _$this._userData = userData;

  UsersStateBuilder();

  UsersStateBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _error = $v.error;
      _loading = $v.loading;
      _userData = $v.userData;
      _$v = null;
    }
    return this;
  }

  @override
  void replace(UsersState other) {
    ArgumentError.checkNotNull(other, 'other');
    _$v = other as _$UsersState;
  }

  @override
  void update(void Function(UsersStateBuilder)? updates) {
    if (updates != null) updates(this);
  }

  @override
  _$UsersState build() {
    final _$result = _$v ??
        new _$UsersState._(
            error: BuiltValueNullFieldError.checkNotNull(
                error, 'UsersState', 'error'),
            loading: BuiltValueNullFieldError.checkNotNull(
                loading, 'UsersState', 'loading'),
            userData: userData);
    replace(_$result);
    return _$result;
  }
}

// ignore_for_file: always_put_control_body_on_new_line,always_specify_types,annotate_overrides,avoid_annotating_with_dynamic,avoid_as,avoid_catches_without_on_clauses,avoid_returning_this,deprecated_member_use_from_same_package,lines_longer_than_80_chars,omit_local_variable_types,prefer_expression_function_bodies,sort_constructors_first,test_types_in_equals,unnecessary_const,unnecessary_new
