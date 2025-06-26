// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'app_database.dart';

// ignore_for_file: type=lint
class $SettingEntityTable extends SettingEntity
    with TableInfo<$SettingEntityTable, SettingEntityData> {
  @override
  final GeneratedDatabase attachedDatabase;
  final String? _alias;
  $SettingEntityTable(this.attachedDatabase, [this._alias]);
  static const VerificationMeta _keyMeta = const VerificationMeta('key');
  @override
  late final GeneratedColumn<String> key = GeneratedColumn<String>(
    'key',
    aliasedName,
    false,
    type: DriftSqlType.string,
    requiredDuringInsert: true,
  );
  static const VerificationMeta _valueMeta = const VerificationMeta('value');
  @override
  late final GeneratedColumn<String> value = GeneratedColumn<String>(
    'value',
    aliasedName,
    true,
    type: DriftSqlType.string,
    requiredDuringInsert: false,
  );
  @override
  List<GeneratedColumn> get $columns => [key, value];
  @override
  String get aliasedName => _alias ?? actualTableName;
  @override
  String get actualTableName => $name;
  static const String $name = 'setting_entity';
  @override
  VerificationContext validateIntegrity(
    Insertable<SettingEntityData> instance, {
    bool isInserting = false,
  }) {
    final context = VerificationContext();
    final data = instance.toColumns(true);
    if (data.containsKey('key')) {
      context.handle(
        _keyMeta,
        key.isAcceptableOrUnknown(data['key']!, _keyMeta),
      );
    } else if (isInserting) {
      context.missing(_keyMeta);
    }
    if (data.containsKey('value')) {
      context.handle(
        _valueMeta,
        value.isAcceptableOrUnknown(data['value']!, _valueMeta),
      );
    }
    return context;
  }

  @override
  Set<GeneratedColumn> get $primaryKey => {key};
  @override
  SettingEntityData map(Map<String, dynamic> data, {String? tablePrefix}) {
    final effectivePrefix = tablePrefix != null ? '$tablePrefix.' : '';
    return SettingEntityData(
      key: attachedDatabase.typeMapping.read(
        DriftSqlType.string,
        data['${effectivePrefix}key'],
      )!,
      value: attachedDatabase.typeMapping.read(
        DriftSqlType.string,
        data['${effectivePrefix}value'],
      ),
    );
  }

  @override
  $SettingEntityTable createAlias(String alias) {
    return $SettingEntityTable(attachedDatabase, alias);
  }
}

class SettingEntityData extends DataClass
    implements Insertable<SettingEntityData> {
  final String key;
  final String? value;
  const SettingEntityData({required this.key, this.value});
  @override
  Map<String, Expression> toColumns(bool nullToAbsent) {
    final map = <String, Expression>{};
    map['key'] = Variable<String>(key);
    if (!nullToAbsent || value != null) {
      map['value'] = Variable<String>(value);
    }
    return map;
  }

  SettingEntityCompanion toCompanion(bool nullToAbsent) {
    return SettingEntityCompanion(
      key: Value(key),
      value: value == null && nullToAbsent
          ? const Value.absent()
          : Value(value),
    );
  }

  factory SettingEntityData.fromJson(
    Map<String, dynamic> json, {
    ValueSerializer? serializer,
  }) {
    serializer ??= driftRuntimeOptions.defaultSerializer;
    return SettingEntityData(
      key: serializer.fromJson<String>(json['key']),
      value: serializer.fromJson<String?>(json['value']),
    );
  }
  @override
  Map<String, dynamic> toJson({ValueSerializer? serializer}) {
    serializer ??= driftRuntimeOptions.defaultSerializer;
    return <String, dynamic>{
      'key': serializer.toJson<String>(key),
      'value': serializer.toJson<String?>(value),
    };
  }

  SettingEntityData copyWith({
    String? key,
    Value<String?> value = const Value.absent(),
  }) => SettingEntityData(
    key: key ?? this.key,
    value: value.present ? value.value : this.value,
  );
  SettingEntityData copyWithCompanion(SettingEntityCompanion data) {
    return SettingEntityData(
      key: data.key.present ? data.key.value : this.key,
      value: data.value.present ? data.value.value : this.value,
    );
  }

  @override
  String toString() {
    return (StringBuffer('SettingEntityData(')
          ..write('key: $key, ')
          ..write('value: $value')
          ..write(')'))
        .toString();
  }

  @override
  int get hashCode => Object.hash(key, value);
  @override
  bool operator ==(Object other) =>
      identical(this, other) ||
      (other is SettingEntityData &&
          other.key == this.key &&
          other.value == this.value);
}

class SettingEntityCompanion extends UpdateCompanion<SettingEntityData> {
  final Value<String> key;
  final Value<String?> value;
  final Value<int> rowid;
  const SettingEntityCompanion({
    this.key = const Value.absent(),
    this.value = const Value.absent(),
    this.rowid = const Value.absent(),
  });
  SettingEntityCompanion.insert({
    required String key,
    this.value = const Value.absent(),
    this.rowid = const Value.absent(),
  }) : key = Value(key);
  static Insertable<SettingEntityData> custom({
    Expression<String>? key,
    Expression<String>? value,
    Expression<int>? rowid,
  }) {
    return RawValuesInsertable({
      if (key != null) 'key': key,
      if (value != null) 'value': value,
      if (rowid != null) 'rowid': rowid,
    });
  }

