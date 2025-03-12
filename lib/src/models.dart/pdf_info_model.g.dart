// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'pdf_info_model.dart';

// **************************************************************************
// IsarCollectionGenerator
// **************************************************************************

// coverage:ignore-file
// ignore_for_file: duplicate_ignore, non_constant_identifier_names, constant_identifier_names, invalid_use_of_protected_member, unnecessary_cast, prefer_const_constructors, lines_longer_than_80_chars, require_trailing_commas, inference_failure_on_function_invocation, unnecessary_parenthesis, unnecessary_raw_strings, unnecessary_null_checks, join_return_with_assignment, prefer_final_locals, avoid_js_rounded_ints, avoid_positional_boolean_parameters, always_specify_types

extension GetPdfInfoModelCollection on Isar {
  IsarCollection<PdfInfoModel> get pdfInfoModels => this.collection();
}

const PdfInfoModelSchema = CollectionSchema(
  name: r'PdfInfoModel',
  id: -6140352324547113126,
  properties: {
    r'dateTime': PropertySchema(
      id: 0,
      name: r'dateTime',
      type: IsarType.dateTime,
    ),
    r'pdfId': PropertySchema(
      id: 1,
      name: r'pdfId',
      type: IsarType.string,
    ),
    r'pdfName': PropertySchema(
      id: 2,
      name: r'pdfName',
      type: IsarType.string,
    ),
    r'pdfPath': PropertySchema(
      id: 3,
      name: r'pdfPath',
      type: IsarType.string,
    )
  },
  estimateSize: _pdfInfoModelEstimateSize,
  serialize: _pdfInfoModelSerialize,
  deserialize: _pdfInfoModelDeserialize,
  deserializeProp: _pdfInfoModelDeserializeProp,
  idName: r'id',
  indexes: {},
  links: {},
  embeddedSchemas: {},
  getId: _pdfInfoModelGetId,
  getLinks: _pdfInfoModelGetLinks,
  attach: _pdfInfoModelAttach,
  version: '3.1.0+1',
);

int _pdfInfoModelEstimateSize(
  PdfInfoModel object,
  List<int> offsets,
  Map<Type, List<int>> allOffsets,
) {
  var bytesCount = offsets.last;
  {
    final value = object.pdfId;
    if (value != null) {
      bytesCount += 3 + value.length * 3;
    }
  }
  {
    final value = object.pdfName;
    if (value != null) {
      bytesCount += 3 + value.length * 3;
    }
  }
  {
    final value = object.pdfPath;
    if (value != null) {
      bytesCount += 3 + value.length * 3;
    }
  }
  return bytesCount;
}

void _pdfInfoModelSerialize(
  PdfInfoModel object,
  IsarWriter writer,
  List<int> offsets,
  Map<Type, List<int>> allOffsets,
) {
  writer.writeDateTime(offsets[0], object.dateTime);
  writer.writeString(offsets[1], object.pdfId);
  writer.writeString(offsets[2], object.pdfName);
  writer.writeString(offsets[3], object.pdfPath);
}

PdfInfoModel _pdfInfoModelDeserialize(
  Id id,
  IsarReader reader,
  List<int> offsets,
  Map<Type, List<int>> allOffsets,
) {
  final object = PdfInfoModel(
    dateTime: reader.readDateTimeOrNull(offsets[0]),
    pdfId: reader.readStringOrNull(offsets[1]),
    pdfName: reader.readStringOrNull(offsets[2]),
    pdfPath: reader.readStringOrNull(offsets[3]),
  );
  object.id = id;
  return object;
}

P _pdfInfoModelDeserializeProp<P>(
  IsarReader reader,
  int propertyId,
  int offset,
  Map<Type, List<int>> allOffsets,
) {
  switch (propertyId) {
    case 0:
      return (reader.readDateTimeOrNull(offset)) as P;
    case 1:
      return (reader.readStringOrNull(offset)) as P;
    case 2:
      return (reader.readStringOrNull(offset)) as P;
    case 3:
      return (reader.readStringOrNull(offset)) as P;
    default:
      throw IsarError('Unknown property with id $propertyId');
  }
}

Id _pdfInfoModelGetId(PdfInfoModel object) {
  return object.id ?? Isar.autoIncrement;
}

List<IsarLinkBase<dynamic>> _pdfInfoModelGetLinks(PdfInfoModel object) {
  return [];
}

void _pdfInfoModelAttach(
    IsarCollection<dynamic> col, Id id, PdfInfoModel object) {
  object.id = id;
}

