// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'database.dart';

// **************************************************************************
// MoorGenerator
// **************************************************************************

// ignore_for_file: unnecessary_brace_in_string_interps, unnecessary_this
class Wine extends DataClass implements Insertable<Wine> {
  final int id;
  final String label;
  final String grape;
  final int? year;
  Wine({required this.id, required this.label, required this.grape, this.year});
  factory Wine.fromData(Map<String, dynamic> data, {String? prefix}) {
    final effectivePrefix = prefix ?? '';
    return Wine(
      id: const IntType()
          .mapFromDatabaseResponse(data['${effectivePrefix}id'])!,
      label: const StringType()
          .mapFromDatabaseResponse(data['${effectivePrefix}label'])!,
      grape: const StringType()
          .mapFromDatabaseResponse(data['${effectivePrefix}grape'])!,
      year: const IntType()
          .mapFromDatabaseResponse(data['${effectivePrefix}year']),
    );
  }
  @override
  Map<String, Expression> toColumns(bool nullToAbsent) {
    final map = <String, Expression>{};
    map['id'] = Variable<int>(id);
    map['label'] = Variable<String>(label);
    map['grape'] = Variable<String>(grape);
    if (!nullToAbsent || year != null) {
      map['year'] = Variable<int?>(year);
    }
    return map;
  }

  WinesCompanion toCompanion(bool nullToAbsent) {
    return WinesCompanion(
      id: Value(id),
      label: Value(label),
      grape: Value(grape),
      year: year == null && nullToAbsent ? const Value.absent() : Value(year),
    );
  }

  factory Wine.fromJson(Map<String, dynamic> json,
      {ValueSerializer? serializer}) {
    serializer ??= driftRuntimeOptions.defaultSerializer;
    return Wine(
      id: serializer.fromJson<int>(json['id']),
      label: serializer.fromJson<String>(json['label']),
      grape: serializer.fromJson<String>(json['grape']),
      year: serializer.fromJson<int?>(json['year']),
    );
  }
  @override
  Map<String, dynamic> toJson({ValueSerializer? serializer}) {
    serializer ??= driftRuntimeOptions.defaultSerializer;
    return <String, dynamic>{
      'id': serializer.toJson<int>(id),
      'label': serializer.toJson<String>(label),
      'grape': serializer.toJson<String>(grape),
      'year': serializer.toJson<int?>(year),
    };
  }

  Wine copyWith({int? id, String? label, String? grape, int? year}) => Wine(
        id: id ?? this.id,
        label: label ?? this.label,
        grape: grape ?? this.grape,
        year: year ?? this.year,
      );
  @override
  String toString() {
    return (StringBuffer('Wine(')
          ..write('id: $id, ')
          ..write('label: $label, ')
          ..write('grape: $grape, ')
          ..write('year: $year')
          ..write(')'))
        .toString();
  }

  @override
  int get hashCode => Object.hash(id, label, grape, year);
  @override
  bool operator ==(Object other) =>
      identical(this, other) ||
      (other is Wine &&
          other.id == this.id &&
          other.label == this.label &&
          other.grape == this.grape &&
          other.year == this.year);
}

class WinesCompanion extends UpdateCompanion<Wine> {
  final Value<int> id;
  final Value<String> label;
  final Value<String> grape;
  final Value<int?> year;
  const WinesCompanion({
    this.id = const Value.absent(),
    this.label = const Value.absent(),
    this.grape = const Value.absent(),
    this.year = const Value.absent(),
  });
  WinesCompanion.insert({
    this.id = const Value.absent(),
    required String label,
    required String grape,
    this.year = const Value.absent(),
  })  : label = Value(label),
        grape = Value(grape);
  static Insertable<Wine> custom({
    Expression<int>? id,
    Expression<String>? label,
    Expression<String>? grape,
    Expression<int?>? year,
  }) {
    return RawValuesInsertable({
      if (id != null) 'id': id,
      if (label != null) 'label': label,
      if (grape != null) 'grape': grape,
      if (year != null) 'year': year,
    });
  }