  SettingEntityCompanion copyWith({
    Value<String>? key,
    Value<String?>? value,
    Value<int>? rowid,
  }) {
    return SettingEntityCompanion(
      key: key ?? this.key,
      value: value ?? this.value,
      rowid: rowid ?? this.rowid,
    );
  }

  @override
  Map<String, Expression> toColumns(bool nullToAbsent) {
    final map = <String, Expression>{};
    if (key.present) {
      map['key'] = Variable<String>(key.value);
    }
    if (value.present) {
      map['value'] = Variable<String>(value.value);
    }
    if (rowid.present) {
      map['rowid'] = Variable<int>(rowid.value);
    }
    return map;
  }

  @override
  String toString() {
    return (StringBuffer('SettingEntityCompanion(')
          ..write('key: $key, ')
          ..write('value: $value, ')
          ..write('rowid: $rowid')
          ..write(')'))
        .toString();
  }
}

class $NotificationScheduleEntityTable extends NotificationScheduleEntity
    with
        TableInfo<
          $NotificationScheduleEntityTable,
          NotificationScheduleEntityData
        > {
  @override
  final GeneratedDatabase attachedDatabase;
  final String? _alias;
  $NotificationScheduleEntityTable(this.attachedDatabase, [this._alias]);
  static const VerificationMeta _idMeta = const VerificationMeta('id');
  @override
  late final GeneratedColumn<int> id = GeneratedColumn<int>(
    'id',
    aliasedName,
    false,
    hasAutoIncrement: true,
    type: DriftSqlType.int,
    requiredDuringInsert: false,
    defaultConstraints: GeneratedColumn.constraintIsAlways(
      'PRIMARY KEY AUTOINCREMENT',
    ),
  );
  static const VerificationMeta _titleMeta = const VerificationMeta('title');
  @override
  late final GeneratedColumn<String> title = GeneratedColumn<String>(
    'title',
    aliasedName,
    false,
    type: DriftSqlType.string,
    requiredDuringInsert: true,
  );
  static const VerificationMeta _bodyMeta = const VerificationMeta('body');
  @override
  late final GeneratedColumn<String> body = GeneratedColumn<String>(
    'body',
    aliasedName,
    false,
    type: DriftSqlType.string,
    requiredDuringInsert: true,
  );
  static const VerificationMeta _dayOfWeekMeta = const VerificationMeta(
    'dayOfWeek',
  );
  @override
  late final GeneratedColumn<int> dayOfWeek = GeneratedColumn<int>(
    'day_of_week',
    aliasedName,
    false,
    type: DriftSqlType.int,
    requiredDuringInsert: true,
  );
  static const VerificationMeta _hourMeta = const VerificationMeta('hour');
  @override
  late final GeneratedColumn<int> hour = GeneratedColumn<int>(
    'hour',
    aliasedName,
    false,
    type: DriftSqlType.int,
    requiredDuringInsert: true,
  );
  static const VerificationMeta _minuteMeta = const VerificationMeta('minute');
  @override
  late final GeneratedColumn<int> minute = GeneratedColumn<int>(
    'minute',
    aliasedName,
    false,
    type: DriftSqlType.int,
    requiredDuringInsert: true,
  );
  static const VerificationMeta _notificationIdMeta = const VerificationMeta(
    'notificationId',
  );
  @override
  late final GeneratedColumn<int> notificationId = GeneratedColumn<int>(
    'notification_id',
    aliasedName,
    false,
    type: DriftSqlType.int,
    requiredDuringInsert: true,
  );
  static const VerificationMeta _isActiveMeta = const VerificationMeta(
    'isActive',
  );
  @override
  late final GeneratedColumn<bool> isActive = GeneratedColumn<bool>(
    'is_active',
    aliasedName,
    false,
    type: DriftSqlType.bool,
    requiredDuringInsert: false,
    defaultConstraints: GeneratedColumn.constraintIsAlways(
      'CHECK ("is_active" IN (0, 1))',
    ),
    defaultValue: const Constant(true),
  );
  static const VerificationMeta _createdAtMeta = const VerificationMeta(
    'createdAt',
  );
  @override
  late final GeneratedColumn<DateTime> createdAt = GeneratedColumn<DateTime>(
    'created_at',
    aliasedName,
    false,
    type: DriftSqlType.dateTime,
    requiredDuringInsert: false,
    defaultValue: currentDateAndTime,
  );
  static const VerificationMeta _updatedAtMeta = const VerificationMeta(
    'updatedAt',
  );
  @override
  late final GeneratedColumn<DateTime> updatedAt = GeneratedColumn<DateTime>(
    'updated_at',
    aliasedName,
    false,
    type: DriftSqlType.dateTime,
    requiredDuringInsert: false,
    defaultValue: currentDateAndTime,
  );
  @override
  List<GeneratedColumn> get $columns => [
    id,
    title,
    body,
    dayOfWeek,
    hour,
    minute,
    notificationId,
    isActive,
    createdAt,
    updatedAt,
  ];
  @override
  String get aliasedName => _alias ?? actualTableName;
  @override
  String get actualTableName => $name;
  static const String $name = 'notification_schedule_entity';
  @override
  VerificationContext validateIntegrity(
    Insertable<NotificationScheduleEntityData> instance, {
    bool isInserting = false,
  }) {
    final context = VerificationContext();
    final data = instance.toColumns(true);
    if (data.containsKey('id')) {
      context.handle(_idMeta, id.isAcceptableOrUnknown(data['id']!, _idMeta));
    }
    if (data.containsKey('title')) {
      context.handle(
        _titleMeta,
        title.isAcceptableOrUnknown(data['title']!, _titleMeta),
      );
    } else if (isInserting) {
      context.missing(_titleMeta);
    }
    if (data.containsKey('body')) {
      context.handle(
        _bodyMeta,
        body.isAcceptableOrUnknown(data['body']!, _bodyMeta),
      );
    } else if (isInserting) {
      context.missing(_bodyMeta);
    }
    if (data.containsKey('day_of_week')) {
      context.handle(
        _dayOfWeekMeta,
        dayOfWeek.isAcceptableOrUnknown(data['day_of_week']!, _dayOfWeekMeta),
      );
    } else if (isInserting) {
      context.missing(_dayOfWeekMeta);
    }
    if (data.containsKey('hour')) {
      context.handle(
        _hourMeta,
        hour.isAcceptableOrUnknown(data['hour']!, _hourMeta),
      );
    } else if (isInserting) {
      context.missing(_hourMeta);
    }
    if (data.containsKey('minute')) {
      context.handle(
        _minuteMeta,
        minute.isAcceptableOrUnknown(data['minute']!, _minuteMeta),
      );
    } else if (isInserting) {
      context.missing(_minuteMeta);
    }
    if (data.containsKey('notification_id')) {
      context.handle(
        _notificationIdMeta,
        notificationId.isAcceptableOrUnknown(
          data['notification_id']!,
          _notificationIdMeta,
        ),
      );
    } else if (isInserting) {
      context.missing(_notificationIdMeta);
    }
    if (data.containsKey('is_active')) {
      context.handle(
        _isActiveMeta,
        isActive.isAcceptableOrUnknown(data['is_active']!, _isActiveMeta),
      );
    }
    if (data.containsKey('created_at')) {
      context.handle(
        _createdAtMeta,
        createdAt.isAcceptableOrUnknown(data['created_at']!, _createdAtMeta),
      );
    }
    if (data.containsKey('updated_at')) {
      context.handle(
        _updatedAtMeta,
        updatedAt.isAcceptableOrUnknown(data['updated_at']!, _updatedAtMeta),
      );
    }
    return context;
  }

  @override
  Set<GeneratedColumn> get $primaryKey => {id};
  @override
  List<Set<GeneratedColumn>> get uniqueKeys => [
    {dayOfWeek, hour, minute},
  ];
  @override
  NotificationScheduleEntityData map(
    Map<String, dynamic> data, {
    String? tablePrefix,
  }) {
    final effectivePrefix = tablePrefix != null ? '$tablePrefix.' : '';
    return NotificationScheduleEntityData(
      id: attachedDatabase.typeMapping.read(
        DriftSqlType.int,
        data['${effectivePrefix}id'],
      )!,
      title: attachedDatabase.typeMapping.read(
        DriftSqlType.string,
        data['${effectivePrefix}title'],
      )!,
      body: attachedDatabase.typeMapping.read(
        DriftSqlType.string,
        data['${effectivePrefix}body'],
      )!,
      dayOfWeek: attachedDatabase.typeMapping.read(
        DriftSqlType.int,
        data['${effectivePrefix}day_of_week'],
      )!,
      hour: attachedDatabase.typeMapping.read(
        DriftSqlType.int,
        data['${effectivePrefix}hour'],
      )!,
      minute: attachedDatabase.typeMapping.read(
        DriftSqlType.int,
        data['${effectivePrefix}minute'],
      )!,
      notificationId: attachedDatabase.typeMapping.read(
        DriftSqlType.int,
        data['${effectivePrefix}notification_id'],
      )!,
      isActive: attachedDatabase.typeMapping.read(
        DriftSqlType.bool,
        data['${effectivePrefix}is_active'],
      )!,
      createdAt: attachedDatabase.typeMapping.read(
        DriftSqlType.dateTime,
        data['${effectivePrefix}created_at'],
      )!,
      updatedAt: attachedDatabase.typeMapping.read(
        DriftSqlType.dateTime,
        data['${effectivePrefix}updated_at'],
      )!,
    );
  }

  @override
  $NotificationScheduleEntityTable createAlias(String alias) {
    return $NotificationScheduleEntityTable(attachedDatabase, alias);
  }
}

