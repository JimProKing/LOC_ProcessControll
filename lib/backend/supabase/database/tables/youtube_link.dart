import '../database.dart';

class YoutubeLinkTable extends SupabaseTable<YoutubeLinkRow> {
  @override
  String get tableName => 'youtubeLink';

  @override
  YoutubeLinkRow createRow(Map<String, dynamic> data) => YoutubeLinkRow(data);
}

class YoutubeLinkRow extends SupabaseDataRow {
  YoutubeLinkRow(Map<String, dynamic> data) : super(data);

  @override
  SupabaseTable get table => YoutubeLinkTable();

  int get title => getField<int>('title')!;
  set title(int value) => setField<int>('title', value);

  String? get link => getField<String>('link');
  set link(String? value) => setField<String>('link', value);
}
