// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'app_database.dart';

// ignore_for_file: type=lint
class $CardsDetailsTable extends CardsDetails
    with TableInfo<$CardsDetailsTable, CardsDetail> {
  @override
  final GeneratedDatabase attachedDatabase;
  final String? _alias;
  $CardsDetailsTable(this.attachedDatabase, [this._alias]);
  static const VerificationMeta _idMeta = const VerificationMeta('id');
  @override
  late final GeneratedColumn<int> id = GeneratedColumn<int>(
      'id', aliasedName, false,
      hasAutoIncrement: true,
      type: DriftSqlType.int,
      requiredDuringInsert: false,
      defaultConstraints:
          GeneratedColumn.constraintIsAlways('PRIMARY KEY AUTOINCREMENT'));
  static const VerificationMeta _cardHolderNameMeta =
      const VerificationMeta('cardHolderName');
  @override
  late final GeneratedColumn<String> cardHolderName = GeneratedColumn<String>(
      'card_holder_name', aliasedName, false,
      type: DriftSqlType.string, requiredDuringInsert: true);
  static const VerificationMeta _cardNumberMeta =
      const VerificationMeta('cardNumber');
  @override
  late final GeneratedColumn<String> cardNumber = GeneratedColumn<String>(
      'card_number', aliasedName, false,
      type: DriftSqlType.string, requiredDuringInsert: true);
  static const VerificationMeta _expiryDateMeta =
      const VerificationMeta('expiryDate');
  @override
  late final GeneratedColumn<String> expiryDate = GeneratedColumn<String>(
      'expiry_date', aliasedName, false,
      type: DriftSqlType.string, requiredDuringInsert: true);
  @override
  late final GeneratedColumnWithTypeConverter<CardType, String> cardType =
      GeneratedColumn<String>('card_type', aliasedName, false,
              type: DriftSqlType.string, requiredDuringInsert: true)
          .withConverter<CardType>($CardsDetailsTable.$convertercardType);
  @override
  late final GeneratedColumnWithTypeConverter<CardDesignType, String>
      cardDesignType = GeneratedColumn<String>(
              'card_design_type', aliasedName, false,
              type: DriftSqlType.string, requiredDuringInsert: true)
          .withConverter<CardDesignType>(
              $CardsDetailsTable.$convertercardDesignType);
  static const VerificationMeta _isDefaultMeta =
      const VerificationMeta('isDefault');
  @override
  late final GeneratedColumn<bool> isDefault = GeneratedColumn<bool>(
      'is_default', aliasedName, false,
      type: DriftSqlType.bool,
      requiredDuringInsert: false,
      defaultConstraints:
          GeneratedColumn.constraintIsAlways('CHECK ("is_default" IN (0, 1))'),
      defaultValue: const Constant(false));
  @override
  List<GeneratedColumn> get $columns => [
        id,
        cardHolderName,
        cardNumber,
        expiryDate,
        cardType,
        cardDesignType,
        isDefault
      ];
  @override
  String get aliasedName => _alias ?? actualTableName;
  @override
  String get actualTableName => $name;
  static const String $name = 'cards_details';
  @override
  VerificationContext validateIntegrity(Insertable<CardsDetail> instance,
      {bool isInserting = false}) {
    final context = VerificationContext();
    final data = instance.toColumns(true);
    if (data.containsKey('id')) {
      context.handle(_idMeta, id.isAcceptableOrUnknown(data['id']!, _idMeta));
    }
    if (data.containsKey('card_holder_name')) {
      context.handle(
          _cardHolderNameMeta,
          cardHolderName.isAcceptableOrUnknown(
              data['card_holder_name']!, _cardHolderNameMeta));
    } else if (isInserting) {
      context.missing(_cardHolderNameMeta);
    }
    if (data.containsKey('card_number')) {
      context.handle(
          _cardNumberMeta,
          cardNumber.isAcceptableOrUnknown(
              data['card_number']!, _cardNumberMeta));
    } else if (isInserting) {
      context.missing(_cardNumberMeta);
    }
    if (data.containsKey('expiry_date')) {
      context.handle(
          _expiryDateMeta,
          expiryDate.isAcceptableOrUnknown(
              data['expiry_date']!, _expiryDateMeta));
    } else if (isInserting) {
      context.missing(_expiryDateMeta);
    }
    if (data.containsKey('is_default')) {
      context.handle(_isDefaultMeta,
          isDefault.isAcceptableOrUnknown(data['is_default']!, _isDefaultMeta));
    }
    return context;
  }

  @override
  Set<GeneratedColumn> get $primaryKey => {id};
  @override
  CardsDetail map(Map<String, dynamic> data, {String? tablePrefix}) {
    final effectivePrefix = tablePrefix != null ? '$tablePrefix.' : '';
    return CardsDetail(
      id: attachedDatabase.typeMapping
          .read(DriftSqlType.int, data['${effectivePrefix}id'])!,
      cardHolderName: attachedDatabase.typeMapping.read(
          DriftSqlType.string, data['${effectivePrefix}card_holder_name'])!,
      cardNumber: attachedDatabase.typeMapping
          .read(DriftSqlType.string, data['${effectivePrefix}card_number'])!,
      expiryDate: attachedDatabase.typeMapping
          .read(DriftSqlType.string, data['${effectivePrefix}expiry_date'])!,
      cardType: $CardsDetailsTable.$convertercardType.fromSql(attachedDatabase
          .typeMapping
          .read(DriftSqlType.string, data['${effectivePrefix}card_type'])!),
      cardDesignType: $CardsDetailsTable.$convertercardDesignType.fromSql(
          attachedDatabase.typeMapping.read(DriftSqlType.string,
              data['${effectivePrefix}card_design_type'])!),
      isDefault: attachedDatabase.typeMapping
          .read(DriftSqlType.bool, data['${effectivePrefix}is_default'])!,
    );
  }

  @override
  $CardsDetailsTable createAlias(String alias) {
    return $CardsDetailsTable(attachedDatabase, alias);
  }

  static TypeConverter<CardType, String> $convertercardType =
      const CardTypeConverter();
  static TypeConverter<CardDesignType, String> $convertercardDesignType =
      const CardDesignTypeConverter();
}

