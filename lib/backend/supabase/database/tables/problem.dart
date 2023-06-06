import '../database.dart';

class ProblemTable extends SupabaseTable<ProblemRow> {
  @override
  String get tableName => 'Problem';

  @override
  ProblemRow createRow(Map<String, dynamic> data) => ProblemRow(data);
}

class ProblemRow extends SupabaseDataRow {
  ProblemRow(Map<String, dynamic> data) : super(data);

  @override
  SupabaseTable get table => ProblemTable();

  int? get day => getField<int>('day');
  set day(int? value) => setField<int>('day', value);

  int get no => getField<int>('No')!;
  set no(int value) => setField<int>('No', value);

  String? get content => getField<String>('Content');
  set content(String? value) => setField<String>('Content', value);

  String? get answer => getField<String>('Answer');
  set answer(String? value) => setField<String>('Answer', value);

  String? get etc => getField<String>('etc');
  set etc(String? value) => setField<String>('etc', value);
}
