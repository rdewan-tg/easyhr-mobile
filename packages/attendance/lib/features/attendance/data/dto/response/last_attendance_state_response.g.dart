// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'last_attendance_state_response.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$LastAttendanceStateResponseImpl _$$LastAttendanceStateResponseImplFromJson(
  Map<String, dynamic> json,
) =>
    _$LastAttendanceStateResponseImpl(
      status: json['status'] as String,
      data: json['data'] == null
          ? null
          : LastAttendanceStateData.fromJson(
              json['data'] as Map<String, dynamic>,
            ),
    );

Map<String, dynamic> _$$LastAttendanceStateResponseImplToJson(
  _$LastAttendanceStateResponseImpl instance,
) =>
    <String, dynamic>{'status': instance.status, 'data': instance.data};

_$LastAttendanceStateDataImpl _$$LastAttendanceStateDataImplFromJson(
  Map<String, dynamic> json,
) =>
    _$LastAttendanceStateDataImpl(
      status: $enumDecode(_$AttendanceStatusEnumMap, json['status']),
    );

Map<String, dynamic> _$$LastAttendanceStateDataImplToJson(
  _$LastAttendanceStateDataImpl instance,
) =>
    <String, dynamic>{'status': _$AttendanceStatusEnumMap[instance.status]!};

const _$AttendanceStatusEnumMap = {
  AttendanceStatus.checkedIn: 'in',
  AttendanceStatus.checkedOut: 'out',
};
