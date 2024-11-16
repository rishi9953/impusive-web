// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'database.dart';

// ignore_for_file: type=lint
class $DashboardItemsTable extends DashboardItems
    with TableInfo<$DashboardItemsTable, DashboardItem> {
  @override
  final GeneratedDatabase attachedDatabase;
  final String? _alias;
  $DashboardItemsTable(this.attachedDatabase, [this._alias]);
  static const VerificationMeta _idMeta = const VerificationMeta('id');
  @override
  late final GeneratedColumn<int> id = GeneratedColumn<int>(
      'id', aliasedName, false,
      hasAutoIncrement: true,
      type: DriftSqlType.int,
      requiredDuringInsert: false,
      defaultConstraints:
          GeneratedColumn.constraintIsAlways('PRIMARY KEY AUTOINCREMENT'));
  static const VerificationMeta _cmpCodeMeta =
      const VerificationMeta('cmpCode');
  @override
  late final GeneratedColumn<String> cmpCode = GeneratedColumn<String>(
      'cmp_code', aliasedName, false,
      type: DriftSqlType.string, requiredDuringInsert: true);
  static const VerificationMeta _uploadFlagMeta =
      const VerificationMeta('uploadFlag');
  @override
  late final GeneratedColumn<String> uploadFlag = GeneratedColumn<String>(
      'upload_flag', aliasedName, false,
      type: DriftSqlType.string, requiredDuringInsert: true);
  static const VerificationMeta _moduleNoMeta =
      const VerificationMeta('moduleNo');
  @override
  late final GeneratedColumn<int> moduleNo = GeneratedColumn<int>(
      'module_no', aliasedName, false,
      type: DriftSqlType.int, requiredDuringInsert: true);
  static const VerificationMeta _applicationTypeMeta =
      const VerificationMeta('applicationType');
  @override
  late final GeneratedColumn<String> applicationType = GeneratedColumn<String>(
      'application_type', aliasedName, false,
      type: DriftSqlType.string, requiredDuringInsert: true);
  static const VerificationMeta _moduleNameMeta =
      const VerificationMeta('moduleName');
  @override
  late final GeneratedColumn<String> moduleName = GeneratedColumn<String>(
      'module_name', aliasedName, false,
      type: DriftSqlType.string, requiredDuringInsert: true);
  static const VerificationMeta _screenNameMeta =
      const VerificationMeta('screenName');
  @override
  late final GeneratedColumn<String> screenName = GeneratedColumn<String>(
      'screen_name', aliasedName, false,
      type: DriftSqlType.string, requiredDuringInsert: true);
  static const VerificationMeta _screenNoMeta =
      const VerificationMeta('screenNo');
  @override
  late final GeneratedColumn<int> screenNo = GeneratedColumn<int>(
      'screen_no', aliasedName, false,
      type: DriftSqlType.int, requiredDuringInsert: true);
  static const VerificationMeta _checkedMeta =
      const VerificationMeta('checked');
  @override
  late final GeneratedColumn<bool> checked = GeneratedColumn<bool>(
      'checked', aliasedName, false,
      type: DriftSqlType.bool,
      requiredDuringInsert: true,
      defaultConstraints:
          GeneratedColumn.constraintIsAlways('CHECK ("checked" IN (0, 1))'));
  static const VerificationMeta _sequenceMeta =
      const VerificationMeta('sequence');
  @override
  late final GeneratedColumn<int> sequence = GeneratedColumn<int>(
      'sequence', aliasedName, false,
      type: DriftSqlType.int, requiredDuringInsert: true);
  @override
  List<GeneratedColumn> get $columns => [
        id,
        cmpCode,
        uploadFlag,
        moduleNo,
        applicationType,
        moduleName,
        screenName,
        screenNo,
        checked,
        sequence
      ];
  @override
  String get aliasedName => _alias ?? actualTableName;
  @override
  String get actualTableName => $name;
  static const String $name = 'dashboard_items';
  @override
  VerificationContext validateIntegrity(Insertable<DashboardItem> instance,
      {bool isInserting = false}) {
    final context = VerificationContext();
    final data = instance.toColumns(true);
    if (data.containsKey('id')) {
      context.handle(_idMeta, id.isAcceptableOrUnknown(data['id']!, _idMeta));
    }
    if (data.containsKey('cmp_code')) {
      context.handle(_cmpCodeMeta,
          cmpCode.isAcceptableOrUnknown(data['cmp_code']!, _cmpCodeMeta));
    } else if (isInserting) {
      context.missing(_cmpCodeMeta);
    }
    if (data.containsKey('upload_flag')) {
      context.handle(
          _uploadFlagMeta,
          uploadFlag.isAcceptableOrUnknown(
              data['upload_flag']!, _uploadFlagMeta));
    } else if (isInserting) {
      context.missing(_uploadFlagMeta);
    }
    if (data.containsKey('module_no')) {
      context.handle(_moduleNoMeta,
          moduleNo.isAcceptableOrUnknown(data['module_no']!, _moduleNoMeta));
    } else if (isInserting) {
      context.missing(_moduleNoMeta);
    }
    if (data.containsKey('application_type')) {
      context.handle(
          _applicationTypeMeta,
          applicationType.isAcceptableOrUnknown(
              data['application_type']!, _applicationTypeMeta));
    } else if (isInserting) {
      context.missing(_applicationTypeMeta);
    }
    if (data.containsKey('module_name')) {
      context.handle(
          _moduleNameMeta,
          moduleName.isAcceptableOrUnknown(
              data['module_name']!, _moduleNameMeta));
    } else if (isInserting) {
      context.missing(_moduleNameMeta);
    }
    if (data.containsKey('screen_name')) {
      context.handle(
          _screenNameMeta,
          screenName.isAcceptableOrUnknown(
              data['screen_name']!, _screenNameMeta));
    } else if (isInserting) {
      context.missing(_screenNameMeta);
    }
    if (data.containsKey('screen_no')) {
      context.handle(_screenNoMeta,
          screenNo.isAcceptableOrUnknown(data['screen_no']!, _screenNoMeta));
    } else if (isInserting) {
      context.missing(_screenNoMeta);
    }
    if (data.containsKey('checked')) {
      context.handle(_checkedMeta,
          checked.isAcceptableOrUnknown(data['checked']!, _checkedMeta));
    } else if (isInserting) {
      context.missing(_checkedMeta);
    }
    if (data.containsKey('sequence')) {
      context.handle(_sequenceMeta,
          sequence.isAcceptableOrUnknown(data['sequence']!, _sequenceMeta));
    } else if (isInserting) {
      context.missing(_sequenceMeta);
    }
    return context;
  }

  @override
  Set<GeneratedColumn> get $primaryKey => {id};
  @override
  DashboardItem map(Map<String, dynamic> data, {String? tablePrefix}) {
    final effectivePrefix = tablePrefix != null ? '$tablePrefix.' : '';
    return DashboardItem(
      id: attachedDatabase.typeMapping
          .read(DriftSqlType.int, data['${effectivePrefix}id'])!,
      cmpCode: attachedDatabase.typeMapping
          .read(DriftSqlType.string, data['${effectivePrefix}cmp_code'])!,
      uploadFlag: attachedDatabase.typeMapping
          .read(DriftSqlType.string, data['${effectivePrefix}upload_flag'])!,
      moduleNo: attachedDatabase.typeMapping
          .read(DriftSqlType.int, data['${effectivePrefix}module_no'])!,
      applicationType: attachedDatabase.typeMapping.read(
          DriftSqlType.string, data['${effectivePrefix}application_type'])!,
      moduleName: attachedDatabase.typeMapping
          .read(DriftSqlType.string, data['${effectivePrefix}module_name'])!,
      screenName: attachedDatabase.typeMapping
          .read(DriftSqlType.string, data['${effectivePrefix}screen_name'])!,
      screenNo: attachedDatabase.typeMapping
          .read(DriftSqlType.int, data['${effectivePrefix}screen_no'])!,
      checked: attachedDatabase.typeMapping
          .read(DriftSqlType.bool, data['${effectivePrefix}checked'])!,
      sequence: attachedDatabase.typeMapping
          .read(DriftSqlType.int, data['${effectivePrefix}sequence'])!,
    );
  }

  @override
  $DashboardItemsTable createAlias(String alias) {
    return $DashboardItemsTable(attachedDatabase, alias);
  }
}