extension PdfInfoModelQueryWhereSort
    on QueryBuilder<PdfInfoModel, PdfInfoModel, QWhere> {
  QueryBuilder<PdfInfoModel, PdfInfoModel, QAfterWhere> anyId() {
    return QueryBuilder.apply(this, (query) {
      return query.addWhereClause(const IdWhereClause.any());
    });
  }
}

extension PdfInfoModelQueryWhere
    on QueryBuilder<PdfInfoModel, PdfInfoModel, QWhereClause> {
  QueryBuilder<PdfInfoModel, PdfInfoModel, QAfterWhereClause> idEqualTo(Id id) {
    return QueryBuilder.apply(this, (query) {
      return query.addWhereClause(IdWhereClause.between(
        lower: id,
        upper: id,
      ));
    });
  }

  QueryBuilder<PdfInfoModel, PdfInfoModel, QAfterWhereClause> idNotEqualTo(
      Id id) {
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

  QueryBuilder<PdfInfoModel, PdfInfoModel, QAfterWhereClause> idGreaterThan(
      Id id,
      {bool include = false}) {
    return QueryBuilder.apply(this, (query) {
      return query.addWhereClause(
        IdWhereClause.greaterThan(lower: id, includeLower: include),
      );
    });
  }

  QueryBuilder<PdfInfoModel, PdfInfoModel, QAfterWhereClause> idLessThan(Id id,
      {bool include = false}) {
    return QueryBuilder.apply(this, (query) {
      return query.addWhereClause(
        IdWhereClause.lessThan(upper: id, includeUpper: include),
      );
    });
  }

  QueryBuilder<PdfInfoModel, PdfInfoModel, QAfterWhereClause> idBetween(
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

extension PdfInfoModelQueryFilter
    on QueryBuilder<PdfInfoModel, PdfInfoModel, QFilterCondition> {
  QueryBuilder<PdfInfoModel, PdfInfoModel, QAfterFilterCondition>
      dateTimeIsNull() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(const FilterCondition.isNull(
        property: r'dateTime',
      ));
    });
  }

  QueryBuilder<PdfInfoModel, PdfInfoModel, QAfterFilterCondition>
      dateTimeIsNotNull() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(const FilterCondition.isNotNull(
        property: r'dateTime',
      ));
    });
  }

  QueryBuilder<PdfInfoModel, PdfInfoModel, QAfterFilterCondition>
      dateTimeEqualTo(DateTime? value) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.equalTo(
        property: r'dateTime',
        value: value,
      ));
    });
  }

  QueryBuilder<PdfInfoModel, PdfInfoModel, QAfterFilterCondition>
      dateTimeGreaterThan(
    DateTime? value, {
    bool include = false,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.greaterThan(
        include: include,
        property: r'dateTime',
        value: value,
      ));
    });
  }

  QueryBuilder<PdfInfoModel, PdfInfoModel, QAfterFilterCondition>
      dateTimeLessThan(
    DateTime? value, {
    bool include = false,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.lessThan(
        include: include,
        property: r'dateTime',
        value: value,
      ));
    });
  }

  QueryBuilder<PdfInfoModel, PdfInfoModel, QAfterFilterCondition>
      dateTimeBetween(
    DateTime? lower,
    DateTime? upper, {
    bool includeLower = true,
    bool includeUpper = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.between(
        property: r'dateTime',
        lower: lower,
        includeLower: includeLower,
        upper: upper,
        includeUpper: includeUpper,
      ));
    });
  }

  QueryBuilder<PdfInfoModel, PdfInfoModel, QAfterFilterCondition> idIsNull() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(const FilterCondition.isNull(
        property: r'id',
      ));
    });
  }

  QueryBuilder<PdfInfoModel, PdfInfoModel, QAfterFilterCondition>
      idIsNotNull() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(const FilterCondition.isNotNull(
        property: r'id',
      ));
    });
  }

  QueryBuilder<PdfInfoModel, PdfInfoModel, QAfterFilterCondition> idEqualTo(
      Id? value) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.equalTo(
        property: r'id',
        value: value,
      ));
    });
  }

  QueryBuilder<PdfInfoModel, PdfInfoModel, QAfterFilterCondition> idGreaterThan(
    Id? value, {
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

  QueryBuilder<PdfInfoModel, PdfInfoModel, QAfterFilterCondition> idLessThan(
    Id? value, {
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

  QueryBuilder<PdfInfoModel, PdfInfoModel, QAfterFilterCondition> idBetween(
    Id? lower,
    Id? upper, {
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

  QueryBuilder<PdfInfoModel, PdfInfoModel, QAfterFilterCondition>
      pdfIdIsNull() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(const FilterCondition.isNull(
        property: r'pdfId',
      ));
    });
  }

  QueryBuilder<PdfInfoModel, PdfInfoModel, QAfterFilterCondition>
      pdfIdIsNotNull() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(const FilterCondition.isNotNull(
        property: r'pdfId',
      ));
    });
  }

  QueryBuilder<PdfInfoModel, PdfInfoModel, QAfterFilterCondition> pdfIdEqualTo(
    String? value, {
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.equalTo(
        property: r'pdfId',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<PdfInfoModel, PdfInfoModel, QAfterFilterCondition>
      pdfIdGreaterThan(
    String? value, {
    bool include = false,
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.greaterThan(
        include: include,
        property: r'pdfId',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<PdfInfoModel, PdfInfoModel, QAfterFilterCondition> pdfIdLessThan(
    String? value, {
    bool include = false,
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.lessThan(
        include: include,
        property: r'pdfId',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<PdfInfoModel, PdfInfoModel, QAfterFilterCondition> pdfIdBetween(
    String? lower,
    String? upper, {
    bool includeLower = true,
    bool includeUpper = true,
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.between(
        property: r'pdfId',
        lower: lower,
        includeLower: includeLower,
        upper: upper,
        includeUpper: includeUpper,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<PdfInfoModel, PdfInfoModel, QAfterFilterCondition>
      pdfIdStartsWith(
    String value, {
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.startsWith(
        property: r'pdfId',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<PdfInfoModel, PdfInfoModel, QAfterFilterCondition> pdfIdEndsWith(
    String value, {
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.endsWith(
        property: r'pdfId',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<PdfInfoModel, PdfInfoModel, QAfterFilterCondition> pdfIdContains(
      String value,
      {bool caseSensitive = true}) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.contains(
        property: r'pdfId',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<PdfInfoModel, PdfInfoModel, QAfterFilterCondition> pdfIdMatches(
      String pattern,
      {bool caseSensitive = true}) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.matches(
        property: r'pdfId',
        wildcard: pattern,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<PdfInfoModel, PdfInfoModel, QAfterFilterCondition>
      pdfIdIsEmpty() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.equalTo(
        property: r'pdfId',
        value: '',
      ));
    });
  }

  QueryBuilder<PdfInfoModel, PdfInfoModel, QAfterFilterCondition>
      pdfIdIsNotEmpty() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.greaterThan(
        property: r'pdfId',
        value: '',
      ));
    });
  }

  QueryBuilder<PdfInfoModel, PdfInfoModel, QAfterFilterCondition>
      pdfNameIsNull() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(const FilterCondition.isNull(
        property: r'pdfName',
      ));
    });
  }

  QueryBuilder<PdfInfoModel, PdfInfoModel, QAfterFilterCondition>
      pdfNameIsNotNull() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(const FilterCondition.isNotNull(
        property: r'pdfName',
      ));
    });
  }

  QueryBuilder<PdfInfoModel, PdfInfoModel, QAfterFilterCondition>
      pdfNameEqualTo(
    String? value, {
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.equalTo(
        property: r'pdfName',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<PdfInfoModel, PdfInfoModel, QAfterFilterCondition>
      pdfNameGreaterThan(
    String? value, {
    bool include = false,
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.greaterThan(
        include: include,
        property: r'pdfName',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<PdfInfoModel, PdfInfoModel, QAfterFilterCondition>
      pdfNameLessThan(
    String? value, {
    bool include = false,
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.lessThan(
        include: include,
        property: r'pdfName',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<PdfInfoModel, PdfInfoModel, QAfterFilterCondition>
      pdfNameBetween(
    String? lower,
    String? upper, {
    bool includeLower = true,
    bool includeUpper = true,
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.between(
        property: r'pdfName',
        lower: lower,
        includeLower: includeLower,
        upper: upper,
        includeUpper: includeUpper,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<PdfInfoModel, PdfInfoModel, QAfterFilterCondition>
      pdfNameStartsWith(
    String value, {
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.startsWith(
        property: r'pdfName',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<PdfInfoModel, PdfInfoModel, QAfterFilterCondition>
      pdfNameEndsWith(
    String value, {
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.endsWith(
        property: r'pdfName',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<PdfInfoModel, PdfInfoModel, QAfterFilterCondition>
      pdfNameContains(String value, {bool caseSensitive = true}) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.contains(
        property: r'pdfName',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<PdfInfoModel, PdfInfoModel, QAfterFilterCondition>
      pdfNameMatches(String pattern, {bool caseSensitive = true}) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.matches(
        property: r'pdfName',
        wildcard: pattern,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<PdfInfoModel, PdfInfoModel, QAfterFilterCondition>
      pdfNameIsEmpty() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.equalTo(
        property: r'pdfName',
        value: '',
      ));
    });
  }

  QueryBuilder<PdfInfoModel, PdfInfoModel, QAfterFilterCondition>
      pdfNameIsNotEmpty() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.greaterThan(
        property: r'pdfName',
        value: '',
      ));
    });
  }

  QueryBuilder<PdfInfoModel, PdfInfoModel, QAfterFilterCondition>
      pdfPathIsNull() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(const FilterCondition.isNull(
        property: r'pdfPath',
      ));
    });
  }

  QueryBuilder<PdfInfoModel, PdfInfoModel, QAfterFilterCondition>
      pdfPathIsNotNull() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(const FilterCondition.isNotNull(
        property: r'pdfPath',
      ));
    });
  }

  QueryBuilder<PdfInfoModel, PdfInfoModel, QAfterFilterCondition>
      pdfPathEqualTo(
    String? value, {
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.equalTo(
        property: r'pdfPath',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<PdfInfoModel, PdfInfoModel, QAfterFilterCondition>
      pdfPathGreaterThan(
    String? value, {
    bool include = false,
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.greaterThan(
        include: include,
        property: r'pdfPath',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<PdfInfoModel, PdfInfoModel, QAfterFilterCondition>
      pdfPathLessThan(
    String? value, {
    bool include = false,
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.lessThan(
        include: include,
        property: r'pdfPath',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<PdfInfoModel, PdfInfoModel, QAfterFilterCondition>
      pdfPathBetween(
    String? lower,
    String? upper, {
    bool includeLower = true,
    bool includeUpper = true,
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.between(
        property: r'pdfPath',
        lower: lower,
        includeLower: includeLower,
        upper: upper,
        includeUpper: includeUpper,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<PdfInfoModel, PdfInfoModel, QAfterFilterCondition>
      pdfPathStartsWith(
    String value, {
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.startsWith(
        property: r'pdfPath',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<PdfInfoModel, PdfInfoModel, QAfterFilterCondition>
      pdfPathEndsWith(
    String value, {
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.endsWith(
        property: r'pdfPath',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<PdfInfoModel, PdfInfoModel, QAfterFilterCondition>
      pdfPathContains(String value, {bool caseSensitive = true}) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.contains(
        property: r'pdfPath',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<PdfInfoModel, PdfInfoModel, QAfterFilterCondition>
      pdfPathMatches(String pattern, {bool caseSensitive = true}) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.matches(
        property: r'pdfPath',
        wildcard: pattern,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<PdfInfoModel, PdfInfoModel, QAfterFilterCondition>
      pdfPathIsEmpty() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.equalTo(
        property: r'pdfPath',
        value: '',
      ));
    });
  }

  QueryBuilder<PdfInfoModel, PdfInfoModel, QAfterFilterCondition>
      pdfPathIsNotEmpty() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.greaterThan(
        property: r'pdfPath',
        value: '',
      ));
    });
  }
}

extension PdfInfoModelQueryObject
    on QueryBuilder<PdfInfoModel, PdfInfoModel, QFilterCondition> {}

extension PdfInfoModelQueryLinks
    on QueryBuilder<PdfInfoModel, PdfInfoModel, QFilterCondition> {}

extension PdfInfoModelQuerySortBy
    on QueryBuilder<PdfInfoModel, PdfInfoModel, QSortBy> {
  QueryBuilder<PdfInfoModel, PdfInfoModel, QAfterSortBy> sortByDateTime() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'dateTime', Sort.asc);
    });
  }

  QueryBuilder<PdfInfoModel, PdfInfoModel, QAfterSortBy> sortByDateTimeDesc() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'dateTime', Sort.desc);
    });
  }

  QueryBuilder<PdfInfoModel, PdfInfoModel, QAfterSortBy> sortByPdfId() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'pdfId', Sort.asc);
    });
  }

  QueryBuilder<PdfInfoModel, PdfInfoModel, QAfterSortBy> sortByPdfIdDesc() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'pdfId', Sort.desc);
    });
  }

  QueryBuilder<PdfInfoModel, PdfInfoModel, QAfterSortBy> sortByPdfName() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'pdfName', Sort.asc);
    });
  }

  QueryBuilder<PdfInfoModel, PdfInfoModel, QAfterSortBy> sortByPdfNameDesc() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'pdfName', Sort.desc);
    });
  }

  QueryBuilder<PdfInfoModel, PdfInfoModel, QAfterSortBy> sortByPdfPath() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'pdfPath', Sort.asc);
    });
  }

  QueryBuilder<PdfInfoModel, PdfInfoModel, QAfterSortBy> sortByPdfPathDesc() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'pdfPath', Sort.desc);
    });
  }
}