class CardsDetail extends DataClass implements Insertable<CardsDetail> {
  final int id;
  final String cardHolderName;
  final String cardNumber;
  final String expiryDate;
  final CardType cardType;
  final CardDesignType cardDesignType;
  final bool isDefault;
  const CardsDetail(
      {required this.id,
      required this.cardHolderName,
      required this.cardNumber,
      required this.expiryDate,
      required this.cardType,
      required this.cardDesignType,
      required this.isDefault});
  @override
  Map<String, Expression> toColumns(bool nullToAbsent) {
    final map = <String, Expression>{};
    map['id'] = Variable<int>(id);
    map['card_holder_name'] = Variable<String>(cardHolderName);
    map['card_number'] = Variable<String>(cardNumber);
    map['expiry_date'] = Variable<String>(expiryDate);
    {
      map['card_type'] = Variable<String>(
          $CardsDetailsTable.$convertercardType.toSql(cardType));
    }
    {
      map['card_design_type'] = Variable<String>(
          $CardsDetailsTable.$convertercardDesignType.toSql(cardDesignType));
    }
    map['is_default'] = Variable<bool>(isDefault);
    return map;
  }

  CardsDetailsCompanion toCompanion(bool nullToAbsent) {
    return CardsDetailsCompanion(
      id: Value(id),
      cardHolderName: Value(cardHolderName),
      cardNumber: Value(cardNumber),
      expiryDate: Value(expiryDate),
      cardType: Value(cardType),
      cardDesignType: Value(cardDesignType),
      isDefault: Value(isDefault),
    );
  }

