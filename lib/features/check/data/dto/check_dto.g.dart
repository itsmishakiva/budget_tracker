// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'check_dto.dart';

// **************************************************************************
// IsarCollectionGenerator
// **************************************************************************

// coverage:ignore-file
// ignore_for_file: duplicate_ignore, non_constant_identifier_names, constant_identifier_names, invalid_use_of_protected_member, unnecessary_cast, prefer_const_constructors, lines_longer_than_80_chars, require_trailing_commas, inference_failure_on_function_invocation, unnecessary_parenthesis, unnecessary_raw_strings, unnecessary_null_checks, join_return_with_assignment, prefer_final_locals, avoid_js_rounded_ints, avoid_positional_boolean_parameters, always_specify_types

extension GetCheckDTOCollection on Isar {
  IsarCollection<CheckDTO> get checkDTOs => this.collection();
}

const CheckDTOSchema = CollectionSchema(
  name: r'CheckDTO',
  id: 8874869588865728718,
  properties: {
    r'incomingSum': PropertySchema(
      id: 0,
      name: r'incomingSum',
      type: IsarType.double,
    ),
    r'outcomingSum': PropertySchema(
      id: 1,
      name: r'outcomingSum',
      type: IsarType.double,
    ),
    r'sum': PropertySchema(
      id: 2,
      name: r'sum',
      type: IsarType.double,
    )
  },
  estimateSize: _checkDTOEstimateSize,
  serialize: _checkDTOSerialize,
  deserialize: _checkDTODeserialize,
  deserializeProp: _checkDTODeserializeProp,
  idName: r'id',
  indexes: {},
  links: {},
  embeddedSchemas: {},
  getId: _checkDTOGetId,
  getLinks: _checkDTOGetLinks,
  attach: _checkDTOAttach,
  version: '3.1.0+1',
);

int _checkDTOEstimateSize(
  CheckDTO object,
  List<int> offsets,
  Map<Type, List<int>> allOffsets,
) {
  var bytesCount = offsets.last;
  return bytesCount;
}

void _checkDTOSerialize(
  CheckDTO object,
  IsarWriter writer,
  List<int> offsets,
  Map<Type, List<int>> allOffsets,
) {
  writer.writeDouble(offsets[0], object.incomingSum);
  writer.writeDouble(offsets[1], object.outcomingSum);
  writer.writeDouble(offsets[2], object.sum);
}

CheckDTO _checkDTODeserialize(
  Id id,
  IsarReader reader,
  List<int> offsets,
  Map<Type, List<int>> allOffsets,
) {
  final object = CheckDTO(
    id: id,
    incomingSum: reader.readDouble(offsets[0]),
    outcomingSum: reader.readDouble(offsets[1]),
    sum: reader.readDouble(offsets[2]),
  );
  return object;
}

P _checkDTODeserializeProp<P>(
  IsarReader reader,
  int propertyId,
  int offset,
  Map<Type, List<int>> allOffsets,
) {
  switch (propertyId) {
    case 0:
      return (reader.readDouble(offset)) as P;
    case 1:
      return (reader.readDouble(offset)) as P;
    case 2:
      return (reader.readDouble(offset)) as P;
    default:
      throw IsarError('Unknown property with id $propertyId');
  }
}

Id _checkDTOGetId(CheckDTO object) {
  return object.id;
}

List<IsarLinkBase<dynamic>> _checkDTOGetLinks(CheckDTO object) {
  return [];
}

void _checkDTOAttach(IsarCollection<dynamic> col, Id id, CheckDTO object) {}

extension CheckDTOQueryWhereSort on QueryBuilder<CheckDTO, CheckDTO, QWhere> {
  QueryBuilder<CheckDTO, CheckDTO, QAfterWhere> anyId() {
    return QueryBuilder.apply(this, (query) {
      return query.addWhereClause(const IdWhereClause.any());
    });
  }
}

extension CheckDTOQueryWhere on QueryBuilder<CheckDTO, CheckDTO, QWhereClause> {
  QueryBuilder<CheckDTO, CheckDTO, QAfterWhereClause> idEqualTo(Id id) {
    return QueryBuilder.apply(this, (query) {
      return query.addWhereClause(IdWhereClause.between(
        lower: id,
        upper: id,
      ));
    });
  }