class DashboardItem extends DataClass implements Insertable<DashboardItem> {
  final int id;
  final String cmpCode;
  final String uploadFlag;
  final int moduleNo;
  final String applicationType;
  final String moduleName;
  final String screenName;
  final int screenNo;
  final bool checked;
  final int sequence;
  const DashboardItem(
      {required this.id,
      required this.cmpCode,
      required this.uploadFlag,
      required this.moduleNo,
      required this.applicationType,
      required this.moduleName,
      required this.screenName,
      required this.screenNo,
      required this.checked,
      required this.sequence});
  @override
  Map<String, Expression> toColumns(bool nullToAbsent) {
    final map = <String, Expression>{};
    map['id'] = Variable<int>(id);
    map['cmp_code'] = Variable<String>(cmpCode);
    map['upload_flag'] = Variable<String>(uploadFlag);
    map['module_no'] = Variable<int>(moduleNo);
    map['application_type'] = Variable<String>(applicationType);
    map['module_name'] = Variable<String>(moduleName);
    map['screen_name'] = Variable<String>(screenName);
    map['screen_no'] = Variable<int>(screenNo);
    map['checked'] = Variable<bool>(checked);
    map['sequence'] = Variable<int>(sequence);
    return map;
  }

  DashboardItemsCompanion toCompanion(bool nullToAbsent) {
    return DashboardItemsCompanion(
      id: Value(id),
      cmpCode: Value(cmpCode),
      uploadFlag: Value(uploadFlag),
      moduleNo: Value(moduleNo),
      applicationType: Value(applicationType),
      moduleName: Value(moduleName),
      screenName: Value(screenName),
      screenNo: Value(screenNo),
      checked: Value(checked),
      sequence: Value(sequence),
    );
  }

