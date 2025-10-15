// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'last_attendance_state_response.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_LastAttendanceStateResponse _$LastAttendanceStateResponseFromJson(
  Map<String, dynamic> json,
) => _LastAttendanceStateResponse(
  status: json['status'] as String,
  data: json['data'] == null
      ? null
      : LastAttendanceStateData.fromJson(json['data'] as Map<String, dynamic>),
);

Map<String, dynamic> _$LastAttendanceStateResponseToJson(
  _LastAttendanceStateResponse instance,
) => <String, dynamic>{'status': instance.status, 'data': instance.data};

_LastAttendanceStateData _$LastAttendanceStateDataFromJson(
  Map<String, dynamic> json,
) => _LastAttendanceStateData(
  status: $enumDecode(_$AttendanceStatusEnumMap, json['status']),
);

Map<String, dynamic> _$LastAttendanceStateDataToJson(
  _LastAttendanceStateData instance,
) => <String, dynamic>{'status': _$AttendanceStatusEnumMap[instance.status]!};

const _$AttendanceStatusEnumMap = {
  AttendanceStatus.checkedIn: 'in',
  AttendanceStatus.checkedOut: 'out',
};
