// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'add_attendance_response.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$AddAttendanceResponseImpl _$$AddAttendanceResponseImplFromJson(
  Map<String, dynamic> json,
) => _$AddAttendanceResponseImpl(
  status: json['status'] as String,
  data: AddAttendanceData.fromJson(json['data'] as Map<String, dynamic>),
);

Map<String, dynamic> _$$AddAttendanceResponseImplToJson(
  _$AddAttendanceResponseImpl instance,
) => <String, dynamic>{'status': instance.status, 'data': instance.data};

_$AddAttendanceDataImpl _$$AddAttendanceDataImplFromJson(
  Map<String, dynamic> json,
) => _$AddAttendanceDataImpl(
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

Map<String, dynamic> _$$AddAttendanceDataImplToJson(
  _$AddAttendanceDataImpl instance,
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