class NotificationScheduleEntityData extends DataClass
    implements Insertable<NotificationScheduleEntityData> {
  final int id;
  final String title;
  final String body;
  final int dayOfWeek;
  final int hour;
  final int minute;
  final int notificationId;
  final bool isActive;
  final DateTime createdAt;
  final DateTime updatedAt;
  const NotificationScheduleEntityData({
    required this.id,
    required this.title,
    required this.body,
    required this.dayOfWeek,
    required this.hour,
    required this.minute,
    required this.notificationId,
    required this.isActive,
    required this.createdAt,
    required this.updatedAt,
  });
  @override
  Map<String, Expression> toColumns(bool nullToAbsent) {
    final map = <String, Expression>{};
    map['id'] = Variable<int>(id);
    map['title'] = Variable<String>(title);
    map['body'] = Variable<String>(body);
    map['day_of_week'] = Variable<int>(dayOfWeek);
    map['hour'] = Variable<int>(hour);
    map['minute'] = Variable<int>(minute);
    map['notification_id'] = Variable<int>(notificationId);
    map['is_active'] = Variable<bool>(isActive);
    map['created_at'] = Variable<DateTime>(createdAt);
    map['updated_at'] = Variable<DateTime>(updatedAt);
    return map;
  }

  NotificationScheduleEntityCompanion toCompanion(bool nullToAbsent) {
    return NotificationScheduleEntityCompanion(
      id: Value(id),
      title: Value(title),
      body: Value(body),
      dayOfWeek: Value(dayOfWeek),
      hour: Value(hour),
      minute: Value(minute),
      notificationId: Value(notificationId),
      isActive: Value(isActive),
      createdAt: Value(createdAt),
      updatedAt: Value(updatedAt),
    );
  }

  factory NotificationScheduleEntityData.fromJson(
    Map<String, dynamic> json, {
    ValueSerializer? serializer,
  }) {
    serializer ??= driftRuntimeOptions.defaultSerializer;
    return NotificationScheduleEntityData(
      id: serializer.fromJson<int>(json['id']),
      title: serializer.fromJson<String>(json['title']),
      body: serializer.fromJson<String>(json['body']),
      dayOfWeek: serializer.fromJson<int>(json['dayOfWeek']),
      hour: serializer.fromJson<int>(json['hour']),
      minute: serializer.fromJson<int>(json['minute']),
      notificationId: serializer.fromJson<int>(json['notificationId']),
      isActive: serializer.fromJson<bool>(json['isActive']),
      createdAt: serializer.fromJson<DateTime>(json['createdAt']),
      updatedAt: serializer.fromJson<DateTime>(json['updatedAt']),
    );
  }
  @override
  Map<String, dynamic> toJson({ValueSerializer? serializer}) {
    serializer ??= driftRuntimeOptions.defaultSerializer;
    return <String, dynamic>{
      'id': serializer.toJson<int>(id),
      'title': serializer.toJson<String>(title),
      'body': serializer.toJson<String>(body),
      'dayOfWeek': serializer.toJson<int>(dayOfWeek),
      'hour': serializer.toJson<int>(hour),
      'minute': serializer.toJson<int>(minute),
      'notificationId': serializer.toJson<int>(notificationId),
      'isActive': serializer.toJson<bool>(isActive),
      'createdAt': serializer.toJson<DateTime>(createdAt),
      'updatedAt': serializer.toJson<DateTime>(updatedAt),
    };
  }

  NotificationScheduleEntityData copyWith({
    int? id,
    String? title,
    String? body,
    int? dayOfWeek,
    int? hour,
    int? minute,
    int? notificationId,
    bool? isActive,
    DateTime? createdAt,
    DateTime? updatedAt,
  }) => NotificationScheduleEntityData(
    id: id ?? this.id,
    title: title ?? this.title,
    body: body ?? this.body,
    dayOfWeek: dayOfWeek ?? this.dayOfWeek,
    hour: hour ?? this.hour,
    minute: minute ?? this.minute,
    notificationId: notificationId ?? this.notificationId,
    isActive: isActive ?? this.isActive,
    createdAt: createdAt ?? this.createdAt,
    updatedAt: updatedAt ?? this.updatedAt,
  );
  NotificationScheduleEntityData copyWithCompanion(
    NotificationScheduleEntityCompanion data,
  ) {
    return NotificationScheduleEntityData(
      id: data.id.present ? data.id.value : this.id,
      title: data.title.present ? data.title.value : this.title,
      body: data.body.present ? data.body.value : this.body,
      dayOfWeek: data.dayOfWeek.present ? data.dayOfWeek.value : this.dayOfWeek,
      hour: data.hour.present ? data.hour.value : this.hour,
      minute: data.minute.present ? data.minute.value : this.minute,
      notificationId: data.notificationId.present
          ? data.notificationId.value
          : this.notificationId,
      isActive: data.isActive.present ? data.isActive.value : this.isActive,
      createdAt: data.createdAt.present ? data.createdAt.value : this.createdAt,
      updatedAt: data.updatedAt.present ? data.updatedAt.value : this.updatedAt,
    );
  }

  @override
  String toString() {
    return (StringBuffer('NotificationScheduleEntityData(')
          ..write('id: $id, ')
          ..write('title: $title, ')
          ..write('body: $body, ')
          ..write('dayOfWeek: $dayOfWeek, ')
          ..write('hour: $hour, ')
          ..write('minute: $minute, ')
          ..write('notificationId: $notificationId, ')
          ..write('isActive: $isActive, ')
          ..write('createdAt: $createdAt, ')
          ..write('updatedAt: $updatedAt')
          ..write(')'))
        .toString();
  }

  @override
  int get hashCode => Object.hash(
    id,
    title,
    body,
    dayOfWeek,
    hour,
    minute,
    notificationId,
    isActive,
    createdAt,
    updatedAt,
  );
  @override
  bool operator ==(Object other) =>
      identical(this, other) ||
      (other is NotificationScheduleEntityData &&
          other.id == this.id &&
          other.title == this.title &&
          other.body == this.body &&
          other.dayOfWeek == this.dayOfWeek &&
          other.hour == this.hour &&
          other.minute == this.minute &&
          other.notificationId == this.notificationId &&
          other.isActive == this.isActive &&
          other.createdAt == this.createdAt &&
          other.updatedAt == this.updatedAt);
}

