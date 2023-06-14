// Generated with smithy-dart 0.3.1. DO NOT MODIFY.
// ignore_for_file: avoid_unused_constructor_parameters,deprecated_member_use_from_same_package,non_constant_identifier_names

library smoke_test.api_gateway.operation.tag_resource_operation; // ignore_for_file: no_leading_underscores_for_library_prefixes

import 'dart:async' as _i14;

import 'package:aws_common/aws_common.dart' as _i6;
import 'package:aws_signature_v4/aws_signature_v4.dart' as _i3;
import 'package:smithy/smithy.dart' as _i1;
import 'package:smithy_aws/smithy_aws.dart' as _i4;
import 'package:smoke_test/src/sdk/src/api_gateway/common/endpoint_resolver.dart'
    as _i7;
import 'package:smoke_test/src/sdk/src/api_gateway/common/serializers.dart'
    as _i5;
import 'package:smoke_test/src/sdk/src/api_gateway/model/bad_request_exception.dart'
    as _i8;
import 'package:smoke_test/src/sdk/src/api_gateway/model/conflict_exception.dart'
    as _i9;
import 'package:smoke_test/src/sdk/src/api_gateway/model/limit_exceeded_exception.dart'
    as _i10;
import 'package:smoke_test/src/sdk/src/api_gateway/model/not_found_exception.dart'
    as _i11;
import 'package:smoke_test/src/sdk/src/api_gateway/model/tag_resource_request.dart'
    as _i2;
import 'package:smoke_test/src/sdk/src/api_gateway/model/too_many_requests_exception.dart'
    as _i12;
import 'package:smoke_test/src/sdk/src/api_gateway/model/unauthorized_exception.dart'
    as _i13;

/// Adds or updates a tag on a given resource.
class TagResourceOperation extends _i1.HttpOperation<
    _i2.TagResourceRequestPayload, _i2.TagResourceRequest, _i1.Unit, _i1.Unit> {
  /// Adds or updates a tag on a given resource.
  TagResourceOperation({
    required String region,
    Uri? baseUri,
    _i3.AWSCredentialsProvider credentialsProvider =
        const _i3.AWSCredentialsProvider.environment(),
    List<_i1.HttpRequestInterceptor> requestInterceptors = const [],
    List<_i1.HttpResponseInterceptor> responseInterceptors = const [],
  })  : _region = region,
        _baseUri = baseUri,
        _credentialsProvider = credentialsProvider,
        _requestInterceptors = requestInterceptors,
        _responseInterceptors = responseInterceptors;

  @override
  late final List<
      _i1.HttpProtocol<_i2.TagResourceRequestPayload, _i2.TagResourceRequest,
          _i1.Unit, _i1.Unit>> protocols = [
    _i4.RestJson1Protocol(
      serializers: _i5.serializers,
      builderFactories: _i5.builderFactories,
      requestInterceptors: <_i1.HttpRequestInterceptor>[
            const _i1.WithHost(),
            const _i1.WithContentLength(),
            _i4.WithSigV4(
              region: _region,
              service: _i6.AWSService.apiGateway,
              credentialsProvider: _credentialsProvider,
            ),
            const _i1.WithUserAgent('aws-sdk-dart/0.3.1'),
            const _i4.WithSdkInvocationId(),
            const _i4.WithSdkRequest(),
            const _i1.WithHeader(
              'Accept',
              'application/json',
            ),
          ] +
          _requestInterceptors,
      responseInterceptors:
          <_i1.HttpResponseInterceptor>[] + _responseInterceptors,
    )
  ];

  late final _i4.AWSEndpoint _awsEndpoint = _i7.endpointResolver.resolve(
    _i7.sdkId,
    _region,
  );

  final String _region;

  final Uri? _baseUri;

  final _i3.AWSCredentialsProvider _credentialsProvider;

  final List<_i1.HttpRequestInterceptor> _requestInterceptors;

  final List<_i1.HttpResponseInterceptor> _responseInterceptors;

  @override
  _i1.HttpRequest buildRequest(_i2.TagResourceRequest input) =>
      _i1.HttpRequest((b) {
        b.method = 'PUT';
        b.path = r'/tags/{resourceArn}';
      });
  @override
  int successCode([_i1.Unit? output]) => 204;
  @override
  _i1.Unit buildOutput(
    _i1.Unit payload,
    _i6.AWSBaseHttpResponse response,
  ) =>
      payload;
  @override
  List<_i1.SmithyError> get errorTypes => const [
        _i1.SmithyError(
          _i1.ShapeId(
            namespace: 'com.amazonaws.apigateway',
            shape: 'BadRequestException',
          ),
          _i1.ErrorKind.client,
          _i8.BadRequestException,
          statusCode: 400,
          builder: _i8.BadRequestException.fromResponse,
        ),
        _i1.SmithyError(
          _i1.ShapeId(
            namespace: 'com.amazonaws.apigateway',
            shape: 'ConflictException',
          ),
          _i1.ErrorKind.client,
          _i9.ConflictException,
          statusCode: 409,
          builder: _i9.ConflictException.fromResponse,
        ),
        _i1.SmithyError(
          _i1.ShapeId(
            namespace: 'com.amazonaws.apigateway',
            shape: 'LimitExceededException',
          ),
          _i1.ErrorKind.client,
          _i10.LimitExceededException,
          statusCode: 429,
          builder: _i10.LimitExceededException.fromResponse,
        ),
        _i1.SmithyError(
          _i1.ShapeId(
            namespace: 'com.amazonaws.apigateway',
            shape: 'NotFoundException',
          ),
          _i1.ErrorKind.client,
          _i11.NotFoundException,
          statusCode: 404,
          builder: _i11.NotFoundException.fromResponse,
        ),
        _i1.SmithyError(
          _i1.ShapeId(
            namespace: 'com.amazonaws.apigateway',
            shape: 'TooManyRequestsException',
          ),
          _i1.ErrorKind.client,
          _i12.TooManyRequestsException,
          statusCode: 429,
          builder: _i12.TooManyRequestsException.fromResponse,
        ),
        _i1.SmithyError(
          _i1.ShapeId(
            namespace: 'com.amazonaws.apigateway',
            shape: 'UnauthorizedException',
          ),
          _i1.ErrorKind.client,
          _i13.UnauthorizedException,
          statusCode: 401,
          builder: _i13.UnauthorizedException.fromResponse,
        ),
      ];
  @override
  String get runtimeTypeName => 'TagResource';
  @override
  _i4.AWSRetryer get retryer => _i4.AWSRetryer();
  @override
  Uri get baseUri => _baseUri ?? endpoint.uri;
  @override
  _i1.Endpoint get endpoint => _awsEndpoint.endpoint;
  @override
  _i1.SmithyOperation<_i1.Unit> run(
    _i2.TagResourceRequest input, {
    _i6.AWSHttpClient? client,
    _i1.ShapeId? useProtocol,
  }) {
    return _i14.runZoned(
      () => super.run(
        input,
        client: client,
        useProtocol: useProtocol,
      ),
      zoneValues: {
        ...?_awsEndpoint.credentialScope?.zoneValues,
        ...{_i6.AWSHeaders.sdkInvocationId: _i6.uuid(secure: true)},
      },
    );
  }
}
