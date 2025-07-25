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

class $AnnouncementsTable extends Announcements
    with TableInfo<$AnnouncementsTable, Announcement> {
  @override
  final GeneratedDatabase attachedDatabase;
  final String? _alias;
  $AnnouncementsTable(this.attachedDatabase, [this._alias]);
  static const VerificationMeta _idMeta = const VerificationMeta('id');
  @override
  late final GeneratedColumn<int> id = GeneratedColumn<int>(
      'id', aliasedName, false,
      type: DriftSqlType.int, requiredDuringInsert: false);
  static const VerificationMeta _titleMeta = const VerificationMeta('title');
  @override
  late final GeneratedColumn<String> title = GeneratedColumn<String>(
      'title', aliasedName, false,
      type: DriftSqlType.string, requiredDuringInsert: true);
  static const VerificationMeta _subtitleMeta =
      const VerificationMeta('subtitle');
  @override
  late final GeneratedColumn<String> subtitle = GeneratedColumn<String>(
      'sub_title', aliasedName, false,
      type: DriftSqlType.string, requiredDuringInsert: true);
  static const VerificationMeta _imageUrlMeta =
      const VerificationMeta('imageUrl');
  @override
  late final GeneratedColumn<String> imageUrl = GeneratedColumn<String>(
      'image_url', aliasedName, false,
      type: DriftSqlType.string, requiredDuringInsert: true);
  static const VerificationMeta _datetimeMeta =
      const VerificationMeta('datetime');
  @override
  late final GeneratedColumn<DateTime> datetime = GeneratedColumn<DateTime>(
      'datetime', aliasedName, false,
      type: DriftSqlType.dateTime, requiredDuringInsert: true);
  static const VerificationMeta _createdAtMeta =
      const VerificationMeta('createdAt');
  @override
  late final GeneratedColumn<DateTime> createdAt = GeneratedColumn<DateTime>(
      'created_at', aliasedName, false,
      type: DriftSqlType.dateTime, requiredDuringInsert: true);
  @override
  List<GeneratedColumn> get $columns =>
      [id, title, subtitle, imageUrl, datetime, createdAt];
  @override
  String get aliasedName => _alias ?? actualTableName;
  @override
  String get actualTableName => $name;
  static const String $name = 'announcements';
  @override
  VerificationContext validateIntegrity(Insertable<Announcement> instance,
      {bool isInserting = false}) {
    final context = VerificationContext();
    final data = instance.toColumns(true);
    if (data.containsKey('id')) {
      context.handle(_idMeta, id.isAcceptableOrUnknown(data['id']!, _idMeta));
    }
    if (data.containsKey('title')) {
      context.handle(
          _titleMeta, title.isAcceptableOrUnknown(data['title']!, _titleMeta));
    } else if (isInserting) {
      context.missing(_titleMeta);
    }
    if (data.containsKey('sub_title')) {
      context.handle(_subtitleMeta,
          subtitle.isAcceptableOrUnknown(data['sub_title']!, _subtitleMeta));
    } else if (isInserting) {
      context.missing(_subtitleMeta);
    }
    if (data.containsKey('image_url')) {
      context.handle(_imageUrlMeta,
          imageUrl.isAcceptableOrUnknown(data['image_url']!, _imageUrlMeta));
    } else if (isInserting) {
      context.missing(_imageUrlMeta);
    }
    if (data.containsKey('datetime')) {
      context.handle(_datetimeMeta,
          datetime.isAcceptableOrUnknown(data['datetime']!, _datetimeMeta));
    } else if (isInserting) {
      context.missing(_datetimeMeta);
    }
    if (data.containsKey('created_at')) {
      context.handle(_createdAtMeta,
          createdAt.isAcceptableOrUnknown(data['created_at']!, _createdAtMeta));
    } else if (isInserting) {
      context.missing(_createdAtMeta);
    }
    return context;
  }

  @override
  Set<GeneratedColumn> get $primaryKey => {id};
  @override
  Announcement map(Map<String, dynamic> data, {String? tablePrefix}) {
    final effectivePrefix = tablePrefix != null ? '$tablePrefix.' : '';
    return Announcement(
      id: attachedDatabase.typeMapping
          .read(DriftSqlType.int, data['${effectivePrefix}id'])!,
      title: attachedDatabase.typeMapping
          .read(DriftSqlType.string, data['${effectivePrefix}title'])!,
      subtitle: attachedDatabase.typeMapping
          .read(DriftSqlType.string, data['${effectivePrefix}sub_title'])!,
      imageUrl: attachedDatabase.typeMapping
          .read(DriftSqlType.string, data['${effectivePrefix}image_url'])!,
      datetime: attachedDatabase.typeMapping
          .read(DriftSqlType.dateTime, data['${effectivePrefix}datetime'])!,
      createdAt: attachedDatabase.typeMapping
          .read(DriftSqlType.dateTime, data['${effectivePrefix}created_at'])!,
    );
  }

  @override
  $AnnouncementsTable createAlias(String alias) {
    return $AnnouncementsTable(attachedDatabase, alias);
  }
}