class NotificationScheduleEntityCompanion
    extends UpdateCompanion<NotificationScheduleEntityData> {
  final Value<int> id;
  final Value<String> title;
  final Value<String> body;
  final Value<int> dayOfWeek;
  final Value<int> hour;
  final Value<int> minute;
  final Value<int> notificationId;
  final Value<bool> isActive;
  final Value<DateTime> createdAt;
  final Value<DateTime> updatedAt;
  const NotificationScheduleEntityCompanion({
    this.id = const Value.absent(),
    this.title = const Value.absent(),
    this.body = const Value.absent(),
    this.dayOfWeek = const Value.absent(),
    this.hour = const Value.absent(),
    this.minute = const Value.absent(),
    this.notificationId = const Value.absent(),
    this.isActive = const Value.absent(),
    this.createdAt = const Value.absent(),
    this.updatedAt = const Value.absent(),
  });
  NotificationScheduleEntityCompanion.insert({
    this.id = const Value.absent(),
    required String title,
    required String body,
    required int dayOfWeek,
    required int hour,
    required int minute,
    required int notificationId,
    this.isActive = const Value.absent(),
    this.createdAt = const Value.absent(),
    this.updatedAt = const Value.absent(),
  }) : title = Value(title),
       body = Value(body),
       dayOfWeek = Value(dayOfWeek),
       hour = Value(hour),
       minute = Value(minute),
       notificationId = Value(notificationId);
  static Insertable<NotificationScheduleEntityData> custom({
    Expression<int>? id,
    Expression<String>? title,
    Expression<String>? body,
    Expression<int>? dayOfWeek,
    Expression<int>? hour,
    Expression<int>? minute,
    Expression<int>? notificationId,
    Expression<bool>? isActive,
    Expression<DateTime>? createdAt,
    Expression<DateTime>? updatedAt,
  }) {
    return RawValuesInsertable({
      if (id != null) 'id': id,
      if (title != null) 'title': title,
      if (body != null) 'body': body,
      if (dayOfWeek != null) 'day_of_week': dayOfWeek,
      if (hour != null) 'hour': hour,
      if (minute != null) 'minute': minute,
      if (notificationId != null) 'notification_id': notificationId,
      if (isActive != null) 'is_active': isActive,
      if (createdAt != null) 'created_at': createdAt,
      if (updatedAt != null) 'updated_at': updatedAt,
    });
  }

  NotificationScheduleEntityCompanion copyWith({
    Value<int>? id,
    Value<String>? title,
    Value<String>? body,
    Value<int>? dayOfWeek,
    Value<int>? hour,
    Value<int>? minute,
    Value<int>? notificationId,
    Value<bool>? isActive,
    Value<DateTime>? createdAt,
    Value<DateTime>? updatedAt,
  }) {
    return NotificationScheduleEntityCompanion(
      id: id ?? this.id,
      title: title ?? this.title,
      body: body ?? this.body,
      dayOfWeek: dayOfWeek ?? this.dayOfWeek,
      hour: hour ?? this.hour,
      minute: minute ?? this.minute,
      notificationId: notificationId ?? this.notificationId,
      isActive: isActive ?? this.isActive,
      createdAt: createdAt ?? this.createdAt,
      updatedAt: updatedAt ?? this.updatedAt,
    );
  }

  @override
  Map<String, Expression> toColumns(bool nullToAbsent) {
    final map = <String, Expression>{};
    if (id.present) {
      map['id'] = Variable<int>(id.value);
    }
    if (title.present) {
      map['title'] = Variable<String>(title.value);
    }
    if (body.present) {
      map['body'] = Variable<String>(body.value);
    }
    if (dayOfWeek.present) {
      map['day_of_week'] = Variable<int>(dayOfWeek.value);
    }
    if (hour.present) {
      map['hour'] = Variable<int>(hour.value);
    }
    if (minute.present) {
      map['minute'] = Variable<int>(minute.value);
    }
    if (notificationId.present) {
      map['notification_id'] = Variable<int>(notificationId.value);
    }
    if (isActive.present) {
      map['is_active'] = Variable<bool>(isActive.value);
    }
    if (createdAt.present) {
      map['created_at'] = Variable<DateTime>(createdAt.value);
    }
    if (updatedAt.present) {
      map['updated_at'] = Variable<DateTime>(updatedAt.value);
    }
    return map;
  }

  @override
  String toString() {
    return (StringBuffer('NotificationScheduleEntityCompanion(')
          ..write('id: $id, ')
          ..write('title: $title, ')
          ..write('body: $body, ')
          ..write('dayOfWeek: $dayOfWeek, ')
          ..write('hour: $hour, ')
          ..write('minute: $minute, ')
          ..write('notificationId: $notificationId, ')
          ..write('isActive: $isActive, ')
          ..write('createdAt: $createdAt, ')
          ..write('updatedAt: $updatedAt')
          ..write(')'))
        .toString();
  }
}