  WinesCompanion copyWith(
      {Value<int>? id,
      Value<String>? label,
      Value<String>? grape,
      Value<int?>? year}) {
    return WinesCompanion(
      id: id ?? this.id,
      label: label ?? this.label,
      grape: grape ?? this.grape,
      year: year ?? this.year,
    );
  }

  @override
  Map<String, Expression> toColumns(bool nullToAbsent) {
    final map = <String, Expression>{};
    if (id.present) {
      map['id'] = Variable<int>(id.value);
    }
    if (label.present) {
      map['label'] = Variable<String>(label.value);
    }
    if (grape.present) {
      map['grape'] = Variable<String>(grape.value);
    }
    if (year.present) {
      map['year'] = Variable<int?>(year.value);
    }
    return map;
  }

  @override
  String toString() {
    return (StringBuffer('WinesCompanion(')
          ..write('id: $id, ')
          ..write('label: $label, ')
          ..write('grape: $grape, ')
          ..write('year: $year')
          ..write(')'))
        .toString();
  }
}

class $WinesTable extends Wines with TableInfo<$WinesTable, Wine> {
  @override
  final GeneratedDatabase attachedDatabase;
  final String? _alias;
  $WinesTable(this.attachedDatabase, [this._alias]);
  final VerificationMeta _idMeta = const VerificationMeta('id');
  @override
  late final GeneratedColumn<int?> id = GeneratedColumn<int?>(
      'id', aliasedName, false,
      type: const IntType(),
      requiredDuringInsert: false,
      defaultConstraints: 'PRIMARY KEY AUTOINCREMENT');
  final VerificationMeta _labelMeta = const VerificationMeta('label');
  @override
  late final GeneratedColumn<String?> label = GeneratedColumn<String?>(
      'label', aliasedName, false,
      type: const StringType(), requiredDuringInsert: true);
  final VerificationMeta _grapeMeta = const VerificationMeta('grape');
  @override
  late final GeneratedColumn<String?> grape = GeneratedColumn<String?>(
      'grape', aliasedName, false,
      type: const StringType(), requiredDuringInsert: true);
  final VerificationMeta _yearMeta = const VerificationMeta('year');
  @override
  late final GeneratedColumn<int?> year = GeneratedColumn<int?>(
      'year', aliasedName, true,
      type: const IntType(), requiredDuringInsert: false);
  @override
  List<GeneratedColumn> get $columns => [id, label, grape, year];
  @override
  String get aliasedName => _alias ?? 'wines';
  @override
  String get actualTableName => 'wines';
  @override
  VerificationContext validateIntegrity(Insertable<Wine> instance,
      {bool isInserting = false}) {
    final context = VerificationContext();
    final data = instance.toColumns(true);
    if (data.containsKey('id')) {
      context.handle(_idMeta, id.isAcceptableOrUnknown(data['id']!, _idMeta));
    }
    if (data.containsKey('label')) {
      context.handle(
          _labelMeta, label.isAcceptableOrUnknown(data['label']!, _labelMeta));
    } else if (isInserting) {
      context.missing(_labelMeta);
    }
    if (data.containsKey('grape')) {
      context.handle(
          _grapeMeta, grape.isAcceptableOrUnknown(data['grape']!, _grapeMeta));
    } else if (isInserting) {
      context.missing(_grapeMeta);
    }
    if (data.containsKey('year')) {
      context.handle(
          _yearMeta, year.isAcceptableOrUnknown(data['year']!, _yearMeta));
    }
    return context;
  }

  @override
  Set<GeneratedColumn> get $primaryKey => {id};
  @override
  Wine map(Map<String, dynamic> data, {String? tablePrefix}) {
    return Wine.fromData(data,
        prefix: tablePrefix != null ? '$tablePrefix.' : null);
  }

  @override
  $WinesTable createAlias(String alias) {
    return $WinesTable(attachedDatabase, alias);
  }
}

abstract class _$MyDatabase extends GeneratedDatabase {
  _$MyDatabase(QueryExecutor e) : super(SqlTypeSystem.defaultInstance, e);
  late final $WinesTable wines = $WinesTable(this);
  @override
  Iterable<TableInfo> get allTables => allSchemaEntities.whereType<TableInfo>();
  @override
  List<DatabaseSchemaEntity> get allSchemaEntities => [wines];
}