  factory CardsDetail.fromJson(Map<String, dynamic> json,
      {ValueSerializer? serializer}) {
    serializer ??= driftRuntimeOptions.defaultSerializer;
    return CardsDetail(
      id: serializer.fromJson<int>(json['id']),
      cardHolderName: serializer.fromJson<String>(json['cardHolderName']),
      cardNumber: serializer.fromJson<String>(json['cardNumber']),
      expiryDate: serializer.fromJson<String>(json['expiryDate']),
      cardType: serializer.fromJson<CardType>(json['cardType']),
      cardDesignType:
          serializer.fromJson<CardDesignType>(json['cardDesignType']),
      isDefault: serializer.fromJson<bool>(json['isDefault']),
    );
  }
  @override
  Map<String, dynamic> toJson({ValueSerializer? serializer}) {
    serializer ??= driftRuntimeOptions.defaultSerializer;
    return <String, dynamic>{
      'id': serializer.toJson<int>(id),
      'cardHolderName': serializer.toJson<String>(cardHolderName),
      'cardNumber': serializer.toJson<String>(cardNumber),
      'expiryDate': serializer.toJson<String>(expiryDate),
      'cardType': serializer.toJson<CardType>(cardType),
      'cardDesignType': serializer.toJson<CardDesignType>(cardDesignType),
      'isDefault': serializer.toJson<bool>(isDefault),
    };
  }

  CardsDetail copyWith(
          {int? id,
          String? cardHolderName,
          String? cardNumber,
          String? expiryDate,
          CardType? cardType,
          CardDesignType? cardDesignType,
          bool? isDefault}) =>
      CardsDetail(
        id: id ?? this.id,
        cardHolderName: cardHolderName ?? this.cardHolderName,
        cardNumber: cardNumber ?? this.cardNumber,
        expiryDate: expiryDate ?? this.expiryDate,
        cardType: cardType ?? this.cardType,
        cardDesignType: cardDesignType ?? this.cardDesignType,
        isDefault: isDefault ?? this.isDefault,
      );
  CardsDetail copyWithCompanion(CardsDetailsCompanion data) {
    return CardsDetail(
      id: data.id.present ? data.id.value : this.id,
      cardHolderName: data.cardHolderName.present
          ? data.cardHolderName.value
          : this.cardHolderName,
      cardNumber:
          data.cardNumber.present ? data.cardNumber.value : this.cardNumber,
      expiryDate:
          data.expiryDate.present ? data.expiryDate.value : this.expiryDate,
      cardType: data.cardType.present ? data.cardType.value : this.cardType,
      cardDesignType: data.cardDesignType.present
          ? data.cardDesignType.value
          : this.cardDesignType,
      isDefault: data.isDefault.present ? data.isDefault.value : this.isDefault,
    );
  }

  @override
  String toString() {
    return (StringBuffer('CardsDetail(')
          ..write('id: $id, ')
          ..write('cardHolderName: $cardHolderName, ')
          ..write('cardNumber: $cardNumber, ')
          ..write('expiryDate: $expiryDate, ')
          ..write('cardType: $cardType, ')
          ..write('cardDesignType: $cardDesignType, ')
          ..write('isDefault: $isDefault')
          ..write(')'))
        .toString();
  }

  @override
  int get hashCode => Object.hash(id, cardHolderName, cardNumber, expiryDate,
      cardType, cardDesignType, isDefault);
  @override
  bool operator ==(Object other) =>
      identical(this, other) ||
      (other is CardsDetail &&
          other.id == this.id &&
          other.cardHolderName == this.cardHolderName &&
          other.cardNumber == this.cardNumber &&
          other.expiryDate == this.expiryDate &&
          other.cardType == this.cardType &&
          other.cardDesignType == this.cardDesignType &&
          other.isDefault == this.isDefault);
}