abstract class _$AppDatabase extends GeneratedDatabase {
  _$AppDatabase(QueryExecutor e) : super(e);
  $AppDatabaseManager get managers => $AppDatabaseManager(this);
  late final $SettingEntityTable settingEntity = $SettingEntityTable(this);
  late final $NotificationScheduleEntityTable notificationScheduleEntity =
      $NotificationScheduleEntityTable(this);
  late final SettingDao settingDao = SettingDao(this as AppDatabase);
  late final NotificationScheduleDao notificationScheduleDao =
      NotificationScheduleDao(this as AppDatabase);
  @override
  Iterable<TableInfo<Table, Object?>> get allTables =>
      allSchemaEntities.whereType<TableInfo<Table, Object?>>();
  @override
  List<DatabaseSchemaEntity> get allSchemaEntities => [
    settingEntity,
    notificationScheduleEntity,
  ];
  @override
  DriftDatabaseOptions get options =>
      const DriftDatabaseOptions(storeDateTimeAsText: true);
}

typedef $$SettingEntityTableCreateCompanionBuilder =
    SettingEntityCompanion Function({
      required String key,
      Value<String?> value,
      Value<int> rowid,
    });
typedef $$SettingEntityTableUpdateCompanionBuilder =
    SettingEntityCompanion Function({
      Value<String> key,
      Value<String?> value,
      Value<int> rowid,
    });

