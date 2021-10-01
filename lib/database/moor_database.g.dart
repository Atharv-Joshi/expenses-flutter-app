// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'moor_database.dart';

// **************************************************************************
// MoorGenerator
// **************************************************************************

// ignore_for_file: unnecessary_brace_in_string_interps, unnecessary_this
class Expense extends DataClass implements Insertable<Expense> {
  final int id;
  final double amount;
  final DateTime time;
  final String description;
  Expense(
      {@required this.id,
      @required this.amount,
      @required this.time,
      @required this.description});
  factory Expense.fromData(Map<String, dynamic> data, GeneratedDatabase db,
      {String prefix}) {
    final effectivePrefix = prefix ?? '';
    return Expense(
      id: const IntType().mapFromDatabaseResponse(data['${effectivePrefix}id']),
      amount: const RealType()
          .mapFromDatabaseResponse(data['${effectivePrefix}amount']),
      time: const DateTimeType()
          .mapFromDatabaseResponse(data['${effectivePrefix}time']),
      description: const StringType()
          .mapFromDatabaseResponse(data['${effectivePrefix}description']),
    );
  }
  @override
  Map<String, Expression> toColumns(bool nullToAbsent) {
    final map = <String, Expression>{};
    if (!nullToAbsent || id != null) {
      map['id'] = Variable<int>(id);
    }
    if (!nullToAbsent || amount != null) {
      map['amount'] = Variable<double>(amount);
    }
    if (!nullToAbsent || time != null) {
      map['time'] = Variable<DateTime>(time);
    }
    if (!nullToAbsent || description != null) {
      map['description'] = Variable<String>(description);
    }
    return map;
  }

  ExpensesCompanion toCompanion(bool nullToAbsent) {
    return ExpensesCompanion(
      id: id == null && nullToAbsent ? const Value.absent() : Value(id),
      amount:
          amount == null && nullToAbsent ? const Value.absent() : Value(amount),
      time: time == null && nullToAbsent ? const Value.absent() : Value(time),
      description: description == null && nullToAbsent
          ? const Value.absent()
          : Value(description),
    );
  }

  factory Expense.fromJson(Map<String, dynamic> json,
      {ValueSerializer serializer}) {
    serializer ??= moorRuntimeOptions.defaultSerializer;
    return Expense(
      id: serializer.fromJson<int>(json['id']),
      amount: serializer.fromJson<double>(json['amount']),
      time: serializer.fromJson<DateTime>(json['time']),
      description: serializer.fromJson<String>(json['description']),
    );
  }
  @override
  Map<String, dynamic> toJson({ValueSerializer serializer}) {
    serializer ??= moorRuntimeOptions.defaultSerializer;
    return <String, dynamic>{
      'id': serializer.toJson<int>(id),
      'amount': serializer.toJson<double>(amount),
      'time': serializer.toJson<DateTime>(time),
      'description': serializer.toJson<String>(description),
    };
  }

  Expense copyWith(
          {int id, double amount, DateTime time, String description}) =>
      Expense(
        id: id ?? this.id,
        amount: amount ?? this.amount,
        time: time ?? this.time,
        description: description ?? this.description,
      );
  @override
  String toString() {
    return (StringBuffer('Expense(')
          ..write('id: $id, ')
          ..write('amount: $amount, ')
          ..write('time: $time, ')
          ..write('description: $description')
          ..write(')'))
        .toString();
  }

  @override
  int get hashCode => $mrjf($mrjc(id.hashCode,
      $mrjc(amount.hashCode, $mrjc(time.hashCode, description.hashCode))));
  @override
  bool operator ==(Object other) =>
      identical(this, other) ||
      (other is Expense &&
          other.id == this.id &&
          other.amount == this.amount &&
          other.time == this.time &&
          other.description == this.description);
}

class ExpensesCompanion extends UpdateCompanion<Expense> {
  final Value<int> id;
  final Value<double> amount;
  final Value<DateTime> time;
  final Value<String> description;
  const ExpensesCompanion({
    this.id = const Value.absent(),
    this.amount = const Value.absent(),
    this.time = const Value.absent(),
    this.description = const Value.absent(),
  });
  ExpensesCompanion.insert({
    this.id = const Value.absent(),
    @required double amount,
    @required DateTime time,
    @required String description,
  })  : amount = Value(amount),
        time = Value(time),
        description = Value(description);
  static Insertable<Expense> custom({
    Expression<int> id,
    Expression<double> amount,
    Expression<DateTime> time,
    Expression<String> description,
  }) {
    return RawValuesInsertable({
      if (id != null) 'id': id,
      if (amount != null) 'amount': amount,
      if (time != null) 'time': time,
      if (description != null) 'description': description,
    });
  }

