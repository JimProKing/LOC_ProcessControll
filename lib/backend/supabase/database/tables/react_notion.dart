import '../database.dart';

class ReactNotionTable extends SupabaseTable<ReactNotionRow> {
  @override
  String get tableName => 'react_Notion';

  @override
  ReactNotionRow createRow(Map<String, dynamic> data) => ReactNotionRow(data);
}

class ReactNotionRow extends SupabaseDataRow {
  ReactNotionRow(Map<String, dynamic> data) : super(data);

  @override
  SupabaseTable get table => ReactNotionTable();

  int get day => getField<int>('day')!;
  set day(int value) => setField<int>('day', value);

  String? get name => getField<String>('name');
  set name(String? value) => setField<String>('name', value);

  String? get link => getField<String>('link');
  set link(String? value) => setField<String>('link', value);
}
