// Generated with smithy-dart 0.1.0. DO NOT MODIFY.

library rest_json1_v2.rest_json_protocol.operation.json_enums_operation; // ignore_for_file: no_leading_underscores_for_library_prefixes

import 'dart:async' as _i7;

import 'package:aws_common/aws_common.dart' as _i6;
import 'package:rest_json1_v2/src/rest_json_protocol/common/endpoint_resolver.dart'
    as _i5;
import 'package:rest_json1_v2/src/rest_json_protocol/common/serializers.dart'
    as _i4;
import 'package:rest_json1_v2/src/rest_json_protocol/model/json_enums_input_output.dart'
    as _i2;
import 'package:smithy/smithy.dart' as _i1;
import 'package:smithy_aws/smithy_aws.dart' as _i3;

/// This example serializes enums as top level properties, in lists, sets, and maps.
class JsonEnumsOperation extends _i1.HttpOperation<
    _i2.JsonEnumsInputOutput,
    _i2.JsonEnumsInputOutput,
    _i2.JsonEnumsInputOutput,
    _i2.JsonEnumsInputOutput> {
  /// This example serializes enums as top level properties, in lists, sets, and maps.
  JsonEnumsOperation({
    required String region,
    Uri? baseUri,
  })  : _region = region,
        _baseUri = baseUri;

  @override
  late final List<
      _i1.HttpProtocol<_i2.JsonEnumsInputOutput, _i2.JsonEnumsInputOutput,
          _i2.JsonEnumsInputOutput, _i2.JsonEnumsInputOutput>> protocols = [
    _i3.RestJson1Protocol(
      serializers: _i4.serializers,
      builderFactories: _i4.builderFactories,
      requestInterceptors: [
        const _i1.WithHost(),
        const _i1.WithContentLength(),
        const _i1.WithUserAgent('aws-sdk-dart/0.1.0'),
        const _i3.WithSdkInvocationId(),
        const _i3.WithSdkRequest(),
      ],
      responseInterceptors: [],
    )
  ];

  late final _i3.AWSEndpoint _awsEndpoint = _i5.endpointResolver.resolve(
    _i5.sdkId,
    _region,
  );

  final String _region;

  final Uri? _baseUri;

  @override
  _i1.HttpRequest buildRequest(_i2.JsonEnumsInputOutput input) =>
      _i1.HttpRequest((b) {
        b.method = 'PUT';
        b.path = r'/JsonEnums';
      });
  @override
  int successCode([_i2.JsonEnumsInputOutput? output]) => 200;
  @override
  _i2.JsonEnumsInputOutput buildOutput(
    _i2.JsonEnumsInputOutput payload,
    _i6.AWSStreamedHttpResponse response,
  ) =>
      _i2.JsonEnumsInputOutput.fromResponse(
        payload,
        response,
      );
  @override
  List<_i1.SmithyError> get errorTypes => const [];
  @override
  _i3.AWSRetryer get retryer => _i3.AWSRetryer();
  @override
  Uri get baseUri => _baseUri ?? endpoint.uri;
  @override
  _i1.Endpoint get endpoint => _awsEndpoint.endpoint;
  @override
  _i7.Future<_i2.JsonEnumsInputOutput> run(
    _i2.JsonEnumsInputOutput input, {
    _i1.HttpClient? client,
    _i1.ShapeId? useProtocol,
  }) {
    return _i7.runZoned(
      () => super.run(
        input,
        client: client,
        useProtocol: useProtocol,
      ),
      zoneValues: {
        ...?_awsEndpoint.credentialScope?.zoneValues,
        ...{_i6.AWSHeaders.sdkInvocationId: _i6.uuid(secure: true)}
      },
    );
  }
}