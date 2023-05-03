// Generated with smithy-dart 0.3.1. DO NOT MODIFY.

library smoke_test.iam.model.get_role_request; // ignore_for_file: no_leading_underscores_for_library_prefixes

import 'package:aws_common/aws_common.dart' as _i2;
import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';
import 'package:smithy/smithy.dart' as _i1;

part 'get_role_request.g.dart';

abstract class GetRoleRequest
    with _i1.HttpInput<GetRoleRequest>, _i2.AWSEquatable<GetRoleRequest>
    implements Built<GetRoleRequest, GetRoleRequestBuilder> {
  factory GetRoleRequest({required String roleName}) {
    return _$GetRoleRequest._(roleName: roleName);
  }

  factory GetRoleRequest.build([void Function(GetRoleRequestBuilder) updates]) =
      _$GetRoleRequest;

  const GetRoleRequest._();

  factory GetRoleRequest.fromRequest(
    GetRoleRequest payload,
    _i2.AWSBaseHttpRequest request, {
    Map<String, String> labels = const {},
  }) =>
      payload;

  static const List<_i1.SmithySerializer> serializers = [
    GetRoleRequestAwsQuerySerializer()
  ];

  @BuiltValueHook(initializeBuilder: true)
  static void _init(GetRoleRequestBuilder b) {}

  /// The name of the IAM role to get information about.
  ///
  /// This parameter allows (through its [regex pattern](http://wikipedia.org/wiki/regex)) a string of characters consisting of upper and lowercase alphanumeric characters with no spaces. You can also include any of the following characters: _+=,.@-
  String get roleName;
  @override
  GetRoleRequest getPayload() => this;
  @override
  List<Object?> get props => [roleName];
  @override
  String toString() {
    final helper = newBuiltValueToStringHelper('GetRoleRequest');
    helper.add(
      'roleName',
      roleName,
    );
    return helper.toString();
  }
}

class GetRoleRequestAwsQuerySerializer
    extends _i1.StructuredSmithySerializer<GetRoleRequest> {
  const GetRoleRequestAwsQuerySerializer() : super('GetRoleRequest');

  @override
  Iterable<Type> get types => const [
        GetRoleRequest,
        _$GetRoleRequest,
      ];
  @override
  Iterable<_i1.ShapeId> get supportedProtocols => const [
        _i1.ShapeId(
          namespace: 'aws.protocols',
          shape: 'awsQuery',
        )
      ];
  @override
  GetRoleRequest deserialize(
    Serializers serializers,
    Iterable<Object?> serialized, {
    FullType specifiedType = FullType.unspecified,
  }) {
    final result = GetRoleRequestBuilder();
    final iterator = serialized.iterator;
    while (iterator.moveNext()) {
      final key = iterator.current;
      iterator.moveNext();
      final value = iterator.current;
      switch (key as String) {
        case 'RoleName':
          result.roleName = (serializers.deserialize(
            value!,
            specifiedType: const FullType(String),
          ) as String);
          break;
      }
    }

    return result.build();
  }

  @override
  Iterable<Object?> serialize(
    Serializers serializers,
    Object? object, {
    FullType specifiedType = FullType.unspecified,
  }) {
    final payload = (object as GetRoleRequest);
    final result = <Object?>[
      const _i1.XmlElementName(
        'GetRoleRequestResponse',
        _i1.XmlNamespace('https://iam.amazonaws.com/doc/2010-05-08/'),
      )
    ];
    result
      ..add(const _i1.XmlElementName('RoleName'))
      ..add(serializers.serialize(
        payload.roleName,
        specifiedType: const FullType(String),
      ));
    return result;
  }
}