  ExpensesCompanion copyWith(
      {Value<int> id,
      Value<double> amount,
      Value<DateTime> time,
      Value<String> description}) {
    return ExpensesCompanion(
      id: id ?? this.id,
      amount: amount ?? this.amount,
      time: time ?? this.time,
      description: description ?? this.description,
    );
  }

  @override
  Map<String, Expression> toColumns(bool nullToAbsent) {
    final map = <String, Expression>{};
    if (id.present) {
      map['id'] = Variable<int>(id.value);
    }
    if (amount.present) {
      map['amount'] = Variable<double>(amount.value);
    }
    if (time.present) {
      map['time'] = Variable<DateTime>(time.value);
    }
    if (description.present) {
      map['description'] = Variable<String>(description.value);
    }
    return map;
  }

  @override
  String toString() {
    return (StringBuffer('ExpensesCompanion(')
          ..write('id: $id, ')
          ..write('amount: $amount, ')
          ..write('time: $time, ')
          ..write('description: $description')
          ..write(')'))
        .toString();
  }
}

class $ExpensesTable extends Expenses with TableInfo<$ExpensesTable, Expense> {
  final GeneratedDatabase _db;
  final String _alias;
  $ExpensesTable(this._db, [this._alias]);
  final VerificationMeta _idMeta = const VerificationMeta('id');
  GeneratedColumn<int> _id;
  @override
  GeneratedColumn<int> get id =>
      _id ??= GeneratedColumn<int>('id', aliasedName, false,
          typeName: 'INTEGER',
          requiredDuringInsert: false,
          defaultConstraints: 'PRIMARY KEY AUTOINCREMENT');
  final VerificationMeta _amountMeta = const VerificationMeta('amount');
  GeneratedColumn<double> _amount;
  @override
  GeneratedColumn<double> get amount =>
      _amount ??= GeneratedColumn<double>('amount', aliasedName, false,
          typeName: 'REAL', requiredDuringInsert: true);
  final VerificationMeta _timeMeta = const VerificationMeta('time');
  GeneratedColumn<DateTime> _time;
  @override
  GeneratedColumn<DateTime> get time =>
      _time ??= GeneratedColumn<DateTime>('time', aliasedName, false,
          typeName: 'INTEGER', requiredDuringInsert: true);
  final VerificationMeta _descriptionMeta =
      const VerificationMeta('description');
  GeneratedColumn<String> _description;
  @override
  GeneratedColumn<String> get description => _description ??=
      GeneratedColumn<String>('description', aliasedName, false,
          typeName: 'TEXT', requiredDuringInsert: true);
  @override
  List<GeneratedColumn> get $columns => [id, amount, time, description];
  @override
  String get aliasedName => _alias ?? 'expenses';
  @override
  String get actualTableName => 'expenses';
  @override
  VerificationContext validateIntegrity(Insertable<Expense> instance,
      {bool isInserting = false}) {
    final context = VerificationContext();
    final data = instance.toColumns(true);
    if (data.containsKey('id')) {
      context.handle(_idMeta, id.isAcceptableOrUnknown(data['id'], _idMeta));
    }
    if (data.containsKey('amount')) {
      context.handle(_amountMeta,
          amount.isAcceptableOrUnknown(data['amount'], _amountMeta));
    } else if (isInserting) {
      context.missing(_amountMeta);
    }
    if (data.containsKey('time')) {
      context.handle(
          _timeMeta, time.isAcceptableOrUnknown(data['time'], _timeMeta));
    } else if (isInserting) {
      context.missing(_timeMeta);
    }
    if (data.containsKey('description')) {
      context.handle(
          _descriptionMeta,
          description.isAcceptableOrUnknown(
              data['description'], _descriptionMeta));
    } else if (isInserting) {
      context.missing(_descriptionMeta);
    }
    return context;
  }

  @override
  Set<GeneratedColumn> get $primaryKey => {id};
  @override
  Expense map(Map<String, dynamic> data, {String tablePrefix}) {
    return Expense.fromData(data, _db,
        prefix: tablePrefix != null ? '$tablePrefix.' : null);
  }

  @override
  $ExpensesTable createAlias(String alias) {
    return $ExpensesTable(_db, alias);
  }
}

abstract class _$AppDatabase extends GeneratedDatabase {
  _$AppDatabase(QueryExecutor e) : super(SqlTypeSystem.defaultInstance, e);
  $ExpensesTable _expenses;
  $ExpensesTable get expenses => _expenses ??= $ExpensesTable(this);
  @override
  Iterable<TableInfo> get allTables => allSchemaEntities.whereType<TableInfo>();
  @override
  List<DatabaseSchemaEntity> get allSchemaEntities => [expenses];
}
