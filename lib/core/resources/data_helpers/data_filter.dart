class DataFilter {
  const DataFilter({
    required this.column,
    this.operator = FilterOperator.eq,
    this.value,
  });

  final String column;

  ///  'eq', 'gt', 'lt', 'gte', 'lte', 'neq', 'like', 'ilike',
  /// 'is', 'in', 'cs', 'cd', 'sl', 'sr', 'nxl', 'nxr', 'adj',
  /// 'ov', 'fts', 'plfts', 'phfts', 'wfts'
  final FilterOperator operator;
  final dynamic value;
}

/// const Filter(column: 'name',operator: 'in',value: '("Mexico","Canada")) //in Array (içinde var mı)
/// const Filter(column: 'name',operator: 'like',value: '%anada%') //like (Büyük küçük harf duyarlı)
/// const Filter(column: 'name',operator: 'ilike',value: '%anada%') //ilike (Büyük küçük harf duyarlı değil)
///

enum FilterOperator {
  eq('eq'),
  gt('gt'),
  lt('lt'),
  gte('gte'),
  lte('lte'),
  neq('neq'),
  like('like'),
  ilike('ilike'),
  is_('is'),
  in_('in'),
  cs('cs'),
  cd('cd'),
  sl(''),
  sr(''),
  nxl(''),
  nxr(''),
  adj(''),
  ov(''),
  fts(''),
  plfts(''),
  phfts(''),
  wfts('');

  const FilterOperator(this.value);

  final String value;
}
