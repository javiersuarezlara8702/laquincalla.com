import '../database.dart';

class GestoresTable extends SupabaseTable<GestoresRow> {
  @override
  String get tableName => 'gestores';

  @override
  GestoresRow createRow(Map<String, dynamic> data) => GestoresRow(data);
}

class GestoresRow extends SupabaseDataRow {
  GestoresRow(Map<String, dynamic> data) : super(data);

  @override
  SupabaseTable get table => GestoresTable();

  int get id => getField<int>('id')!;
  set id(int value) => setField<int>('id', value);

  DateTime get createdAt => getField<DateTime>('created_at')!;
  set createdAt(DateTime value) => setField<DateTime>('created_at', value);

  String? get name => getField<String>('name');
  set name(String? value) => setField<String>('name', value);

  String? get address => getField<String>('address');
  set address(String? value) => setField<String>('address', value);

  int? get phone => getField<int>('phone');
  set phone(int? value) => setField<int>('phone', value);

  String? get email => getField<String>('email');
  set email(String? value) => setField<String>('email', value);

  String? get userId => getField<String>('user_id');
  set userId(String? value) => setField<String>('user_id', value);

  String? get taxtotal => getField<String>('taxtotal');
  set taxtotal(String? value) => setField<String>('taxtotal', value);

  String? get rol => getField<String>('rol');
  set rol(String? value) => setField<String>('rol', value);

  int? get ranking => getField<int>('ranking');
  set ranking(int? value) => setField<int>('ranking', value);
}