  QueryBuilder<CheckDTO, CheckDTO, QAfterWhereClause> idNotEqualTo(Id id) {
    return QueryBuilder.apply(this, (query) {
      if (query.whereSort == Sort.asc) {
        return query
            .addWhereClause(
              IdWhereClause.lessThan(upper: id, includeUpper: false),
            )
            .addWhereClause(
              IdWhereClause.greaterThan(lower: id, includeLower: false),
            );
      } else {
        return query
            .addWhereClause(
              IdWhereClause.greaterThan(lower: id, includeLower: false),
            )
            .addWhereClause(
              IdWhereClause.lessThan(upper: id, includeUpper: false),
            );
      }
    });
  }

  QueryBuilder<CheckDTO, CheckDTO, QAfterWhereClause> idGreaterThan(Id id,
      {bool include = false}) {
    return QueryBuilder.apply(this, (query) {
      return query.addWhereClause(
        IdWhereClause.greaterThan(lower: id, includeLower: include),
      );
    });
  }

  QueryBuilder<CheckDTO, CheckDTO, QAfterWhereClause> idLessThan(Id id,
      {bool include = false}) {
    return QueryBuilder.apply(this, (query) {
      return query.addWhereClause(
        IdWhereClause.lessThan(upper: id, includeUpper: include),
      );
    });
  }

  QueryBuilder<CheckDTO, CheckDTO, QAfterWhereClause> idBetween(
    Id lowerId,
    Id upperId, {
    bool includeLower = true,
    bool includeUpper = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addWhereClause(IdWhereClause.between(
        lower: lowerId,
        includeLower: includeLower,
        upper: upperId,
        includeUpper: includeUpper,
      ));
    });
  }
}

