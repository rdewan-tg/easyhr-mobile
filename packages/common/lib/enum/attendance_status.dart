part of common;

enum AttendanceStatus {
  @JsonValue('in')
  checkedIn,
  @JsonValue('out')
  checkedOut,
}