class $$SettingEntityTableFilterComposer
    extends Composer<_$AppDatabase, $SettingEntityTable> {
  $$SettingEntityTableFilterComposer({
    required super.$db,
    required super.$table,
    super.joinBuilder,
    super.$addJoinBuilderToRootComposer,
    super.$removeJoinBuilderFromRootComposer,
  });
  ColumnFilters<String> get key => $composableBuilder(
    column: $table.key,
    builder: (column) => ColumnFilters(column),
  );

  ColumnFilters<String> get value => $composableBuilder(
    column: $table.value,
    builder: (column) => ColumnFilters(column),
  );
}

class $$SettingEntityTableOrderingComposer
    extends Composer<_$AppDatabase, $SettingEntityTable> {
  $$SettingEntityTableOrderingComposer({
    required super.$db,
    required super.$table,
    super.joinBuilder,
    super.$addJoinBuilderToRootComposer,
    super.$removeJoinBuilderFromRootComposer,
  });
  ColumnOrderings<String> get key => $composableBuilder(
    column: $table.key,
    builder: (column) => ColumnOrderings(column),
  );

  ColumnOrderings<String> get value => $composableBuilder(
    column: $table.value,
    builder: (column) => ColumnOrderings(column),
  );
}

class $$SettingEntityTableAnnotationComposer
    extends Composer<_$AppDatabase, $SettingEntityTable> {
  $$SettingEntityTableAnnotationComposer({
    required super.$db,
    required super.$table,
    super.joinBuilder,
    super.$addJoinBuilderToRootComposer,
    super.$removeJoinBuilderFromRootComposer,
  });
  GeneratedColumn<String> get key =>
      $composableBuilder(column: $table.key, builder: (column) => column);

  GeneratedColumn<String> get value =>
      $composableBuilder(column: $table.value, builder: (column) => column);
}

class $$SettingEntityTableTableManager
    extends
        RootTableManager<
          _$AppDatabase,
          $SettingEntityTable,
          SettingEntityData,
          $$SettingEntityTableFilterComposer,
          $$SettingEntityTableOrderingComposer,
          $$SettingEntityTableAnnotationComposer,
          $$SettingEntityTableCreateCompanionBuilder,
          $$SettingEntityTableUpdateCompanionBuilder,
          (
            SettingEntityData,
            BaseReferences<
              _$AppDatabase,
              $SettingEntityTable,
              SettingEntityData
            >,
          ),
          SettingEntityData,
          PrefetchHooks Function()
        > {
  $$SettingEntityTableTableManager(_$AppDatabase db, $SettingEntityTable table)
    : super(
        TableManagerState(
          db: db,
          table: table,
          createFilteringComposer: () =>
              $$SettingEntityTableFilterComposer($db: db, $table: table),
          createOrderingComposer: () =>
              $$SettingEntityTableOrderingComposer($db: db, $table: table),
          createComputedFieldComposer: () =>
              $$SettingEntityTableAnnotationComposer($db: db, $table: table),
          updateCompanionCallback:
              ({
                Value<String> key = const Value.absent(),
                Value<String?> value = const Value.absent(),
                Value<int> rowid = const Value.absent(),
              }) =>
                  SettingEntityCompanion(key: key, value: value, rowid: rowid),
          createCompanionCallback:
              ({
                required String key,
                Value<String?> value = const Value.absent(),
                Value<int> rowid = const Value.absent(),
              }) => SettingEntityCompanion.insert(
                key: key,
                value: value,
                rowid: rowid,
              ),
          withReferenceMapper: (p0) => p0
              .map((e) => (e.readTable(table), BaseReferences(db, table, e)))
              .toList(),
          prefetchHooksCallback: null,
        ),
      );
}

typedef $$SettingEntityTableProcessedTableManager =
    ProcessedTableManager<
      _$AppDatabase,
      $SettingEntityTable,
      SettingEntityData,
      $$SettingEntityTableFilterComposer,
      $$SettingEntityTableOrderingComposer,
      $$SettingEntityTableAnnotationComposer,
      $$SettingEntityTableCreateCompanionBuilder,
      $$SettingEntityTableUpdateCompanionBuilder,
      (
        SettingEntityData,
        BaseReferences<_$AppDatabase, $SettingEntityTable, SettingEntityData>,
      ),
      SettingEntityData,
      PrefetchHooks Function()
    >;
typedef $$NotificationScheduleEntityTableCreateCompanionBuilder =
    NotificationScheduleEntityCompanion Function({
      Value<int> id,
      required String title,
      required String body,
      required int dayOfWeek,
      required int hour,
      required int minute,
      required int notificationId,
      Value<bool> isActive,
      Value<DateTime> createdAt,
      Value<DateTime> updatedAt,
    });
typedef $$NotificationScheduleEntityTableUpdateCompanionBuilder =
    NotificationScheduleEntityCompanion Function({
      Value<int> id,
      Value<String> title,
      Value<String> body,
      Value<int> dayOfWeek,
      Value<int> hour,
      Value<int> minute,
      Value<int> notificationId,
      Value<bool> isActive,
      Value<DateTime> createdAt,
      Value<DateTime> updatedAt,
    });

