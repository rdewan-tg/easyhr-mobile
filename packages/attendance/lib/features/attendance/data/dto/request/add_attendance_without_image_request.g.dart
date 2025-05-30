// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'add_attendance_without_image_request.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$AddAttendanceWithoutImageRequestImpl
    _$$AddAttendanceWithoutImageRequestImplFromJson(
            Map<String, dynamic> json) =>
        _$AddAttendanceWithoutImageRequestImpl(
          address: json['address'] as String,
          latitude: (json['latitude'] as num).toDouble(),
          longitude: (json['longitude'] as num).toDouble(),
          zone: json['zone'] as String,
          status: $enumDecode(_$AttendanceStatusEnumMap, json['status']),
          transDay: (json['transDay'] as num).toInt(),
          transMonth: (json['transMonth'] as num).toInt(),
          transYear: (json['transYear'] as num).toInt(),
          date: json['date'] as String,
        );

Map<String, dynamic> _$$AddAttendanceWithoutImageRequestImplToJson(
  _$AddAttendanceWithoutImageRequestImpl instance,
) =>
    <String, dynamic>{
      'address': instance.address,
      'latitude': instance.latitude,
      'longitude': instance.longitude,
      'zone': instance.zone,
      'status': _$AttendanceStatusEnumMap[instance.status]!,
      'transDay': instance.transDay,
      'transMonth': instance.transMonth,
      'transYear': instance.transYear,
      'date': instance.date,
    };

const _$AttendanceStatusEnumMap = {
  AttendanceStatus.checkedIn: 'in',
  AttendanceStatus.checkedOut: 'out',
};
