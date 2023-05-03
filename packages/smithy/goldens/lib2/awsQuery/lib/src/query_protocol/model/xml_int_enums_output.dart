// Generated with smithy-dart 0.3.1. DO NOT MODIFY.

library aws_query_v2.query_protocol.model.xml_int_enums_output; // ignore_for_file: no_leading_underscores_for_library_prefixes

import 'package:aws_common/aws_common.dart' as _i1;
import 'package:aws_query_v2/src/query_protocol/model/integer_enum.dart' as _i2;
import 'package:built_collection/built_collection.dart' as _i3;
import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';
import 'package:smithy/smithy.dart' as _i4;

part 'xml_int_enums_output.g.dart';

abstract class XmlIntEnumsOutput
    with _i1.AWSEquatable<XmlIntEnumsOutput>
    implements Built<XmlIntEnumsOutput, XmlIntEnumsOutputBuilder> {
  factory XmlIntEnumsOutput({
    _i2.IntegerEnum? intEnum1,
    _i2.IntegerEnum? intEnum2,
    _i2.IntegerEnum? intEnum3,
    List<_i2.IntegerEnum>? intEnumList,
    Set<_i2.IntegerEnum>? intEnumSet,
    Map<String, _i2.IntegerEnum>? intEnumMap,
  }) {
    return _$XmlIntEnumsOutput._(
      intEnum1: intEnum1,
      intEnum2: intEnum2,
      intEnum3: intEnum3,
      intEnumList: intEnumList == null ? null : _i3.BuiltList(intEnumList),
      intEnumSet: intEnumSet == null ? null : _i3.BuiltSet(intEnumSet),
      intEnumMap: intEnumMap == null ? null : _i3.BuiltMap(intEnumMap),
    );
  }

  factory XmlIntEnumsOutput.build(
      [void Function(XmlIntEnumsOutputBuilder) updates]) = _$XmlIntEnumsOutput;

  const XmlIntEnumsOutput._();

  /// Constructs a [XmlIntEnumsOutput] from a [payload] and [response].
  factory XmlIntEnumsOutput.fromResponse(
    XmlIntEnumsOutput payload,
    _i1.AWSBaseHttpResponse response,
  ) =>
      payload;

  static const List<_i4.SmithySerializer> serializers = [
    XmlIntEnumsOutputAwsQuerySerializer()
  ];

  @BuiltValueHook(initializeBuilder: true)
  static void _init(XmlIntEnumsOutputBuilder b) {}
  _i2.IntegerEnum? get intEnum1;
  _i2.IntegerEnum? get intEnum2;
  _i2.IntegerEnum? get intEnum3;
  _i3.BuiltList<_i2.IntegerEnum>? get intEnumList;
  _i3.BuiltSet<_i2.IntegerEnum>? get intEnumSet;
  _i3.BuiltMap<String, _i2.IntegerEnum>? get intEnumMap;
  @override
  List<Object?> get props => [
        intEnum1,
        intEnum2,
        intEnum3,
        intEnumList,
        intEnumSet,
        intEnumMap,
      ];
  @override
  String toString() {
    final helper = newBuiltValueToStringHelper('XmlIntEnumsOutput');
    helper.add(
      'intEnum1',
      intEnum1,
    );
    helper.add(
      'intEnum2',
      intEnum2,
    );
    helper.add(
      'intEnum3',
      intEnum3,
    );
    helper.add(
      'intEnumList',
      intEnumList,
    );
    helper.add(
      'intEnumSet',
      intEnumSet,
    );
    helper.add(
      'intEnumMap',
      intEnumMap,
    );
    return helper.toString();
  }
}