class $$NotificationScheduleEntityTableFilterComposer
    extends Composer<_$AppDatabase, $NotificationScheduleEntityTable> {
  $$NotificationScheduleEntityTableFilterComposer({
    required super.$db,
    required super.$table,
    super.joinBuilder,
    super.$addJoinBuilderToRootComposer,
    super.$removeJoinBuilderFromRootComposer,
  });
  ColumnFilters<int> get id => $composableBuilder(
    column: $table.id,
    builder: (column) => ColumnFilters(column),
  );

  ColumnFilters<String> get title => $composableBuilder(
    column: $table.title,
    builder: (column) => ColumnFilters(column),
  );

  ColumnFilters<String> get body => $composableBuilder(
    column: $table.body,
    builder: (column) => ColumnFilters(column),
  );

  ColumnFilters<int> get dayOfWeek => $composableBuilder(
    column: $table.dayOfWeek,
    builder: (column) => ColumnFilters(column),
  );

  ColumnFilters<int> get hour => $composableBuilder(
    column: $table.hour,
    builder: (column) => ColumnFilters(column),
  );

  ColumnFilters<int> get minute => $composableBuilder(
    column: $table.minute,
    builder: (column) => ColumnFilters(column),
  );

  ColumnFilters<int> get notificationId => $composableBuilder(
    column: $table.notificationId,
    builder: (column) => ColumnFilters(column),
  );

  ColumnFilters<bool> get isActive => $composableBuilder(
    column: $table.isActive,
    builder: (column) => ColumnFilters(column),
  );

  ColumnFilters<DateTime> get createdAt => $composableBuilder(
    column: $table.createdAt,
    builder: (column) => ColumnFilters(column),
  );

  ColumnFilters<DateTime> get updatedAt => $composableBuilder(
    column: $table.updatedAt,
    builder: (column) => ColumnFilters(column),
  );
}

class $$NotificationScheduleEntityTableOrderingComposer
    extends Composer<_$AppDatabase, $NotificationScheduleEntityTable> {
  $$NotificationScheduleEntityTableOrderingComposer({
    required super.$db,
    required super.$table,
    super.joinBuilder,
    super.$addJoinBuilderToRootComposer,
    super.$removeJoinBuilderFromRootComposer,
  });
  ColumnOrderings<int> get id => $composableBuilder(
    column: $table.id,
    builder: (column) => ColumnOrderings(column),
  );

  ColumnOrderings<String> get title => $composableBuilder(
    column: $table.title,
    builder: (column) => ColumnOrderings(column),
  );

  ColumnOrderings<String> get body => $composableBuilder(
    column: $table.body,
    builder: (column) => ColumnOrderings(column),
  );

  ColumnOrderings<int> get dayOfWeek => $composableBuilder(
    column: $table.dayOfWeek,
    builder: (column) => ColumnOrderings(column),
  );

  ColumnOrderings<int> get hour => $composableBuilder(
    column: $table.hour,
    builder: (column) => ColumnOrderings(column),
  );

  ColumnOrderings<int> get minute => $composableBuilder(
    column: $table.minute,
    builder: (column) => ColumnOrderings(column),
  );

  ColumnOrderings<int> get notificationId => $composableBuilder(
    column: $table.notificationId,
    builder: (column) => ColumnOrderings(column),
  );

  ColumnOrderings<bool> get isActive => $composableBuilder(
    column: $table.isActive,
    builder: (column) => ColumnOrderings(column),
  );

  ColumnOrderings<DateTime> get createdAt => $composableBuilder(
    column: $table.createdAt,
    builder: (column) => ColumnOrderings(column),
  );

  ColumnOrderings<DateTime> get updatedAt => $composableBuilder(
    column: $table.updatedAt,
    builder: (column) => ColumnOrderings(column),
  );
}

class $$NotificationScheduleEntityTableAnnotationComposer
    extends Composer<_$AppDatabase, $NotificationScheduleEntityTable> {
  $$NotificationScheduleEntityTableAnnotationComposer({
    required super.$db,
    required super.$table,
    super.joinBuilder,
    super.$addJoinBuilderToRootComposer,
    super.$removeJoinBuilderFromRootComposer,
  });
  GeneratedColumn<int> get id =>
      $composableBuilder(column: $table.id, builder: (column) => column);

  GeneratedColumn<String> get title =>
      $composableBuilder(column: $table.title, builder: (column) => column);

  GeneratedColumn<String> get body =>
      $composableBuilder(column: $table.body, builder: (column) => column);

  GeneratedColumn<int> get dayOfWeek =>
      $composableBuilder(column: $table.dayOfWeek, builder: (column) => column);

  GeneratedColumn<int> get hour =>
      $composableBuilder(column: $table.hour, builder: (column) => column);

  GeneratedColumn<int> get minute =>
      $composableBuilder(column: $table.minute, builder: (column) => column);

  GeneratedColumn<int> get notificationId => $composableBuilder(
    column: $table.notificationId,
    builder: (column) => column,
  );

  GeneratedColumn<bool> get isActive =>
      $composableBuilder(column: $table.isActive, builder: (column) => column);

  GeneratedColumn<DateTime> get createdAt =>
      $composableBuilder(column: $table.createdAt, builder: (column) => column);

  GeneratedColumn<DateTime> get updatedAt =>
      $composableBuilder(column: $table.updatedAt, builder: (column) => column);
}

