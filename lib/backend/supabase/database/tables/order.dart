import '../database.dart';

class OrderTable extends SupabaseTable<OrderRow> {
  @override
  String get tableName => 'order';

  @override
  OrderRow createRow(Map<String, dynamic> data) => OrderRow(data);
}

class OrderRow extends SupabaseDataRow {
  OrderRow(Map<String, dynamic> data) : super(data);

  @override
  SupabaseTable get table => OrderTable();

  int get id => getField<int>('id')!;
  set id(int value) => setField<int>('id', value);

  DateTime get createdAt => getField<DateTime>('created_at')!;
  set createdAt(DateTime value) => setField<DateTime>('created_at', value);

  String? get status => getField<String>('status');
  set status(String? value) => setField<String>('status', value);

  dynamic? get lineItems => getField<dynamic>('line_items');
  set lineItems(dynamic? value) => setField<dynamic>('line_items', value);

  String? get address1 => getField<String>('address_1');
  set address1(String? value) => setField<String>('address_1', value);

  String? get phone => getField<String>('phone');
  set phone(String? value) => setField<String>('phone', value);

  String? get firstName => getField<String>('first_name');
  set firstName(String? value) => setField<String>('first_name', value);

  String? get lastName => getField<String>('last_name');
  set lastName(String? value) => setField<String>('last_name', value);

  String? get shippingCity => getField<String>('shipping_city');
  set shippingCity(String? value) => setField<String>('shipping_city', value);

  String? get shippingTotal => getField<String>('shipping_total');
  set shippingTotal(String? value) => setField<String>('shipping_total', value);

  String? get total => getField<String>('total');
  set total(String? value) => setField<String>('total', value);

  String? get userId => getField<String>('user_id');
  set userId(String? value) => setField<String>('user_id', value);

  String? get orderNote => getField<String>('order_note');
  set orderNote(String? value) => setField<String>('order_note', value);
}