class XmlIntEnumsOutputAwsQuerySerializer
    extends _i4.StructuredSmithySerializer<XmlIntEnumsOutput> {
  const XmlIntEnumsOutputAwsQuerySerializer() : super('XmlIntEnumsOutput');

  @override
  Iterable<Type> get types => const [
        XmlIntEnumsOutput,
        _$XmlIntEnumsOutput,
      ];
  @override
  Iterable<_i4.ShapeId> get supportedProtocols => const [
        _i4.ShapeId(
          namespace: 'aws.protocols',
          shape: 'awsQuery',
        )
      ];
  @override
  XmlIntEnumsOutput deserialize(
    Serializers serializers,
    Iterable<Object?> serialized, {
    FullType specifiedType = FullType.unspecified,
  }) {
    final result = XmlIntEnumsOutputBuilder();
    final iterator = serialized.iterator;
    while (iterator.moveNext()) {
      final key = iterator.current;
      iterator.moveNext();
      final value = iterator.current;
      switch (key as String) {
        case 'intEnum1':
          if (value != null) {
            result.intEnum1 = (serializers.deserialize(
              value,
              specifiedType: const FullType(_i2.IntegerEnum),
            ) as _i2.IntegerEnum);
          }
          break;
        case 'intEnum2':
          if (value != null) {
            result.intEnum2 = (serializers.deserialize(
              value,
              specifiedType: const FullType(_i2.IntegerEnum),
            ) as _i2.IntegerEnum);
          }
          break;
        case 'intEnum3':
          if (value != null) {
            result.intEnum3 = (serializers.deserialize(
              value,
              specifiedType: const FullType(_i2.IntegerEnum),
            ) as _i2.IntegerEnum);
          }
          break;
        case 'intEnumList':
          if (value != null) {
            result.intEnumList.replace((const _i4.XmlBuiltListSerializer(
                    indexer: _i4.XmlIndexer.awsQueryList)
                .deserialize(
              serializers,
              value is String ? const [] : (value as Iterable<Object?>),
              specifiedType: const FullType(
                _i3.BuiltList,
                [FullType(_i2.IntegerEnum)],
              ),
            ) as _i3.BuiltList<_i2.IntegerEnum>));
          }
          break;
        case 'intEnumSet':
          if (value != null) {
            result.intEnumSet.replace((const _i4.XmlBuiltSetSerializer(
                    indexer: _i4.XmlIndexer.awsQueryList)
                .deserialize(
              serializers,
              value is String ? const [] : (value as Iterable<Object?>),
              specifiedType: const FullType(
                _i3.BuiltSet,
                [FullType(_i2.IntegerEnum)],
              ),
            ) as _i3.BuiltSet<_i2.IntegerEnum>));
          }
          break;
        case 'intEnumMap':
          if (value != null) {
            result.intEnumMap.replace(const _i4.XmlBuiltMapSerializer(
                    indexer: _i4.XmlIndexer.awsQueryMap)
                .deserialize(
              serializers,
              value is String ? const [] : (value as Iterable<Object?>),
              specifiedType: const FullType(
                _i3.BuiltMap,
                [
                  FullType(String),
                  FullType(_i2.IntegerEnum),
                ],
              ),
            ));
          }
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
    final payload = (object as XmlIntEnumsOutput);
    final result = <Object?>[
      const _i4.XmlElementName(
        'XmlIntEnumsOutputResponse',
        _i4.XmlNamespace('https://example.com/'),
      )
    ];
    if (payload.intEnum1 != null) {
      result
        ..add(const _i4.XmlElementName('intEnum1'))
        ..add(serializers.serialize(
          payload.intEnum1!,
          specifiedType: const FullType.nullable(_i2.IntegerEnum),
        ));
    }
    if (payload.intEnum2 != null) {
      result
        ..add(const _i4.XmlElementName('intEnum2'))
        ..add(serializers.serialize(
          payload.intEnum2!,
          specifiedType: const FullType.nullable(_i2.IntegerEnum),
        ));
    }
    if (payload.intEnum3 != null) {
      result
        ..add(const _i4.XmlElementName('intEnum3'))
        ..add(serializers.serialize(
          payload.intEnum3!,
          specifiedType: const FullType.nullable(_i2.IntegerEnum),
        ));
    }
    if (payload.intEnumList != null) {
      result
        ..add(const _i4.XmlElementName('intEnumList'))
        ..add(const _i4.XmlBuiltListSerializer(
                indexer: _i4.XmlIndexer.awsQueryList)
            .serialize(
          serializers,
          payload.intEnumList!,
          specifiedType: const FullType.nullable(
            _i3.BuiltList,
            [FullType(_i2.IntegerEnum)],
          ),
        ));
    }
    if (payload.intEnumSet != null) {
      result
        ..add(const _i4.XmlElementName('intEnumSet'))
        ..add(const _i4.XmlBuiltSetSerializer(
                indexer: _i4.XmlIndexer.awsQueryList)
            .serialize(
          serializers,
          payload.intEnumSet!,
          specifiedType: const FullType.nullable(
            _i3.BuiltSet,
            [FullType(_i2.IntegerEnum)],
          ),
        ));
    }
    if (payload.intEnumMap != null) {
      result
        ..add(const _i4.XmlElementName('intEnumMap'))
        ..add(
            const _i4.XmlBuiltMapSerializer(indexer: _i4.XmlIndexer.awsQueryMap)
                .serialize(
          serializers,
          payload.intEnumMap!,
          specifiedType: const FullType.nullable(
            _i3.BuiltMap,
            [
              FullType(String),
              FullType(_i2.IntegerEnum),
            ],
          ),
        ));
    }
    return result;
  }
}