class CardsDetailsCompanion extends UpdateCompanion<CardsDetail> {
  final Value<int> id;
  final Value<String> cardHolderName;
  final Value<String> cardNumber;
  final Value<String> expiryDate;
  final Value<CardType> cardType;
  final Value<CardDesignType> cardDesignType;
  final Value<bool> isDefault;
  const CardsDetailsCompanion({
    this.id = const Value.absent(),
    this.cardHolderName = const Value.absent(),
    this.cardNumber = const Value.absent(),
    this.expiryDate = const Value.absent(),
    this.cardType = const Value.absent(),
    this.cardDesignType = const Value.absent(),
    this.isDefault = const Value.absent(),
  });
  CardsDetailsCompanion.insert({
    this.id = const Value.absent(),
    required String cardHolderName,
    required String cardNumber,
    required String expiryDate,
    required CardType cardType,
    required CardDesignType cardDesignType,
    this.isDefault = const Value.absent(),
  })  : cardHolderName = Value(cardHolderName),
        cardNumber = Value(cardNumber),
        expiryDate = Value(expiryDate),
        cardType = Value(cardType),
        cardDesignType = Value(cardDesignType);
  static Insertable<CardsDetail> custom({
    Expression<int>? id,
    Expression<String>? cardHolderName,
    Expression<String>? cardNumber,
    Expression<String>? expiryDate,
    Expression<String>? cardType,
    Expression<String>? cardDesignType,
    Expression<bool>? isDefault,
  }) {
    return RawValuesInsertable({
      if (id != null) 'id': id,
      if (cardHolderName != null) 'card_holder_name': cardHolderName,
      if (cardNumber != null) 'card_number': cardNumber,
      if (expiryDate != null) 'expiry_date': expiryDate,
      if (cardType != null) 'card_type': cardType,
      if (cardDesignType != null) 'card_design_type': cardDesignType,
      if (isDefault != null) 'is_default': isDefault,
    });
  }

  CardsDetailsCompanion copyWith(
      {Value<int>? id,
      Value<String>? cardHolderName,
      Value<String>? cardNumber,
      Value<String>? expiryDate,
      Value<CardType>? cardType,
      Value<CardDesignType>? cardDesignType,
      Value<bool>? isDefault}) {
    return CardsDetailsCompanion(
      id: id ?? this.id,
      cardHolderName: cardHolderName ?? this.cardHolderName,
      cardNumber: cardNumber ?? this.cardNumber,
      expiryDate: expiryDate ?? this.expiryDate,
      cardType: cardType ?? this.cardType,
      cardDesignType: cardDesignType ?? this.cardDesignType,
      isDefault: isDefault ?? this.isDefault,
    );
  }

  @override
  Map<String, Expression> toColumns(bool nullToAbsent) {
    final map = <String, Expression>{};
    if (id.present) {
      map['id'] = Variable<int>(id.value);
    }
    if (cardHolderName.present) {
      map['card_holder_name'] = Variable<String>(cardHolderName.value);
    }
    if (cardNumber.present) {
      map['card_number'] = Variable<String>(cardNumber.value);
    }
    if (expiryDate.present) {
      map['expiry_date'] = Variable<String>(expiryDate.value);
    }
    if (cardType.present) {
      map['card_type'] = Variable<String>(
          $CardsDetailsTable.$convertercardType.toSql(cardType.value));
    }
    if (cardDesignType.present) {
      map['card_design_type'] = Variable<String>($CardsDetailsTable
          .$convertercardDesignType
          .toSql(cardDesignType.value));
    }
    if (isDefault.present) {
      map['is_default'] = Variable<bool>(isDefault.value);
    }
    return map;
  }

  @override
  String toString() {
    return (StringBuffer('CardsDetailsCompanion(')
          ..write('id: $id, ')
          ..write('cardHolderName: $cardHolderName, ')
          ..write('cardNumber: $cardNumber, ')
          ..write('expiryDate: $expiryDate, ')
          ..write('cardType: $cardType, ')
          ..write('cardDesignType: $cardDesignType, ')
          ..write('isDefault: $isDefault')
          ..write(')'))
        .toString();
  }
}

abstract class _$AppDatabase extends GeneratedDatabase {
  _$AppDatabase(QueryExecutor e) : super(e);
  $AppDatabaseManager get managers => $AppDatabaseManager(this);
  late final $CardsDetailsTable cardsDetails = $CardsDetailsTable(this);
  @override
  Iterable<TableInfo<Table, Object?>> get allTables =>
      allSchemaEntities.whereType<TableInfo<Table, Object?>>();
  @override
  List<DatabaseSchemaEntity> get allSchemaEntities => [cardsDetails];
}