extension PdfInfoModelQuerySortThenBy
    on QueryBuilder<PdfInfoModel, PdfInfoModel, QSortThenBy> {
  QueryBuilder<PdfInfoModel, PdfInfoModel, QAfterSortBy> thenByDateTime() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'dateTime', Sort.asc);
    });
  }

  QueryBuilder<PdfInfoModel, PdfInfoModel, QAfterSortBy> thenByDateTimeDesc() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'dateTime', Sort.desc);
    });
  }

  QueryBuilder<PdfInfoModel, PdfInfoModel, QAfterSortBy> thenById() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'id', Sort.asc);
    });
  }

  QueryBuilder<PdfInfoModel, PdfInfoModel, QAfterSortBy> thenByIdDesc() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'id', Sort.desc);
    });
  }

  QueryBuilder<PdfInfoModel, PdfInfoModel, QAfterSortBy> thenByPdfId() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'pdfId', Sort.asc);
    });
  }

  QueryBuilder<PdfInfoModel, PdfInfoModel, QAfterSortBy> thenByPdfIdDesc() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'pdfId', Sort.desc);
    });
  }

  QueryBuilder<PdfInfoModel, PdfInfoModel, QAfterSortBy> thenByPdfName() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'pdfName', Sort.asc);
    });
  }

  QueryBuilder<PdfInfoModel, PdfInfoModel, QAfterSortBy> thenByPdfNameDesc() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'pdfName', Sort.desc);
    });
  }

  QueryBuilder<PdfInfoModel, PdfInfoModel, QAfterSortBy> thenByPdfPath() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'pdfPath', Sort.asc);
    });
  }

  QueryBuilder<PdfInfoModel, PdfInfoModel, QAfterSortBy> thenByPdfPathDesc() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'pdfPath', Sort.desc);
    });
  }
}

