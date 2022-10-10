// Generated with smithy-dart 0.1.1. DO NOT MODIFY.

library smoke_test.s3.model.default_retention; // ignore_for_file: no_leading_underscores_for_library_prefixes

import 'package:aws_common/aws_common.dart' as _i1;
import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';
import 'package:smithy/smithy.dart' as _i3;
import 'package:smoke_test/src/sdk/src/s3/model/object_lock_retention_mode.dart'
    as _i2;

part 'default_retention.g.dart';

/// The container element for specifying the default Object Lock retention settings for new objects placed in the specified bucket.
///
/// *   The `DefaultRetention` settings require both a mode and a period.
///
/// *   The `DefaultRetention` period can be either `Days` or `Years` but you must select one. You cannot specify `Days` and `Years` at the same time.
abstract class DefaultRetention
    with _i1.AWSEquatable<DefaultRetention>
    implements Built<DefaultRetention, DefaultRetentionBuilder> {
  /// The container element for specifying the default Object Lock retention settings for new objects placed in the specified bucket.
  ///
  /// *   The `DefaultRetention` settings require both a mode and a period.
  ///
  /// *   The `DefaultRetention` period can be either `Days` or `Years` but you must select one. You cannot specify `Days` and `Years` at the same time.
  factory DefaultRetention({
    int? days,
    _i2.ObjectLockRetentionMode? mode,
    int? years,
  }) {
    return _$DefaultRetention._(
      days: days,
      mode: mode,
      years: years,
    );
  }

  /// The container element for specifying the default Object Lock retention settings for new objects placed in the specified bucket.
  ///
  /// *   The `DefaultRetention` settings require both a mode and a period.
  ///
  /// *   The `DefaultRetention` period can be either `Days` or `Years` but you must select one. You cannot specify `Days` and `Years` at the same time.
  factory DefaultRetention.build(
      [void Function(DefaultRetentionBuilder) updates]) = _$DefaultRetention;

  const DefaultRetention._();

  static const List<_i3.SmithySerializer> serializers = [
    DefaultRetentionRestXmlSerializer()
  ];

  @BuiltValueHook(initializeBuilder: true)
  static void _init(DefaultRetentionBuilder b) {}

  /// The number of days that you want to specify for the default retention period. Must be used with `Mode`.
  int? get days;

  /// The default Object Lock retention mode you want to apply to new objects placed in the specified bucket. Must be used with either `Days` or `Years`.
  _i2.ObjectLockRetentionMode? get mode;

  /// The number of years that you want to specify for the default retention period. Must be used with `Mode`.
  int? get years;
  @override
  List<Object?> get props => [
        days,
        mode,
        years,
      ];
  @override
  String toString() {
    final helper = newBuiltValueToStringHelper('DefaultRetention');
    helper.add(
      'days',
      days,
    );
    helper.add(
      'mode',
      mode,
    );
    helper.add(
      'years',
      years,
    );
    return helper.toString();
  }
}

class DefaultRetentionRestXmlSerializer
    extends _i3.StructuredSmithySerializer<DefaultRetention> {
  const DefaultRetentionRestXmlSerializer() : super('DefaultRetention');

  @override
  Iterable<Type> get types => const [
        DefaultRetention,
        _$DefaultRetention,
      ];
  @override
  Iterable<_i3.ShapeId> get supportedProtocols => const [
        _i3.ShapeId(
          namespace: 'aws.protocols',
          shape: 'restXml',
        )
      ];
  @override
  DefaultRetention deserialize(
    Serializers serializers,
    Iterable<Object?> serialized, {
    FullType specifiedType = FullType.unspecified,
  }) {
    final result = DefaultRetentionBuilder();
    final iterator = serialized.iterator;
    while (iterator.moveNext()) {
      final key = iterator.current;
      iterator.moveNext();
      final value = iterator.current;
      switch (key as String) {
        case 'Days':
          if (value != null) {
            result.days = (serializers.deserialize(
              value,
              specifiedType: const FullType(int),
            ) as int);
          }
          break;
        case 'Mode':
          if (value != null) {
            result.mode = (serializers.deserialize(
              value,
              specifiedType: const FullType(_i2.ObjectLockRetentionMode),
            ) as _i2.ObjectLockRetentionMode);
          }
          break;
        case 'Years':
          if (value != null) {
            result.years = (serializers.deserialize(
              value,
              specifiedType: const FullType(int),
            ) as int);
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
    final payload = (object as DefaultRetention);
    final result = <Object?>[
      const _i3.XmlElementName(
        'DefaultRetention',
        _i3.XmlNamespace('http://s3.amazonaws.com/doc/2006-03-01/'),
      )
    ];
    if (payload.days != null) {
      result
        ..add(const _i3.XmlElementName('Days'))
        ..add(serializers.serialize(
          payload.days!,
          specifiedType: const FullType.nullable(int),
        ));
    }
    if (payload.mode != null) {
      result
        ..add(const _i3.XmlElementName('Mode'))
        ..add(serializers.serialize(
          payload.mode!,
          specifiedType: const FullType.nullable(_i2.ObjectLockRetentionMode),
        ));
    }
    if (payload.years != null) {
      result
        ..add(const _i3.XmlElementName('Years'))
        ..add(serializers.serialize(
          payload.years!,
          specifiedType: const FullType.nullable(int),
        ));
    }
    return result;
  }
}