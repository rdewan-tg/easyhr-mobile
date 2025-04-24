// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'attendance_response.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$AttendanceResponseImpl _$$AttendanceResponseImplFromJson(
  Map<String, dynamic> json,
) => _$AttendanceResponseImpl(
  status: json['status'] as String,
  data:
      (json['data'] as List<dynamic>?)
          ?.map((e) => AttendanceData.fromJson(e as Map<String, dynamic>))
          .toList() ??
      const [],
);

Map<String, dynamic> _$$AttendanceResponseImplToJson(
  _$AttendanceResponseImpl instance,
) => <String, dynamic>{'status': instance.status, 'data': instance.data};

_$AttendanceDataImpl _$$AttendanceDataImplFromJson(Map<String, dynamic> json) =>
    _$AttendanceDataImpl(
      id: (json['id'] as num).toInt(),
      userId: (json['userId'] as num).toInt(),
      address: json['address'] as String,
      latitude: json['latitude'] as String,
      longitude: json['longitude'] as String,
      zone: json['zone'] as String,
      image: json['image'] as String,
      status: $enumDecode(_$AttendanceStatusEnumMap, json['status']),
      transDay: (json['transDay'] as num).toInt(),
      transMonth: (json['transMonth'] as num).toInt(),
      transYear: (json['transYear'] as num).toInt(),
      date: json['date'] as String,
      companyId: (json['companyId'] as num).toInt(),
      createdAt: json['createdAt'] as String,
      updatedAt: json['updatedAt'] as String,
    );

Map<String, dynamic> _$$AttendanceDataImplToJson(
  _$AttendanceDataImpl instance,
) => <String, dynamic>{
  'id': instance.id,
  'userId': instance.userId,
  'address': instance.address,
  'latitude': instance.latitude,
  'longitude': instance.longitude,
  'zone': instance.zone,
  'image': instance.image,
  'status': _$AttendanceStatusEnumMap[instance.status]!,
  'transDay': instance.transDay,
  'transMonth': instance.transMonth,
  'transYear': instance.transYear,
  'date': instance.date,
  'companyId': instance.companyId,
  'createdAt': instance.createdAt,
  'updatedAt': instance.updatedAt,
};

const _$AttendanceStatusEnumMap = {
  AttendanceStatus.checkedIn: 'in',
  AttendanceStatus.checkedOut: 'out',
};