extension PdfInfoModelQueryWhereDistinct
    on QueryBuilder<PdfInfoModel, PdfInfoModel, QDistinct> {
  QueryBuilder<PdfInfoModel, PdfInfoModel, QDistinct> distinctByDateTime() {
    return QueryBuilder.apply(this, (query) {
      return query.addDistinctBy(r'dateTime');
    });
  }

  QueryBuilder<PdfInfoModel, PdfInfoModel, QDistinct> distinctByPdfId(
      {bool caseSensitive = true}) {
    return QueryBuilder.apply(this, (query) {
      return query.addDistinctBy(r'pdfId', caseSensitive: caseSensitive);
    });
  }

  QueryBuilder<PdfInfoModel, PdfInfoModel, QDistinct> distinctByPdfName(
      {bool caseSensitive = true}) {
    return QueryBuilder.apply(this, (query) {
      return query.addDistinctBy(r'pdfName', caseSensitive: caseSensitive);
    });
  }

  QueryBuilder<PdfInfoModel, PdfInfoModel, QDistinct> distinctByPdfPath(
      {bool caseSensitive = true}) {
    return QueryBuilder.apply(this, (query) {
      return query.addDistinctBy(r'pdfPath', caseSensitive: caseSensitive);
    });
  }
}

extension PdfInfoModelQueryProperty
    on QueryBuilder<PdfInfoModel, PdfInfoModel, QQueryProperty> {
  QueryBuilder<PdfInfoModel, int, QQueryOperations> idProperty() {
    return QueryBuilder.apply(this, (query) {
      return query.addPropertyName(r'id');
    });
  }

  QueryBuilder<PdfInfoModel, DateTime?, QQueryOperations> dateTimeProperty() {
    return QueryBuilder.apply(this, (query) {
      return query.addPropertyName(r'dateTime');
    });
  }

  QueryBuilder<PdfInfoModel, String?, QQueryOperations> pdfIdProperty() {
    return QueryBuilder.apply(this, (query) {
      return query.addPropertyName(r'pdfId');
    });
  }

  QueryBuilder<PdfInfoModel, String?, QQueryOperations> pdfNameProperty() {
    return QueryBuilder.apply(this, (query) {
      return query.addPropertyName(r'pdfName');
    });
  }

  QueryBuilder<PdfInfoModel, String?, QQueryOperations> pdfPathProperty() {
    return QueryBuilder.apply(this, (query) {
      return query.addPropertyName(r'pdfPath');
    });
  }
}