typedef $$CardsDetailsTableCreateCompanionBuilder = CardsDetailsCompanion
    Function({
  Value<int> id,
  required String cardHolderName,
  required String cardNumber,
  required String expiryDate,
  required CardType cardType,
  required CardDesignType cardDesignType,
  Value<bool> isDefault,
});
typedef $$CardsDetailsTableUpdateCompanionBuilder = CardsDetailsCompanion
    Function({
  Value<int> id,
  Value<String> cardHolderName,
  Value<String> cardNumber,
  Value<String> expiryDate,
  Value<CardType> cardType,
  Value<CardDesignType> cardDesignType,
  Value<bool> isDefault,
});

class $$CardsDetailsTableFilterComposer
    extends Composer<_$AppDatabase, $CardsDetailsTable> {
  $$CardsDetailsTableFilterComposer({
    required super.$db,
    required super.$table,
    super.joinBuilder,
    super.$addJoinBuilderToRootComposer,
    super.$removeJoinBuilderFromRootComposer,
  });
  ColumnFilters<int> get id => $composableBuilder(
      column: $table.id, builder: (column) => ColumnFilters(column));

  ColumnFilters<String> get cardHolderName => $composableBuilder(
      column: $table.cardHolderName,
      builder: (column) => ColumnFilters(column));

  ColumnFilters<String> get cardNumber => $composableBuilder(
      column: $table.cardNumber, builder: (column) => ColumnFilters(column));

  ColumnFilters<String> get expiryDate => $composableBuilder(
      column: $table.expiryDate, builder: (column) => ColumnFilters(column));

  ColumnWithTypeConverterFilters<CardType, CardType, String> get cardType =>
      $composableBuilder(
          column: $table.cardType,
          builder: (column) => ColumnWithTypeConverterFilters(column));

  ColumnWithTypeConverterFilters<CardDesignType, CardDesignType, String>
      get cardDesignType => $composableBuilder(
          column: $table.cardDesignType,
          builder: (column) => ColumnWithTypeConverterFilters(column));

  ColumnFilters<bool> get isDefault => $composableBuilder(
      column: $table.isDefault, builder: (column) => ColumnFilters(column));
}

class $$CardsDetailsTableOrderingComposer
    extends Composer<_$AppDatabase, $CardsDetailsTable> {
  $$CardsDetailsTableOrderingComposer({
    required super.$db,
    required super.$table,
    super.joinBuilder,
    super.$addJoinBuilderToRootComposer,
    super.$removeJoinBuilderFromRootComposer,
  });
  ColumnOrderings<int> get id => $composableBuilder(
      column: $table.id, builder: (column) => ColumnOrderings(column));

  ColumnOrderings<String> get cardHolderName => $composableBuilder(
      column: $table.cardHolderName,
      builder: (column) => ColumnOrderings(column));

  ColumnOrderings<String> get cardNumber => $composableBuilder(
      column: $table.cardNumber, builder: (column) => ColumnOrderings(column));

  ColumnOrderings<String> get expiryDate => $composableBuilder(
      column: $table.expiryDate, builder: (column) => ColumnOrderings(column));

  ColumnOrderings<String> get cardType => $composableBuilder(
      column: $table.cardType, builder: (column) => ColumnOrderings(column));

  ColumnOrderings<String> get cardDesignType => $composableBuilder(
      column: $table.cardDesignType,
      builder: (column) => ColumnOrderings(column));

  ColumnOrderings<bool> get isDefault => $composableBuilder(
      column: $table.isDefault, builder: (column) => ColumnOrderings(column));
}

class $$CardsDetailsTableAnnotationComposer
    extends Composer<_$AppDatabase, $CardsDetailsTable> {
  $$CardsDetailsTableAnnotationComposer({
    required super.$db,
    required super.$table,
    super.joinBuilder,
    super.$addJoinBuilderToRootComposer,
    super.$removeJoinBuilderFromRootComposer,
  });
  GeneratedColumn<int> get id =>
      $composableBuilder(column: $table.id, builder: (column) => column);

  GeneratedColumn<String> get cardHolderName => $composableBuilder(
      column: $table.cardHolderName, builder: (column) => column);

  GeneratedColumn<String> get cardNumber => $composableBuilder(
      column: $table.cardNumber, builder: (column) => column);

  GeneratedColumn<String> get expiryDate => $composableBuilder(
      column: $table.expiryDate, builder: (column) => column);

  GeneratedColumnWithTypeConverter<CardType, String> get cardType =>
      $composableBuilder(column: $table.cardType, builder: (column) => column);

  GeneratedColumnWithTypeConverter<CardDesignType, String> get cardDesignType =>
      $composableBuilder(
          column: $table.cardDesignType, builder: (column) => column);

  GeneratedColumn<bool> get isDefault =>
      $composableBuilder(column: $table.isDefault, builder: (column) => column);
}