  factory DashboardItem.fromJson(Map<String, dynamic> json,
      {ValueSerializer? serializer}) {
    serializer ??= driftRuntimeOptions.defaultSerializer;
    return DashboardItem(
      id: serializer.fromJson<int>(json['id']),
      cmpCode: serializer.fromJson<String>(json['cmpCode']),
      uploadFlag: serializer.fromJson<String>(json['uploadFlag']),
      moduleNo: serializer.fromJson<int>(json['moduleNo']),
      applicationType: serializer.fromJson<String>(json['applicationType']),
      moduleName: serializer.fromJson<String>(json['moduleName']),
      screenName: serializer.fromJson<String>(json['screenName']),
      screenNo: serializer.fromJson<int>(json['screenNo']),
      checked: serializer.fromJson<bool>(json['checked']),
      sequence: serializer.fromJson<int>(json['sequence']),
    );
  }
  @override
  Map<String, dynamic> toJson({ValueSerializer? serializer}) {
    serializer ??= driftRuntimeOptions.defaultSerializer;
    return <String, dynamic>{
      'id': serializer.toJson<int>(id),
      'cmpCode': serializer.toJson<String>(cmpCode),
      'uploadFlag': serializer.toJson<String>(uploadFlag),
      'moduleNo': serializer.toJson<int>(moduleNo),
      'applicationType': serializer.toJson<String>(applicationType),
      'moduleName': serializer.toJson<String>(moduleName),
      'screenName': serializer.toJson<String>(screenName),
      'screenNo': serializer.toJson<int>(screenNo),
      'checked': serializer.toJson<bool>(checked),
      'sequence': serializer.toJson<int>(sequence),
    };
  }

  DashboardItem copyWith(
          {int? id,
          String? cmpCode,
          String? uploadFlag,
          int? moduleNo,
          String? applicationType,
          String? moduleName,
          String? screenName,
          int? screenNo,
          bool? checked,
          int? sequence}) =>
      DashboardItem(
        id: id ?? this.id,
        cmpCode: cmpCode ?? this.cmpCode,
        uploadFlag: uploadFlag ?? this.uploadFlag,
        moduleNo: moduleNo ?? this.moduleNo,
        applicationType: applicationType ?? this.applicationType,
        moduleName: moduleName ?? this.moduleName,
        screenName: screenName ?? this.screenName,
        screenNo: screenNo ?? this.screenNo,
        checked: checked ?? this.checked,
        sequence: sequence ?? this.sequence,
      );
  DashboardItem copyWithCompanion(DashboardItemsCompanion data) {
    return DashboardItem(
      id: data.id.present ? data.id.value : this.id,
      cmpCode: data.cmpCode.present ? data.cmpCode.value : this.cmpCode,
      uploadFlag:
          data.uploadFlag.present ? data.uploadFlag.value : this.uploadFlag,
      moduleNo: data.moduleNo.present ? data.moduleNo.value : this.moduleNo,
      applicationType: data.applicationType.present
          ? data.applicationType.value
          : this.applicationType,
      moduleName:
          data.moduleName.present ? data.moduleName.value : this.moduleName,
      screenName:
          data.screenName.present ? data.screenName.value : this.screenName,
      screenNo: data.screenNo.present ? data.screenNo.value : this.screenNo,
      checked: data.checked.present ? data.checked.value : this.checked,
      sequence: data.sequence.present ? data.sequence.value : this.sequence,
    );
  }

