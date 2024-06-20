import '../database.dart';

class CategoryTable extends SupabaseTable<CategoryRow> {
  @override
  String get tableName => 'category';

  @override
  CategoryRow createRow(Map<String, dynamic> data) => CategoryRow(data);
}

class CategoryRow extends SupabaseDataRow {
  CategoryRow(Map<String, dynamic> data) : super(data);

  @override
  SupabaseTable get table => CategoryTable();

  int get id => getField<int>('id')!;
  set id(int value) => setField<int>('id', value);

  DateTime get createdAt => getField<DateTime>('created_at')!;
  set createdAt(DateTime value) => setField<DateTime>('created_at', value);

  String? get name => getField<String>('name ');
  set name(String? value) => setField<String>('name ', value);

  String? get description => getField<String>('description ');
  set description(String? value) => setField<String>('description ', value);

  String? get photoUrl => getField<String>('photo_url ');
  set photoUrl(String? value) => setField<String>('photo_url ', value);

  int? get quantyOfItems => getField<int>('quanty of items ');
  set quantyOfItems(int? value) => setField<int>('quanty of items ', value);
}
