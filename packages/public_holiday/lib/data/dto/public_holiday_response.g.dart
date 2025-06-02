// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'public_holiday_response.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$PublicHolidayResponseImpl _$$PublicHolidayResponseImplFromJson(
  Map<String, dynamic> json,
) => _$PublicHolidayResponseImpl(
  status: json['status'] as String,
  data:
      (json['data'] as List<dynamic>?)
          ?.map((e) => PublicHolidayData.fromJson(e as Map<String, dynamic>))
          .toList() ??
      const [],
);

Map<String, dynamic> _$$PublicHolidayResponseImplToJson(
  _$PublicHolidayResponseImpl instance,
) => <String, dynamic>{'status': instance.status, 'data': instance.data};

_$PublicHolidayDataImpl _$$PublicHolidayDataImplFromJson(
  Map<String, dynamic> json,
) => _$PublicHolidayDataImpl(
  id: (json['id'] as num).toInt(),
  name: json['name'] as String,
  description: json['description'] as String?,
  date: DateTime.parse(json['date'] as String),
  year: (json['year'] as num).toInt(),
  isRecurring: json['isRecurring'] as bool,
  companyId: (json['companyId'] as num).toInt(),
);

Map<String, dynamic> _$$PublicHolidayDataImplToJson(
  _$PublicHolidayDataImpl instance,
) => <String, dynamic>{
  'id': instance.id,
  'name': instance.name,
  'description': instance.description,
  'date': instance.date.toIso8601String(),
  'year': instance.year,
  'isRecurring': instance.isRecurring,
  'companyId': instance.companyId,
};