class $$CardsDetailsTableTableManager extends RootTableManager<
    _$AppDatabase,
    $CardsDetailsTable,
    CardsDetail,
    $$CardsDetailsTableFilterComposer,
    $$CardsDetailsTableOrderingComposer,
    $$CardsDetailsTableAnnotationComposer,
    $$CardsDetailsTableCreateCompanionBuilder,
    $$CardsDetailsTableUpdateCompanionBuilder,
    (
      CardsDetail,
      BaseReferences<_$AppDatabase, $CardsDetailsTable, CardsDetail>
    ),
    CardsDetail,
    PrefetchHooks Function()> {
  $$CardsDetailsTableTableManager(_$AppDatabase db, $CardsDetailsTable table)
      : super(TableManagerState(
          db: db,
          table: table,
          createFilteringComposer: () =>
              $$CardsDetailsTableFilterComposer($db: db, $table: table),
          createOrderingComposer: () =>
              $$CardsDetailsTableOrderingComposer($db: db, $table: table),
          createComputedFieldComposer: () =>
              $$CardsDetailsTableAnnotationComposer($db: db, $table: table),
          updateCompanionCallback: ({
            Value<int> id = const Value.absent(),
            Value<String> cardHolderName = const Value.absent(),
            Value<String> cardNumber = const Value.absent(),
            Value<String> expiryDate = const Value.absent(),
            Value<CardType> cardType = const Value.absent(),
            Value<CardDesignType> cardDesignType = const Value.absent(),
            Value<bool> isDefault = const Value.absent(),
          }) =>
              CardsDetailsCompanion(
            id: id,
            cardHolderName: cardHolderName,
            cardNumber: cardNumber,
            expiryDate: expiryDate,
            cardType: cardType,
            cardDesignType: cardDesignType,
            isDefault: isDefault,
          ),
          createCompanionCallback: ({
            Value<int> id = const Value.absent(),
            required String cardHolderName,
            required String cardNumber,
            required String expiryDate,
            required CardType cardType,
            required CardDesignType cardDesignType,
            Value<bool> isDefault = const Value.absent(),
          }) =>
              CardsDetailsCompanion.insert(
            id: id,
            cardHolderName: cardHolderName,
            cardNumber: cardNumber,
            expiryDate: expiryDate,
            cardType: cardType,
            cardDesignType: cardDesignType,
            isDefault: isDefault,
          ),
          withReferenceMapper: (p0) => p0
              .map((e) => (e.readTable(table), BaseReferences(db, table, e)))
              .toList(),
          prefetchHooksCallback: null,
        ));
}

typedef $$CardsDetailsTableProcessedTableManager = ProcessedTableManager<
    _$AppDatabase,
    $CardsDetailsTable,
    CardsDetail,
    $$CardsDetailsTableFilterComposer,
    $$CardsDetailsTableOrderingComposer,
    $$CardsDetailsTableAnnotationComposer,
    $$CardsDetailsTableCreateCompanionBuilder,
    $$CardsDetailsTableUpdateCompanionBuilder,
    (
      CardsDetail,
      BaseReferences<_$AppDatabase, $CardsDetailsTable, CardsDetail>
    ),
    CardsDetail,
    PrefetchHooks Function()>;

class $AppDatabaseManager {
  final _$AppDatabase _db;
  $AppDatabaseManager(this._db);
  $$CardsDetailsTableTableManager get cardsDetails =>
      $$CardsDetailsTableTableManager(_db, _db.cardsDetails);
}