extension CheckDTOQueryFilter
    on QueryBuilder<CheckDTO, CheckDTO, QFilterCondition> {
  QueryBuilder<CheckDTO, CheckDTO, QAfterFilterCondition> idEqualTo(Id value) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.equalTo(
        property: r'id',
        value: value,
      ));
    });
  }

  QueryBuilder<CheckDTO, CheckDTO, QAfterFilterCondition> idGreaterThan(
    Id value, {
    bool include = false,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.greaterThan(
        include: include,
        property: r'id',
        value: value,
      ));
    });
  }

  QueryBuilder<CheckDTO, CheckDTO, QAfterFilterCondition> idLessThan(
    Id value, {
    bool include = false,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.lessThan(
        include: include,
        property: r'id',
        value: value,
      ));
    });
  }

  QueryBuilder<CheckDTO, CheckDTO, QAfterFilterCondition> idBetween(
    Id lower,
    Id upper, {
    bool includeLower = true,
    bool includeUpper = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.between(
        property: r'id',
        lower: lower,
        includeLower: includeLower,
        upper: upper,
        includeUpper: includeUpper,
      ));
    });
  }

  QueryBuilder<CheckDTO, CheckDTO, QAfterFilterCondition> incomingSumEqualTo(
    double value, {
    double epsilon = Query.epsilon,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.equalTo(
        property: r'incomingSum',
        value: value,
        epsilon: epsilon,
      ));
    });
  }

  QueryBuilder<CheckDTO, CheckDTO, QAfterFilterCondition>
      incomingSumGreaterThan(
    double value, {
    bool include = false,
    double epsilon = Query.epsilon,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.greaterThan(
        include: include,
        property: r'incomingSum',
        value: value,
        epsilon: epsilon,
      ));
    });
  }

  QueryBuilder<CheckDTO, CheckDTO, QAfterFilterCondition> incomingSumLessThan(
    double value, {
    bool include = false,
    double epsilon = Query.epsilon,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.lessThan(
        include: include,
        property: r'incomingSum',
        value: value,
        epsilon: epsilon,
      ));
    });
  }

  QueryBuilder<CheckDTO, CheckDTO, QAfterFilterCondition> incomingSumBetween(
    double lower,
    double upper, {
    bool includeLower = true,
    bool includeUpper = true,
    double epsilon = Query.epsilon,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.between(
        property: r'incomingSum',
        lower: lower,
        includeLower: includeLower,
        upper: upper,
        includeUpper: includeUpper,
        epsilon: epsilon,
      ));
    });
  }

  QueryBuilder<CheckDTO, CheckDTO, QAfterFilterCondition> outcomingSumEqualTo(
    double value, {
    double epsilon = Query.epsilon,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.equalTo(
        property: r'outcomingSum',
        value: value,
        epsilon: epsilon,
      ));
    });
  }

  QueryBuilder<CheckDTO, CheckDTO, QAfterFilterCondition>
      outcomingSumGreaterThan(
    double value, {
    bool include = false,
    double epsilon = Query.epsilon,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.greaterThan(
        include: include,
        property: r'outcomingSum',
        value: value,
        epsilon: epsilon,
      ));
    });
  }

  QueryBuilder<CheckDTO, CheckDTO, QAfterFilterCondition> outcomingSumLessThan(
    double value, {
    bool include = false,
    double epsilon = Query.epsilon,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.lessThan(
        include: include,
        property: r'outcomingSum',
        value: value,
        epsilon: epsilon,
      ));
    });
  }

  QueryBuilder<CheckDTO, CheckDTO, QAfterFilterCondition> outcomingSumBetween(
    double lower,
    double upper, {
    bool includeLower = true,
    bool includeUpper = true,
    double epsilon = Query.epsilon,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.between(
        property: r'outcomingSum',
        lower: lower,
        includeLower: includeLower,
        upper: upper,
        includeUpper: includeUpper,
        epsilon: epsilon,
      ));
    });
  }

  QueryBuilder<CheckDTO, CheckDTO, QAfterFilterCondition> sumEqualTo(
    double value, {
    double epsilon = Query.epsilon,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.equalTo(
        property: r'sum',
        value: value,
        epsilon: epsilon,
      ));
    });
  }

  QueryBuilder<CheckDTO, CheckDTO, QAfterFilterCondition> sumGreaterThan(
    double value, {
    bool include = false,
    double epsilon = Query.epsilon,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.greaterThan(
        include: include,
        property: r'sum',
        value: value,
        epsilon: epsilon,
      ));
    });
  }

  QueryBuilder<CheckDTO, CheckDTO, QAfterFilterCondition> sumLessThan(
    double value, {
    bool include = false,
    double epsilon = Query.epsilon,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.lessThan(
        include: include,
        property: r'sum',
        value: value,
        epsilon: epsilon,
      ));
    });
  }

  QueryBuilder<CheckDTO, CheckDTO, QAfterFilterCondition> sumBetween(
    double lower,
    double upper, {
    bool includeLower = true,
    bool includeUpper = true,
    double epsilon = Query.epsilon,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.between(
        property: r'sum',
        lower: lower,
        includeLower: includeLower,
        upper: upper,
        includeUpper: includeUpper,
        epsilon: epsilon,
      ));
    });
  }
}

extension CheckDTOQueryObject
    on QueryBuilder<CheckDTO, CheckDTO, QFilterCondition> {}

extension CheckDTOQueryLinks
    on QueryBuilder<CheckDTO, CheckDTO, QFilterCondition> {}

extension CheckDTOQuerySortBy on QueryBuilder<CheckDTO, CheckDTO, QSortBy> {
  QueryBuilder<CheckDTO, CheckDTO, QAfterSortBy> sortByIncomingSum() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'incomingSum', Sort.asc);
    });
  }

  QueryBuilder<CheckDTO, CheckDTO, QAfterSortBy> sortByIncomingSumDesc() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'incomingSum', Sort.desc);
    });
  }

  QueryBuilder<CheckDTO, CheckDTO, QAfterSortBy> sortByOutcomingSum() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'outcomingSum', Sort.asc);
    });
  }

  QueryBuilder<CheckDTO, CheckDTO, QAfterSortBy> sortByOutcomingSumDesc() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'outcomingSum', Sort.desc);
    });
  }

  QueryBuilder<CheckDTO, CheckDTO, QAfterSortBy> sortBySum() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'sum', Sort.asc);
    });
  }

  QueryBuilder<CheckDTO, CheckDTO, QAfterSortBy> sortBySumDesc() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'sum', Sort.desc);
    });
  }
}