class Announcement extends DataClass implements Insertable<Announcement> {
  final int id;
  final String title;
  final String subtitle;
  final String imageUrl;
  final DateTime datetime;
  final DateTime createdAt;
  const Announcement(
      {required this.id,
      required this.title,
      required this.subtitle,
      required this.imageUrl,
      required this.datetime,
      required this.createdAt});
  @override
  Map<String, Expression> toColumns(bool nullToAbsent) {
    final map = <String, Expression>{};
    map['id'] = Variable<int>(id);
    map['title'] = Variable<String>(title);
    map['sub_title'] = Variable<String>(subtitle);
    map['image_url'] = Variable<String>(imageUrl);
    map['datetime'] = Variable<DateTime>(datetime);
    map['created_at'] = Variable<DateTime>(createdAt);
    return map;
  }

  AnnouncementsCompanion toCompanion(bool nullToAbsent) {
    return AnnouncementsCompanion(
      id: Value(id),
      title: Value(title),
      subtitle: Value(subtitle),
      imageUrl: Value(imageUrl),
      datetime: Value(datetime),
      createdAt: Value(createdAt),
    );
  }

  factory Announcement.fromJson(Map<String, dynamic> json,
      {ValueSerializer? serializer}) {
    serializer ??= driftRuntimeOptions.defaultSerializer;
    return Announcement(
      id: serializer.fromJson<int>(json['id']),
      title: serializer.fromJson<String>(json['title']),
      subtitle: serializer.fromJson<String>(json['subtitle']),
      imageUrl: serializer.fromJson<String>(json['imageUrl']),
      datetime: serializer.fromJson<DateTime>(json['datetime']),
      createdAt: serializer.fromJson<DateTime>(json['createdAt']),
    );
  }
  @override
  Map<String, dynamic> toJson({ValueSerializer? serializer}) {
    serializer ??= driftRuntimeOptions.defaultSerializer;
    return <String, dynamic>{
      'id': serializer.toJson<int>(id),
      'title': serializer.toJson<String>(title),
      'subtitle': serializer.toJson<String>(subtitle),
      'imageUrl': serializer.toJson<String>(imageUrl),
      'datetime': serializer.toJson<DateTime>(datetime),
      'createdAt': serializer.toJson<DateTime>(createdAt),
    };
  }

  Announcement copyWith(
          {int? id,
          String? title,
          String? subtitle,
          String? imageUrl,
          DateTime? datetime,
          DateTime? createdAt}) =>
      Announcement(
        id: id ?? this.id,
        title: title ?? this.title,
        subtitle: subtitle ?? this.subtitle,
        imageUrl: imageUrl ?? this.imageUrl,
        datetime: datetime ?? this.datetime,
        createdAt: createdAt ?? this.createdAt,
      );
  Announcement copyWithCompanion(AnnouncementsCompanion data) {
    return Announcement(
      id: data.id.present ? data.id.value : this.id,
      title: data.title.present ? data.title.value : this.title,
      subtitle: data.subtitle.present ? data.subtitle.value : this.subtitle,
      imageUrl: data.imageUrl.present ? data.imageUrl.value : this.imageUrl,
      datetime: data.datetime.present ? data.datetime.value : this.datetime,
      createdAt: data.createdAt.present ? data.createdAt.value : this.createdAt,
    );
  }