  @override
  String toString() {
    return (StringBuffer('DashboardItem(')
          ..write('id: $id, ')
          ..write('cmpCode: $cmpCode, ')
          ..write('uploadFlag: $uploadFlag, ')
          ..write('moduleNo: $moduleNo, ')
          ..write('applicationType: $applicationType, ')
          ..write('moduleName: $moduleName, ')
          ..write('screenName: $screenName, ')
          ..write('screenNo: $screenNo, ')
          ..write('checked: $checked, ')
          ..write('sequence: $sequence')
          ..write(')'))
        .toString();
  }

  @override
  int get hashCode => Object.hash(id, cmpCode, uploadFlag, moduleNo,
      applicationType, moduleName, screenName, screenNo, checked, sequence);
  @override
  bool operator ==(Object other) =>
      identical(this, other) ||
      (other is DashboardItem &&
          other.id == this.id &&
          other.cmpCode == this.cmpCode &&
          other.uploadFlag == this.uploadFlag &&
          other.moduleNo == this.moduleNo &&
          other.applicationType == this.applicationType &&
          other.moduleName == this.moduleName &&
          other.screenName == this.screenName &&
          other.screenNo == this.screenNo &&
          other.checked == this.checked &&
          other.sequence == this.sequence);
}

class DashboardItemsCompanion extends UpdateCompanion<DashboardItem> {
  final Value<int> id;
  final Value<String> cmpCode;
  final Value<String> uploadFlag;
  final Value<int> moduleNo;
  final Value<String> applicationType;
  final Value<String> moduleName;
  final Value<String> screenName;
  final Value<int> screenNo;
  final Value<bool> checked;
  final Value<int> sequence;
  const DashboardItemsCompanion({
    this.id = const Value.absent(),
    this.cmpCode = const Value.absent(),
    this.uploadFlag = const Value.absent(),
    this.moduleNo = const Value.absent(),
    this.applicationType = const Value.absent(),
    this.moduleName = const Value.absent(),
    this.screenName = const Value.absent(),
    this.screenNo = const Value.absent(),
    this.checked = const Value.absent(),
    this.sequence = const Value.absent(),
  });
  DashboardItemsCompanion.insert({
    this.id = const Value.absent(),
    required String cmpCode,
    required String uploadFlag,
    required int moduleNo,
    required String applicationType,
    required String moduleName,
    required String screenName,
    required int screenNo,
    required bool checked,
    required int sequence,
  })  : cmpCode = Value(cmpCode),
        uploadFlag = Value(uploadFlag),
        moduleNo = Value(moduleNo),
        applicationType = Value(applicationType),
        moduleName = Value(moduleName),
        screenName = Value(screenName),
        screenNo = Value(screenNo),
        checked = Value(checked),
        sequence = Value(sequence);
  static Insertable<DashboardItem> custom({
    Expression<int>? id,
    Expression<String>? cmpCode,
    Expression<String>? uploadFlag,
    Expression<int>? moduleNo,
    Expression<String>? applicationType,
    Expression<String>? moduleName,
    Expression<String>? screenName,
    Expression<int>? screenNo,
    Expression<bool>? checked,
    Expression<int>? sequence,
  }) {
    return RawValuesInsertable({
      if (id != null) 'id': id,
      if (cmpCode != null) 'cmp_code': cmpCode,
      if (uploadFlag != null) 'upload_flag': uploadFlag,
      if (moduleNo != null) 'module_no': moduleNo,
      if (applicationType != null) 'application_type': applicationType,
      if (moduleName != null) 'module_name': moduleName,
      if (screenName != null) 'screen_name': screenName,
      if (screenNo != null) 'screen_no': screenNo,
      if (checked != null) 'checked': checked,
      if (sequence != null) 'sequence': sequence,
    });
  }

