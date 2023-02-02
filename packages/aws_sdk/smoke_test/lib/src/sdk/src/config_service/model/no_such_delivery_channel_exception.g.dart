// GENERATED CODE - DO NOT MODIFY BY HAND

part of smoke_test.config_service.model.no_such_delivery_channel_exception;

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

class _$NoSuchDeliveryChannelException extends NoSuchDeliveryChannelException {
  @override
  final String? message;
  @override
  final int? statusCode;
  @override
  final Map<String, String>? headers;

  factory _$NoSuchDeliveryChannelException(
          [void Function(NoSuchDeliveryChannelExceptionBuilder)? updates]) =>
      (new NoSuchDeliveryChannelExceptionBuilder()..update(updates))._build();

  _$NoSuchDeliveryChannelException._(
      {this.message, this.statusCode, this.headers})
      : super._();

  @override
  NoSuchDeliveryChannelException rebuild(
          void Function(NoSuchDeliveryChannelExceptionBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  NoSuchDeliveryChannelExceptionBuilder toBuilder() =>
      new NoSuchDeliveryChannelExceptionBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is NoSuchDeliveryChannelException && message == other.message;
  }

  @override
  int get hashCode {
    var _$hash = 0;
    _$hash = $jc(_$hash, message.hashCode);
    _$hash = $jf(_$hash);
    return _$hash;
  }
}

class NoSuchDeliveryChannelExceptionBuilder
    implements
        Builder<NoSuchDeliveryChannelException,
            NoSuchDeliveryChannelExceptionBuilder> {
  _$NoSuchDeliveryChannelException? _$v;

  String? _message;
  String? get message => _$this._message;
  set message(String? message) => _$this._message = message;

  int? _statusCode;
  int? get statusCode => _$this._statusCode;
  set statusCode(int? statusCode) => _$this._statusCode = statusCode;

  Map<String, String>? _headers;
  Map<String, String>? get headers => _$this._headers;
  set headers(Map<String, String>? headers) => _$this._headers = headers;

  NoSuchDeliveryChannelExceptionBuilder() {
    NoSuchDeliveryChannelException._init(this);
  }

  NoSuchDeliveryChannelExceptionBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _message = $v.message;
      _statusCode = $v.statusCode;
      _headers = $v.headers;
      _$v = null;
    }
    return this;
  }

  @override
  void replace(NoSuchDeliveryChannelException other) {
    ArgumentError.checkNotNull(other, 'other');
    _$v = other as _$NoSuchDeliveryChannelException;
  }

  @override
  void update(void Function(NoSuchDeliveryChannelExceptionBuilder)? updates) {
    if (updates != null) updates(this);
  }

  @override
  NoSuchDeliveryChannelException build() => _build();

  _$NoSuchDeliveryChannelException _build() {
    final _$result = _$v ??
        new _$NoSuchDeliveryChannelException._(
            message: message, statusCode: statusCode, headers: headers);
    replace(_$result);
    return _$result;
  }
}

// ignore_for_file: deprecated_member_use_from_same_package,type=lint