  @override
  String toString() {
    return (StringBuffer('Announcement(')
          ..write('id: $id, ')
          ..write('title: $title, ')
          ..write('subtitle: $subtitle, ')
          ..write('imageUrl: $imageUrl, ')
          ..write('datetime: $datetime, ')
          ..write('createdAt: $createdAt')
          ..write(')'))
        .toString();
  }

  @override
  int get hashCode =>
      Object.hash(id, title, subtitle, imageUrl, datetime, createdAt);
  @override
  bool operator ==(Object other) =>
      identical(this, other) ||
      (other is Announcement &&
          other.id == this.id &&
          other.title == this.title &&
          other.subtitle == this.subtitle &&
          other.imageUrl == this.imageUrl &&
          other.datetime == this.datetime &&
          other.createdAt == this.createdAt);
}

class AnnouncementsCompanion extends UpdateCompanion<Announcement> {
  final Value<int> id;
  final Value<String> title;
  final Value<String> subtitle;
  final Value<String> imageUrl;
  final Value<DateTime> datetime;
  final Value<DateTime> createdAt;
  const AnnouncementsCompanion({
    this.id = const Value.absent(),
    this.title = const Value.absent(),
    this.subtitle = const Value.absent(),
    this.imageUrl = const Value.absent(),
    this.datetime = const Value.absent(),
    this.createdAt = const Value.absent(),
  });
  AnnouncementsCompanion.insert({
    this.id = const Value.absent(),
    required String title,
    required String subtitle,
    required String imageUrl,
    required DateTime datetime,
    required DateTime createdAt,
  })  : title = Value(title),
        subtitle = Value(subtitle),
        imageUrl = Value(imageUrl),
        datetime = Value(datetime),
        createdAt = Value(createdAt);
  static Insertable<Announcement> custom({
    Expression<int>? id,
    Expression<String>? title,
    Expression<String>? subtitle,
    Expression<String>? imageUrl,
    Expression<DateTime>? datetime,
    Expression<DateTime>? createdAt,
  }) {
    return RawValuesInsertable({
      if (id != null) 'id': id,
      if (title != null) 'title': title,
      if (subtitle != null) 'sub_title': subtitle,
      if (imageUrl != null) 'image_url': imageUrl,
      if (datetime != null) 'datetime': datetime,
      if (createdAt != null) 'created_at': createdAt,
    });
  }