  DashboardItemsCompanion copyWith(
      {Value<int>? id,
      Value<String>? cmpCode,
      Value<String>? uploadFlag,
      Value<int>? moduleNo,
      Value<String>? applicationType,
      Value<String>? moduleName,
      Value<String>? screenName,
      Value<int>? screenNo,
      Value<bool>? checked,
      Value<int>? sequence}) {
    return DashboardItemsCompanion(
      id: id ?? this.id,
      cmpCode: cmpCode ?? this.cmpCode,
      uploadFlag: uploadFlag ?? this.uploadFlag,
      moduleNo: moduleNo ?? this.moduleNo,
      applicationType: applicationType ?? this.applicationType,
      moduleName: moduleName ?? this.moduleName,
      screenName: screenName ?? this.screenName,
      screenNo: screenNo ?? this.screenNo,
      checked: checked ?? this.checked,
      sequence: sequence ?? this.sequence,
    );
  }

  @override
  Map<String, Expression> toColumns(bool nullToAbsent) {
    final map = <String, Expression>{};
    if (id.present) {
      map['id'] = Variable<int>(id.value);
    }
    if (cmpCode.present) {
      map['cmp_code'] = Variable<String>(cmpCode.value);
    }
    if (uploadFlag.present) {
      map['upload_flag'] = Variable<String>(uploadFlag.value);
    }
    if (moduleNo.present) {
      map['module_no'] = Variable<int>(moduleNo.value);
    }
    if (applicationType.present) {
      map['application_type'] = Variable<String>(applicationType.value);
    }
    if (moduleName.present) {
      map['module_name'] = Variable<String>(moduleName.value);
    }
    if (screenName.present) {
      map['screen_name'] = Variable<String>(screenName.value);
    }
    if (screenNo.present) {
      map['screen_no'] = Variable<int>(screenNo.value);
    }
    if (checked.present) {
      map['checked'] = Variable<bool>(checked.value);
    }
    if (sequence.present) {
      map['sequence'] = Variable<int>(sequence.value);
    }
    return map;
  }

  @override
  String toString() {
    return (StringBuffer('DashboardItemsCompanion(')
          ..write('id: $id, ')
          ..write('cmpCode: $cmpCode, ')
          ..write('uploadFlag: $uploadFlag, ')
          ..write('moduleNo: $moduleNo, ')
          ..write('applicationType: $applicationType, ')
          ..write('moduleName: $moduleName, ')
          ..write('screenName: $screenName, ')
          ..write('screenNo: $screenNo, ')
          ..write('checked: $checked, ')
          ..write('sequence: $sequence')
          ..write(')'))
        .toString();
  }
}

abstract class _$AppDatabase extends GeneratedDatabase {
  _$AppDatabase(QueryExecutor e) : super(e);
  $AppDatabaseManager get managers => $AppDatabaseManager(this);
  late final $DashboardItemsTable dashboardItems = $DashboardItemsTable(this);
  @override
  Iterable<TableInfo<Table, Object?>> get allTables =>
      allSchemaEntities.whereType<TableInfo<Table, Object?>>();
  @override
  List<DatabaseSchemaEntity> get allSchemaEntities => [dashboardItems];
}

typedef $$DashboardItemsTableCreateCompanionBuilder = DashboardItemsCompanion
    Function({
  Value<int> id,
  required String cmpCode,
  required String uploadFlag,
  required int moduleNo,
  required String applicationType,
  required String moduleName,
  required String screenName,
  required int screenNo,
  required bool checked,
  required int sequence,
});
typedef $$DashboardItemsTableUpdateCompanionBuilder = DashboardItemsCompanion
    Function({
  Value<int> id,
  Value<String> cmpCode,
  Value<String> uploadFlag,
  Value<int> moduleNo,
  Value<String> applicationType,
  Value<String> moduleName,
  Value<String> screenName,
  Value<int> screenNo,
  Value<bool> checked,
  Value<int> sequence,
});