extension CheckDTOQuerySortThenBy
    on QueryBuilder<CheckDTO, CheckDTO, QSortThenBy> {
  QueryBuilder<CheckDTO, CheckDTO, QAfterSortBy> thenById() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'id', Sort.asc);
    });
  }

  QueryBuilder<CheckDTO, CheckDTO, QAfterSortBy> thenByIdDesc() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'id', Sort.desc);
    });
  }

  QueryBuilder<CheckDTO, CheckDTO, QAfterSortBy> thenByIncomingSum() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'incomingSum', Sort.asc);
    });
  }

  QueryBuilder<CheckDTO, CheckDTO, QAfterSortBy> thenByIncomingSumDesc() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'incomingSum', Sort.desc);
    });
  }

  QueryBuilder<CheckDTO, CheckDTO, QAfterSortBy> thenByOutcomingSum() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'outcomingSum', Sort.asc);
    });
  }

  QueryBuilder<CheckDTO, CheckDTO, QAfterSortBy> thenByOutcomingSumDesc() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'outcomingSum', Sort.desc);
    });
  }

  QueryBuilder<CheckDTO, CheckDTO, QAfterSortBy> thenBySum() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'sum', Sort.asc);
    });
  }

  QueryBuilder<CheckDTO, CheckDTO, QAfterSortBy> thenBySumDesc() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'sum', Sort.desc);
    });
  }
}

extension CheckDTOQueryWhereDistinct
    on QueryBuilder<CheckDTO, CheckDTO, QDistinct> {
  QueryBuilder<CheckDTO, CheckDTO, QDistinct> distinctByIncomingSum() {
    return QueryBuilder.apply(this, (query) {
      return query.addDistinctBy(r'incomingSum');
    });
  }

  QueryBuilder<CheckDTO, CheckDTO, QDistinct> distinctByOutcomingSum() {
    return QueryBuilder.apply(this, (query) {
      return query.addDistinctBy(r'outcomingSum');
    });
  }

  QueryBuilder<CheckDTO, CheckDTO, QDistinct> distinctBySum() {
    return QueryBuilder.apply(this, (query) {
      return query.addDistinctBy(r'sum');
    });
  }
}

extension CheckDTOQueryProperty
    on QueryBuilder<CheckDTO, CheckDTO, QQueryProperty> {
  QueryBuilder<CheckDTO, int, QQueryOperations> idProperty() {
    return QueryBuilder.apply(this, (query) {
      return query.addPropertyName(r'id');
    });
  }

  QueryBuilder<CheckDTO, double, QQueryOperations> incomingSumProperty() {
    return QueryBuilder.apply(this, (query) {
      return query.addPropertyName(r'incomingSum');
    });
  }

  QueryBuilder<CheckDTO, double, QQueryOperations> outcomingSumProperty() {
    return QueryBuilder.apply(this, (query) {
      return query.addPropertyName(r'outcomingSum');
    });
  }

  QueryBuilder<CheckDTO, double, QQueryOperations> sumProperty() {
    return QueryBuilder.apply(this, (query) {
      return query.addPropertyName(r'sum');
    });
  }
}

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

CheckDTO _$CheckDTOFromJson(Map<String, dynamic> json) => CheckDTO(
      id: json['id'] as int? ?? Isar.autoIncrement,
      sum: (json['sum'] as num).toDouble(),
      outcomingSum: (json['outcomingSum'] as num).toDouble(),
      incomingSum: (json['incomingSum'] as num).toDouble(),
    );

Map<String, dynamic> _$CheckDTOToJson(CheckDTO instance) => <String, dynamic>{
      'id': instance.id,
      'sum': instance.sum,
      'outcomingSum': instance.outcomingSum,
      'incomingSum': instance.incomingSum,
    };