  AnnouncementsCompanion copyWith(
      {Value<int>? id,
      Value<String>? title,
      Value<String>? subtitle,
      Value<String>? imageUrl,
      Value<DateTime>? datetime,
      Value<DateTime>? createdAt}) {
    return AnnouncementsCompanion(
      id: id ?? this.id,
      title: title ?? this.title,
      subtitle: subtitle ?? this.subtitle,
      imageUrl: imageUrl ?? this.imageUrl,
      datetime: datetime ?? this.datetime,
      createdAt: createdAt ?? this.createdAt,
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
    if (subtitle.present) {
      map['sub_title'] = Variable<String>(subtitle.value);
    }
    if (imageUrl.present) {
      map['image_url'] = Variable<String>(imageUrl.value);
    }
    if (datetime.present) {
      map['datetime'] = Variable<DateTime>(datetime.value);
    }
    if (createdAt.present) {
      map['created_at'] = Variable<DateTime>(createdAt.value);
    }
    return map;
  }

  @override
  String toString() {
    return (StringBuffer('AnnouncementsCompanion(')
          ..write('id: $id, ')
          ..write('title: $title, ')
          ..write('subtitle: $subtitle, ')
          ..write('imageUrl: $imageUrl, ')
          ..write('datetime: $datetime, ')
          ..write('createdAt: $createdAt')
          ..write(')'))
        .toString();
  }
}

abstract class _$AppDatabase extends GeneratedDatabase {
  _$AppDatabase(QueryExecutor e) : super(e);
  $AppDatabaseManager get managers => $AppDatabaseManager(this);
  late final $CardsDetailsTable cardsDetails = $CardsDetailsTable(this);
  late final $AnnouncementsTable announcements = $AnnouncementsTable(this);
  late final AnnouncementDao announcementDao =
      AnnouncementDao(this as AppDatabase);
  @override
  Iterable<TableInfo<Table, Object?>> get allTables =>
      allSchemaEntities.whereType<TableInfo<Table, Object?>>();
  @override
  List<DatabaseSchemaEntity> get allSchemaEntities =>
      [cardsDetails, announcements];
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
typedef $$AnnouncementsTableCreateCompanionBuilder = AnnouncementsCompanion
    Function({
  Value<int> id,
  required String title,
  required String subtitle,
  required String imageUrl,
  required DateTime datetime,
  required DateTime createdAt,
});
typedef $$AnnouncementsTableUpdateCompanionBuilder = AnnouncementsCompanion
    Function({
  Value<int> id,
  Value<String> title,
  Value<String> subtitle,
  Value<String> imageUrl,
  Value<DateTime> datetime,
  Value<DateTime> createdAt,
});

class $$AnnouncementsTableFilterComposer
    extends Composer<_$AppDatabase, $AnnouncementsTable> {
  $$AnnouncementsTableFilterComposer({
    required super.$db,
    required super.$table,
    super.joinBuilder,
    super.$addJoinBuilderToRootComposer,
    super.$removeJoinBuilderFromRootComposer,
  });
  ColumnFilters<int> get id => $composableBuilder(
      column: $table.id, builder: (column) => ColumnFilters(column));

  ColumnFilters<String> get title => $composableBuilder(
      column: $table.title, builder: (column) => ColumnFilters(column));

  ColumnFilters<String> get subtitle => $composableBuilder(
      column: $table.subtitle, builder: (column) => ColumnFilters(column));

  ColumnFilters<String> get imageUrl => $composableBuilder(
      column: $table.imageUrl, builder: (column) => ColumnFilters(column));

  ColumnFilters<DateTime> get datetime => $composableBuilder(
      column: $table.datetime, builder: (column) => ColumnFilters(column));

  ColumnFilters<DateTime> get createdAt => $composableBuilder(
      column: $table.createdAt, builder: (column) => ColumnFilters(column));
}

class $$AnnouncementsTableOrderingComposer
    extends Composer<_$AppDatabase, $AnnouncementsTable> {
  $$AnnouncementsTableOrderingComposer({
    required super.$db,
    required super.$table,
    super.joinBuilder,
    super.$addJoinBuilderToRootComposer,
    super.$removeJoinBuilderFromRootComposer,
  });
  ColumnOrderings<int> get id => $composableBuilder(
      column: $table.id, builder: (column) => ColumnOrderings(column));

  ColumnOrderings<String> get title => $composableBuilder(
      column: $table.title, builder: (column) => ColumnOrderings(column));

  ColumnOrderings<String> get subtitle => $composableBuilder(
      column: $table.subtitle, builder: (column) => ColumnOrderings(column));

  ColumnOrderings<String> get imageUrl => $composableBuilder(
      column: $table.imageUrl, builder: (column) => ColumnOrderings(column));

  ColumnOrderings<DateTime> get datetime => $composableBuilder(
      column: $table.datetime, builder: (column) => ColumnOrderings(column));

  ColumnOrderings<DateTime> get createdAt => $composableBuilder(
      column: $table.createdAt, builder: (column) => ColumnOrderings(column));
}

class $$AnnouncementsTableAnnotationComposer
    extends Composer<_$AppDatabase, $AnnouncementsTable> {
  $$AnnouncementsTableAnnotationComposer({
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

  GeneratedColumn<String> get subtitle =>
      $composableBuilder(column: $table.subtitle, builder: (column) => column);

  GeneratedColumn<String> get imageUrl =>
      $composableBuilder(column: $table.imageUrl, builder: (column) => column);

  GeneratedColumn<DateTime> get datetime =>
      $composableBuilder(column: $table.datetime, builder: (column) => column);

  GeneratedColumn<DateTime> get createdAt =>
      $composableBuilder(column: $table.createdAt, builder: (column) => column);
}

class $$AnnouncementsTableTableManager extends RootTableManager<
    _$AppDatabase,
    $AnnouncementsTable,
    Announcement,
    $$AnnouncementsTableFilterComposer,
    $$AnnouncementsTableOrderingComposer,
    $$AnnouncementsTableAnnotationComposer,
    $$AnnouncementsTableCreateCompanionBuilder,
    $$AnnouncementsTableUpdateCompanionBuilder,
    (
      Announcement,
      BaseReferences<_$AppDatabase, $AnnouncementsTable, Announcement>
    ),
    Announcement,
    PrefetchHooks Function()> {
  $$AnnouncementsTableTableManager(_$AppDatabase db, $AnnouncementsTable table)
      : super(TableManagerState(
          db: db,
          table: table,
          createFilteringComposer: () =>
              $$AnnouncementsTableFilterComposer($db: db, $table: table),
          createOrderingComposer: () =>
              $$AnnouncementsTableOrderingComposer($db: db, $table: table),
          createComputedFieldComposer: () =>
              $$AnnouncementsTableAnnotationComposer($db: db, $table: table),
          updateCompanionCallback: ({
            Value<int> id = const Value.absent(),
            Value<String> title = const Value.absent(),
            Value<String> subtitle = const Value.absent(),
            Value<String> imageUrl = const Value.absent(),
            Value<DateTime> datetime = const Value.absent(),
            Value<DateTime> createdAt = const Value.absent(),
          }) =>
              AnnouncementsCompanion(
            id: id,
            title: title,
            subtitle: subtitle,
            imageUrl: imageUrl,
            datetime: datetime,
            createdAt: createdAt,
          ),
          createCompanionCallback: ({
            Value<int> id = const Value.absent(),
            required String title,
            required String subtitle,
            required String imageUrl,
            required DateTime datetime,
            required DateTime createdAt,
          }) =>
              AnnouncementsCompanion.insert(
            id: id,
            title: title,
            subtitle: subtitle,
            imageUrl: imageUrl,
            datetime: datetime,
            createdAt: createdAt,
          ),
          withReferenceMapper: (p0) => p0
              .map((e) => (e.readTable(table), BaseReferences(db, table, e)))
              .toList(),
          prefetchHooksCallback: null,
        ));
}

typedef $$AnnouncementsTableProcessedTableManager = ProcessedTableManager<
    _$AppDatabase,
    $AnnouncementsTable,
    Announcement,
    $$AnnouncementsTableFilterComposer,
    $$AnnouncementsTableOrderingComposer,
    $$AnnouncementsTableAnnotationComposer,
    $$AnnouncementsTableCreateCompanionBuilder,
    $$AnnouncementsTableUpdateCompanionBuilder,
    (
      Announcement,
      BaseReferences<_$AppDatabase, $AnnouncementsTable, Announcement>
    ),
    Announcement,
    PrefetchHooks Function()>;

class $AppDatabaseManager {
  final _$AppDatabase _db;
  $AppDatabaseManager(this._db);
  $$CardsDetailsTableTableManager get cardsDetails =>
      $$CardsDetailsTableTableManager(_db, _db.cardsDetails);
  $$AnnouncementsTableTableManager get announcements =>
      $$AnnouncementsTableTableManager(_db, _db.announcements);
}