class $$DashboardItemsTableFilterComposer
    extends Composer<_$AppDatabase, $DashboardItemsTable> {
  $$DashboardItemsTableFilterComposer({
    required super.$db,
    required super.$table,
    super.joinBuilder,
    super.$addJoinBuilderToRootComposer,
    super.$removeJoinBuilderFromRootComposer,
  });
  ColumnFilters<int> get id => $composableBuilder(
      column: $table.id, builder: (column) => ColumnFilters(column));

  ColumnFilters<String> get cmpCode => $composableBuilder(
      column: $table.cmpCode, builder: (column) => ColumnFilters(column));

  ColumnFilters<String> get uploadFlag => $composableBuilder(
      column: $table.uploadFlag, builder: (column) => ColumnFilters(column));

  ColumnFilters<int> get moduleNo => $composableBuilder(
      column: $table.moduleNo, builder: (column) => ColumnFilters(column));

  ColumnFilters<String> get applicationType => $composableBuilder(
      column: $table.applicationType,
      builder: (column) => ColumnFilters(column));

  ColumnFilters<String> get moduleName => $composableBuilder(
      column: $table.moduleName, builder: (column) => ColumnFilters(column));

  ColumnFilters<String> get screenName => $composableBuilder(
      column: $table.screenName, builder: (column) => ColumnFilters(column));

  ColumnFilters<int> get screenNo => $composableBuilder(
      column: $table.screenNo, builder: (column) => ColumnFilters(column));

  ColumnFilters<bool> get checked => $composableBuilder(
      column: $table.checked, builder: (column) => ColumnFilters(column));

  ColumnFilters<int> get sequence => $composableBuilder(
      column: $table.sequence, builder: (column) => ColumnFilters(column));
}

class $$DashboardItemsTableOrderingComposer
    extends Composer<_$AppDatabase, $DashboardItemsTable> {
  $$DashboardItemsTableOrderingComposer({
    required super.$db,
    required super.$table,
    super.joinBuilder,
    super.$addJoinBuilderToRootComposer,
    super.$removeJoinBuilderFromRootComposer,
  });
  ColumnOrderings<int> get id => $composableBuilder(
      column: $table.id, builder: (column) => ColumnOrderings(column));

  ColumnOrderings<String> get cmpCode => $composableBuilder(
      column: $table.cmpCode, builder: (column) => ColumnOrderings(column));

  ColumnOrderings<String> get uploadFlag => $composableBuilder(
      column: $table.uploadFlag, builder: (column) => ColumnOrderings(column));

  ColumnOrderings<int> get moduleNo => $composableBuilder(
      column: $table.moduleNo, builder: (column) => ColumnOrderings(column));

  ColumnOrderings<String> get applicationType => $composableBuilder(
      column: $table.applicationType,
      builder: (column) => ColumnOrderings(column));

  ColumnOrderings<String> get moduleName => $composableBuilder(
      column: $table.moduleName, builder: (column) => ColumnOrderings(column));

  ColumnOrderings<String> get screenName => $composableBuilder(
      column: $table.screenName, builder: (column) => ColumnOrderings(column));

  ColumnOrderings<int> get screenNo => $composableBuilder(
      column: $table.screenNo, builder: (column) => ColumnOrderings(column));

  ColumnOrderings<bool> get checked => $composableBuilder(
      column: $table.checked, builder: (column) => ColumnOrderings(column));

  ColumnOrderings<int> get sequence => $composableBuilder(
      column: $table.sequence, builder: (column) => ColumnOrderings(column));
}

class $$DashboardItemsTableAnnotationComposer
    extends Composer<_$AppDatabase, $DashboardItemsTable> {
  $$DashboardItemsTableAnnotationComposer({
    required super.$db,
    required super.$table,
    super.joinBuilder,
    super.$addJoinBuilderToRootComposer,
    super.$removeJoinBuilderFromRootComposer,
  });
  GeneratedColumn<int> get id =>
      $composableBuilder(column: $table.id, builder: (column) => column);

  GeneratedColumn<String> get cmpCode =>
      $composableBuilder(column: $table.cmpCode, builder: (column) => column);

  GeneratedColumn<String> get uploadFlag => $composableBuilder(
      column: $table.uploadFlag, builder: (column) => column);

  GeneratedColumn<int> get moduleNo =>
      $composableBuilder(column: $table.moduleNo, builder: (column) => column);

  GeneratedColumn<String> get applicationType => $composableBuilder(
      column: $table.applicationType, builder: (column) => column);

  GeneratedColumn<String> get moduleName => $composableBuilder(
      column: $table.moduleName, builder: (column) => column);

  GeneratedColumn<String> get screenName => $composableBuilder(
      column: $table.screenName, builder: (column) => column);

  GeneratedColumn<int> get screenNo =>
      $composableBuilder(column: $table.screenNo, builder: (column) => column);

  GeneratedColumn<bool> get checked =>
      $composableBuilder(column: $table.checked, builder: (column) => column);

  GeneratedColumn<int> get sequence =>
      $composableBuilder(column: $table.sequence, builder: (column) => column);
}

