// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'popularitems_model.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$PopularitemsModelImpl _$$PopularitemsModelImplFromJson(
        Map<String, dynamic> json) =>
    _$PopularitemsModelImpl(
      id: (json['id'] as num?)?.toInt(),
      imagePath: json['imagePath'] as String?,
      title: json['title'] as String?,
      subtitle: json['subtitle'] as String?,
    );

Map<String, dynamic> _$$PopularitemsModelImplToJson(
        _$PopularitemsModelImpl instance) =>
    <String, dynamic>{
      'id': instance.id,
      'imagePath': instance.imagePath,
      'title': instance.title,
      'subtitle': instance.subtitle,
    };