class $$NotificationScheduleEntityTableTableManager
    extends
        RootTableManager<
          _$AppDatabase,
          $NotificationScheduleEntityTable,
          NotificationScheduleEntityData,
          $$NotificationScheduleEntityTableFilterComposer,
          $$NotificationScheduleEntityTableOrderingComposer,
          $$NotificationScheduleEntityTableAnnotationComposer,
          $$NotificationScheduleEntityTableCreateCompanionBuilder,
          $$NotificationScheduleEntityTableUpdateCompanionBuilder,
          (
            NotificationScheduleEntityData,
            BaseReferences<
              _$AppDatabase,
              $NotificationScheduleEntityTable,
              NotificationScheduleEntityData
            >,
          ),
          NotificationScheduleEntityData,
          PrefetchHooks Function()
        > {
  $$NotificationScheduleEntityTableTableManager(
    _$AppDatabase db,
    $NotificationScheduleEntityTable table,
  ) : super(
        TableManagerState(
          db: db,
          table: table,
          createFilteringComposer: () =>
              $$NotificationScheduleEntityTableFilterComposer(
                $db: db,
                $table: table,
              ),
          createOrderingComposer: () =>
              $$NotificationScheduleEntityTableOrderingComposer(
                $db: db,
                $table: table,
              ),
          createComputedFieldComposer: () =>
              $$NotificationScheduleEntityTableAnnotationComposer(
                $db: db,
                $table: table,
              ),
          updateCompanionCallback:
              ({
                Value<int> id = const Value.absent(),
                Value<String> title = const Value.absent(),
                Value<String> body = const Value.absent(),
                Value<int> dayOfWeek = const Value.absent(),
                Value<int> hour = const Value.absent(),
                Value<int> minute = const Value.absent(),
                Value<int> notificationId = const Value.absent(),
                Value<bool> isActive = const Value.absent(),
                Value<DateTime> createdAt = const Value.absent(),
                Value<DateTime> updatedAt = const Value.absent(),
              }) => NotificationScheduleEntityCompanion(
                id: id,
                title: title,
                body: body,
                dayOfWeek: dayOfWeek,
                hour: hour,
                minute: minute,
                notificationId: notificationId,
                isActive: isActive,
                createdAt: createdAt,
                updatedAt: updatedAt,
              ),
          createCompanionCallback:
              ({
                Value<int> id = const Value.absent(),
                required String title,
                required String body,
                required int dayOfWeek,
                required int hour,
                required int minute,
                required int notificationId,
                Value<bool> isActive = const Value.absent(),
                Value<DateTime> createdAt = const Value.absent(),
                Value<DateTime> updatedAt = const Value.absent(),
              }) => NotificationScheduleEntityCompanion.insert(
                id: id,
                title: title,
                body: body,
                dayOfWeek: dayOfWeek,
                hour: hour,
                minute: minute,
                notificationId: notificationId,
                isActive: isActive,
                createdAt: createdAt,
                updatedAt: updatedAt,
              ),
          withReferenceMapper: (p0) => p0
              .map((e) => (e.readTable(table), BaseReferences(db, table, e)))
              .toList(),
          prefetchHooksCallback: null,
        ),
      );
}

typedef $$NotificationScheduleEntityTableProcessedTableManager =
    ProcessedTableManager<
      _$AppDatabase,
      $NotificationScheduleEntityTable,
      NotificationScheduleEntityData,
      $$NotificationScheduleEntityTableFilterComposer,
      $$NotificationScheduleEntityTableOrderingComposer,
      $$NotificationScheduleEntityTableAnnotationComposer,
      $$NotificationScheduleEntityTableCreateCompanionBuilder,
      $$NotificationScheduleEntityTableUpdateCompanionBuilder,
      (
        NotificationScheduleEntityData,
        BaseReferences<
          _$AppDatabase,
          $NotificationScheduleEntityTable,
          NotificationScheduleEntityData
        >,
      ),
      NotificationScheduleEntityData,
      PrefetchHooks Function()
    >;

class $AppDatabaseManager {
  final _$AppDatabase _db;
  $AppDatabaseManager(this._db);
  $$SettingEntityTableTableManager get settingEntity =>
      $$SettingEntityTableTableManager(_db, _db.settingEntity);
  $$NotificationScheduleEntityTableTableManager
  get notificationScheduleEntity =>
      $$NotificationScheduleEntityTableTableManager(
        _db,
        _db.notificationScheduleEntity,
      );
}

// **************************************************************************
// RiverpodGenerator
// **************************************************************************

String _$appDatabaseHash() => r'98a09c6cfd43966155dfbdb0787fa18c85438e13';

/// See also [appDatabase].
@ProviderFor(appDatabase)
final appDatabaseProvider = Provider<AppDatabase>.internal(
  appDatabase,
  name: r'appDatabaseProvider',
  debugGetCreateSourceHash: const bool.fromEnvironment('dart.vm.product')
      ? null
      : _$appDatabaseHash,
  dependencies: null,
  allTransitiveDependencies: null,
);

@Deprecated('Will be removed in 3.0. Use Ref instead')
// ignore: unused_element
typedef AppDatabaseRef = ProviderRef<AppDatabase>;
// ignore_for_file: type=lint
// ignore_for_file: subtype_of_sealed_class, invalid_use_of_internal_member, invalid_use_of_visible_for_testing_member, deprecated_member_use_from_same_package