class $$DashboardItemsTableTableManager extends RootTableManager<
    _$AppDatabase,
    $DashboardItemsTable,
    DashboardItem,
    $$DashboardItemsTableFilterComposer,
    $$DashboardItemsTableOrderingComposer,
    $$DashboardItemsTableAnnotationComposer,
    $$DashboardItemsTableCreateCompanionBuilder,
    $$DashboardItemsTableUpdateCompanionBuilder,
    (
      DashboardItem,
      BaseReferences<_$AppDatabase, $DashboardItemsTable, DashboardItem>
    ),
    DashboardItem,
    PrefetchHooks Function()> {
  $$DashboardItemsTableTableManager(
      _$AppDatabase db, $DashboardItemsTable table)
      : super(TableManagerState(
          db: db,
          table: table,
          createFilteringComposer: () =>
              $$DashboardItemsTableFilterComposer($db: db, $table: table),
          createOrderingComposer: () =>
              $$DashboardItemsTableOrderingComposer($db: db, $table: table),
          createComputedFieldComposer: () =>
              $$DashboardItemsTableAnnotationComposer($db: db, $table: table),
          updateCompanionCallback: ({
            Value<int> id = const Value.absent(),
            Value<String> cmpCode = const Value.absent(),
            Value<String> uploadFlag = const Value.absent(),
            Value<int> moduleNo = const Value.absent(),
            Value<String> applicationType = const Value.absent(),
            Value<String> moduleName = const Value.absent(),
            Value<String> screenName = const Value.absent(),
            Value<int> screenNo = const Value.absent(),
            Value<bool> checked = const Value.absent(),
            Value<int> sequence = const Value.absent(),
          }) =>
              DashboardItemsCompanion(
            id: id,
            cmpCode: cmpCode,
            uploadFlag: uploadFlag,
            moduleNo: moduleNo,
            applicationType: applicationType,
            moduleName: moduleName,
            screenName: screenName,
            screenNo: screenNo,
            checked: checked,
            sequence: sequence,
          ),
          createCompanionCallback: ({
            Value<int> id = const Value.absent(),
            required String cmpCode,
            required String uploadFlag,
            required int moduleNo,
            required String applicationType,
            required String moduleName,
            required String screenName,
            required int screenNo,
            required bool checked,
            required int sequence,
          }) =>
              DashboardItemsCompanion.insert(
            id: id,
            cmpCode: cmpCode,
            uploadFlag: uploadFlag,
            moduleNo: moduleNo,
            applicationType: applicationType,
            moduleName: moduleName,
            screenName: screenName,
            screenNo: screenNo,
            checked: checked,
            sequence: sequence,
          ),
          withReferenceMapper: (p0) => p0
              .map((e) => (e.readTable(table), BaseReferences(db, table, e)))
              .toList(),
          prefetchHooksCallback: null,
        ));
}

typedef $$DashboardItemsTableProcessedTableManager = ProcessedTableManager<
    _$AppDatabase,
    $DashboardItemsTable,
    DashboardItem,
    $$DashboardItemsTableFilterComposer,
    $$DashboardItemsTableOrderingComposer,
    $$DashboardItemsTableAnnotationComposer,
    $$DashboardItemsTableCreateCompanionBuilder,
    $$DashboardItemsTableUpdateCompanionBuilder,
    (
      DashboardItem,
      BaseReferences<_$AppDatabase, $DashboardItemsTable, DashboardItem>
    ),
    DashboardItem,
    PrefetchHooks Function()>;

class $AppDatabaseManager {
  final _$AppDatabase _db;
  $AppDatabaseManager(this._db);
  $$DashboardItemsTableTableManager get dashboardItems =>
      $$DashboardItemsTableTableManager(_db, _db.dashboardItems);
}
