import '../database.dart';

class BolsaDeEmpleoTable extends SupabaseTable<BolsaDeEmpleoRow> {
  @override
  String get tableName => 'bolsa_de_empleo';

  @override
  BolsaDeEmpleoRow createRow(Map<String, dynamic> data) =>
      BolsaDeEmpleoRow(data);
}

class BolsaDeEmpleoRow extends SupabaseDataRow {
  BolsaDeEmpleoRow(Map<String, dynamic> data) : super(data);

  @override
  SupabaseTable get table => BolsaDeEmpleoTable();

  int get id => getField<int>('id')!;
  set id(int value) => setField<int>('id', value);

  DateTime get createdAt => getField<DateTime>('created_at')!;
  set createdAt(DateTime value) => setField<DateTime>('created_at', value);

  String? get name => getField<String>('name');
  set name(String? value) => setField<String>('name', value);

  String? get lastname => getField<String>('lastname');
  set lastname(String? value) => setField<String>('lastname', value);

  int? get phone => getField<int>('phone');
  set phone(int? value) => setField<int>('phone', value);

  String? get aspiration => getField<String>('aspiration');
  set aspiration(String? value) => setField<String>('aspiration', value);

  String? get especiality => getField<String>('especiality');
  set especiality(String? value) => setField<String>('especiality', value);

  String? get certifications => getField<String>('certifications');
  set certifications(String? value) =>
      setField<String>('certifications', value);

  int? get idealSlary => getField<int>('ideal_slary');
  set idealSlary(int? value) => setField<int>('ideal_slary', value);

  String? get workPlace => getField<String>('work_place');
  set workPlace(String? value) => setField<String>('work_place', value);

  String? get rol => getField<String>('Rol');
  set rol(String? value) => setField<String>('Rol', value);

  String? get status => getField<String>('status');
  set status(String? value) => setField<String>('status', value);

  String? get adress => getField<String>('Adress');
  set adress(String? value) => setField<String>('Adress', value);

  String? get userId => getField<String>('user_id');
  set userId(String? value) => setField<String>('user_id', value);

  String? get email => getField<String>('email');
  set email(String? value) => setField<String>('email', value);

  String? get photuoUrl => getField<String>('photuo_url');
  set photuoUrl(String? value) => setField<String>('photuo_url', value);

  int? get age => getField<int>('age');
  set age(int? value) => setField<int>('age', value);
}
