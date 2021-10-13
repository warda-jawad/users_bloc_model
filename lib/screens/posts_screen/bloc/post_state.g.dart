// GENERATED CODE - DO NOT MODIFY BY HAND

part of post_state;

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

class _$PostState extends PostState {
  @override
  final String error;
  @override
  final bool isloading;
  @override
  final PostModel? postdata;

  factory _$PostState([void Function(PostStateBuilder)? updates]) =>
      (new PostStateBuilder()..update(updates)).build();

  _$PostState._({required this.error, required this.isloading, this.postdata})
      : super._() {
    BuiltValueNullFieldError.checkNotNull(error, 'PostState', 'error');
    BuiltValueNullFieldError.checkNotNull(isloading, 'PostState', 'isloading');
  }

  @override
  PostState rebuild(void Function(PostStateBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  PostStateBuilder toBuilder() => new PostStateBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is PostState &&
        error == other.error &&
        isloading == other.isloading &&
        postdata == other.postdata;
  }

  @override
  int get hashCode {
    return $jf($jc(
        $jc($jc(0, error.hashCode), isloading.hashCode), postdata.hashCode));
  }

  @override
  String toString() {
    return (newBuiltValueToStringHelper('PostState')
          ..add('error', error)
          ..add('isloading', isloading)
          ..add('postdata', postdata))
        .toString();
  }
}

class PostStateBuilder implements Builder<PostState, PostStateBuilder> {
  _$PostState? _$v;

  String? _error;
  String? get error => _$this._error;
  set error(String? error) => _$this._error = error;

  bool? _isloading;
  bool? get isloading => _$this._isloading;
  set isloading(bool? isloading) => _$this._isloading = isloading;

  PostModel? _postdata;
  PostModel? get postdata => _$this._postdata;
  set postdata(PostModel? postdata) => _$this._postdata = postdata;

  PostStateBuilder();

  PostStateBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _error = $v.error;
      _isloading = $v.isloading;
      _postdata = $v.postdata;
      _$v = null;
    }
    return this;
  }

  @override
  void replace(PostState other) {
    ArgumentError.checkNotNull(other, 'other');
    _$v = other as _$PostState;
  }

  @override
  void update(void Function(PostStateBuilder)? updates) {
    if (updates != null) updates(this);
  }

  @override
  _$PostState build() {
    final _$result = _$v ??
        new _$PostState._(
            error: BuiltValueNullFieldError.checkNotNull(
                error, 'PostState', 'error'),
            isloading: BuiltValueNullFieldError.checkNotNull(
                isloading, 'PostState', 'isloading'),
            postdata: postdata);
    replace(_$result);
    return _$result;
  }
}

// ignore_for_file: always_put_control_body_on_new_line,always_specify_types,annotate_overrides,avoid_annotating_with_dynamic,avoid_as,avoid_catches_without_on_clauses,avoid_returning_this,deprecated_member_use_from_same_package,lines_longer_than_80_chars,omit_local_variable_types,prefer_expression_function_bodies,sort_constructors_first,test_types_in_equals,unnecessary_const,unnecessary_new
