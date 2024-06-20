import 'dart:convert';
import 'dart:typed_data';
import 'package:flutter/foundation.dart';

import '/flutter_flow/flutter_flow_util.dart';
import 'api_manager.dart';

export 'api_manager.dart' show ApiCallResponse;

const _kPrivateApiFunctionName = 'ffPrivateApiCall';

/// Start Products Group Code

class ProductsGroup {
  static String getBaseUrl() => 'https://jiksgqisqqkspbvqrggk.supabase.co';
  static Map<String, String> headers = {};
  static ListAllProductsCall listAllProductsCall = ListAllProductsCall();
  static RetrieveAProductCall retrieveAProductCall = RetrieveAProductCall();
  static CreateAProductCall createAProductCall = CreateAProductCall();
  static UpdateAProductCall updateAProductCall = UpdateAProductCall();
  static DeleteAProductCall deleteAProductCall = DeleteAProductCall();
}

class ListAllProductsCall {
  Future<ApiCallResponse> call({
    String? category = '',
    String? id = '',
  }) async {
    final baseUrl = ProductsGroup.getBaseUrl();

    return ApiManager.instance.makeApiCall(
      callName: 'List all products',
      apiUrl: '${baseUrl}/rest/v1/Products?select=*',
      callType: ApiCallType.GET,
      headers: {
        'apikey':
            'eyJhbGciOiJIUzI1NiIsInR5cCI6IkpXVCJ9.eyJpc3MiOiJzdXBhYmFzZSIsInJlZiI6Imppa3NncWlzcXFrc3BidnFyZ2drIiwicm9sZSI6InNlcnZpY2Vfcm9sZSIsImlhdCI6MTcwODgxMjUyMSwiZXhwIjoyMDI0Mzg4NTIxfQ.eii7xhYWDYJ6dISthyT5Gz652I1FmKwZNtCa3TiC-bY',
        'Authorization':
            'Bearer eyJhbGciOiJIUzI1NiIsInR5cCI6IkpXVCJ9.eyJpc3MiOiJzdXBhYmFzZSIsInJlZiI6Imppa3NncWlzcXFrc3BidnFyZ2drIiwicm9sZSI6InNlcnZpY2Vfcm9sZSIsImlhdCI6MTcwODgxMjUyMSwiZXhwIjoyMDI0Mzg4NTIxfQ.eii7xhYWDYJ6dISthyT5Gz652I1FmKwZNtCa3TiC-bY',
      },
      params: {
        'id': id,
      },
      returnBody: true,
      encodeBodyUtf8: false,
      decodeUtf8: false,
      cache: false,
      isStreamingApi: false,
      alwaysAllowBody: false,
    );
  }

  List<String>? photourl(dynamic response) => (getJsonField(
        response,
        r'''$[:].photo_url''',
        true,
      ) as List?)
          ?.withoutNulls
          .map((x) => castToType<String>(x))
          .withoutNulls
          .toList();
  List<String>? name(dynamic response) => (getJsonField(
        response,
        r'''$[:].name''',
        true,
      ) as List?)
          ?.withoutNulls
          .map((x) => castToType<String>(x))
          .withoutNulls
          .toList();
  List<int>? price(dynamic response) => (getJsonField(
        response,
        r'''$[:].price''',
        true,
      ) as List?)
          ?.withoutNulls
          .map((x) => castToType<int>(x))
          .withoutNulls
          .toList();
  List<String>? description(dynamic response) => (getJsonField(
        response,
        r'''$[:].description''',
        true,
      ) as List?)
          ?.withoutNulls
          .map((x) => castToType<String>(x))
          .withoutNulls
          .toList();
  List<String>? category(dynamic response) => (getJsonField(
        response,
        r'''$[:].category''',
        true,
      ) as List?)
          ?.withoutNulls
          .map((x) => castToType<String>(x))
          .withoutNulls
          .toList();
  List<int>? quanty(dynamic response) => (getJsonField(
        response,
        r'''$[:].quanty''',
        true,
      ) as List?)
          ?.withoutNulls
          .map((x) => castToType<int>(x))
          .withoutNulls
          .toList();
  List<int>? id(dynamic response) => (getJsonField(
        response,
        r'''$[:].id''',
        true,
      ) as List?)
          ?.withoutNulls
          .map((x) => castToType<int>(x))
          .withoutNulls
          .toList();
}

class RetrieveAProductCall {
  Future<ApiCallResponse> call({
    String? id = '',
  }) async {
    final baseUrl = ProductsGroup.getBaseUrl();

    return ApiManager.instance.makeApiCall(
      callName: 'Retrieve a product',
      apiUrl: '${baseUrl}/rest/v1/Products?id=eq.1&select=*',
      callType: ApiCallType.GET,
      headers: {
        'apikey':
            'eyJhbGciOiJIUzI1NiIsInR5cCI6IkpXVCJ9.eyJpc3MiOiJzdXBhYmFzZSIsInJlZiI6Imppa3NncWlzcXFrc3BidnFyZ2drIiwicm9sZSI6ImFub24iLCJpYXQiOjE3MDg4MTI1MjEsImV4cCI6MjAyNDM4ODUyMX0.aEZXDX2arf49-Rll7sBizxekGXGRePMu17H8SIeEoww',
        'Authorization':
            'Bearer eyJhbGciOiJIUzI1NiIsInR5cCI6IkpXVCJ9.eyJpc3MiOiJzdXBhYmFzZSIsInJlZiI6Imppa3NncWlzcXFrc3BidnFyZ2drIiwicm9sZSI6ImFub24iLCJpYXQiOjE3MDg4MTI1MjEsImV4cCI6MjAyNDM4ODUyMX0.aEZXDX2arf49-Rll7sBizxekGXGRePMu17H8SIeEoww',
      },
      params: {
        'id': id,
      },
      returnBody: true,
      encodeBodyUtf8: false,
      decodeUtf8: false,
      cache: false,
      isStreamingApi: false,
      alwaysAllowBody: false,
    );
  }
}

class CreateAProductCall {
  Future<ApiCallResponse> call({
    String? name = '',
    int? price,
    String? description = '',
    String? category = '',
    int? quanty,
    String? photoUrl = '',
  }) async {
    final baseUrl = ProductsGroup.getBaseUrl();

    final ffApiRequestBody = '''
[
  {
    "name": "${name} ",
    "quanty ": ${quanty},
    "price": ${price},
    "description ": "${description}",
    "category ": "${category}",
    "photo_url ": "${photoUrl}"
  }
]''';
    return ApiManager.instance.makeApiCall(
      callName: 'Create a Product',
      apiUrl: '${baseUrl}/rest/v1/Products',
      callType: ApiCallType.POST,
      headers: {
        'apikey':
            'eyJhbGciOiJIUzI1NiIsInR5cCI6IkpXVCJ9.eyJpc3MiOiJzdXBhYmFzZSIsInJlZiI6Imppa3NncWlzcXFrc3BidnFyZ2drIiwicm9sZSI6InNlcnZpY2Vfcm9sZSIsImlhdCI6MTcwODgxMjUyMSwiZXhwIjoyMDI0Mzg4NTIxfQ.eii7xhYWDYJ6dISthyT5Gz652I1FmKwZNtCa3TiC-bY',
        'Authorization':
            'Bearer eyJhbGciOiJIUzI1NiIsInR5cCI6IkpXVCJ9.eyJpc3MiOiJzdXBhYmFzZSIsInJlZiI6Imppa3NncWlzcXFrc3BidnFyZ2drIiwicm9sZSI6InNlcnZpY2Vfcm9sZSIsImlhdCI6MTcwODgxMjUyMSwiZXhwIjoyMDI0Mzg4NTIxfQ.eii7xhYWDYJ6dISthyT5Gz652I1FmKwZNtCa3TiC-bY',
        'Prefer': 'return=representation',
      },
      params: {},
      body: ffApiRequestBody,
      bodyType: BodyType.JSON,
      returnBody: true,
      encodeBodyUtf8: false,
      decodeUtf8: false,
      cache: false,
      isStreamingApi: false,
      alwaysAllowBody: false,
    );
  }
}

class UpdateAProductCall {
  Future<ApiCallResponse> call({
    String? id = '',
    String? status = '',
  }) async {
    final baseUrl = ProductsGroup.getBaseUrl();

    final ffApiRequestBody = '''
{
  "id": "${id}",
  "status": "${status}"
}''';
    return ApiManager.instance.makeApiCall(
      callName: 'Update a product',
      apiUrl: '${baseUrl}/rest/v1/Products?some_column=eq',
      callType: ApiCallType.PUT,
      headers: {
        'Authorization':
            'Basic Y2tfZWE3YmMxNmRmZTRmMjMxYzI2NmY5NjNlOGI3OGE5MmRiZjMyMzNhYjpjc19mZDY2ZThjZTJjNjMwMzIwOWE2MzBhMTY3MWEyZjg2ZDg4NzQwNTc3',
        'apikey':
            'eyJhbGciOiJIUzI1NiIsInR5cCI6IkpXVCJ9.eyJpc3MiOiJzdXBhYmFzZSIsInJlZiI6Imppa3NncWlzcXFrc3BidnFyZ2drIiwicm9sZSI6ImFub24iLCJpYXQiOjE3MDg4MTI1MjEsImV4cCI6MjAyNDM4ODUyMX0.aEZXDX2arf49-Rll7sBizxekGXGRePMu17H8SIeEoww',
      },
      params: {},
      body: ffApiRequestBody,
      bodyType: BodyType.JSON,
      returnBody: true,
      encodeBodyUtf8: false,
      decodeUtf8: false,
      cache: false,
      isStreamingApi: false,
      alwaysAllowBody: false,
    );
  }
}

class DeleteAProductCall {
  Future<ApiCallResponse> call({
    String? id = '',
  }) async {
    final baseUrl = ProductsGroup.getBaseUrl();

    return ApiManager.instance.makeApiCall(
      callName: 'Delete a product',
      apiUrl: '${baseUrl}/wp-json/wc/v3/products/${id}',
      callType: ApiCallType.DELETE,
      headers: {
        'Authorization':
            'Basic Y2tfZWE3YmMxNmRmZTRmMjMxYzI2NmY5NjNlOGI3OGE5MmRiZjMyMzNhYjpjc19mZDY2ZThjZTJjNjMwMzIwOWE2MzBhMTY3MWEyZjg2ZDg4NzQwNTc3',
      },
      params: {},
      returnBody: true,
      encodeBodyUtf8: false,
      decodeUtf8: false,
      cache: false,
      isStreamingApi: false,
      alwaysAllowBody: false,
    );
  }
}

/// End Products Group Code

/// Start Orders Group Code

class OrdersGroup {
  static String getBaseUrl() => 'https://jiksgqisqqkspbvqrggk.supabase.co';
  static Map<String, String> headers = {};
  static CreateAnOrderCall createAnOrderCall = CreateAnOrderCall();
  static RetrieveAnOrderCall retrieveAnOrderCall = RetrieveAnOrderCall();
  static ListAllOrdersCall listAllOrdersCall = ListAllOrdersCall();
  static UpdateAnOrderCall updateAnOrderCall = UpdateAnOrderCall();
  static DeleteAnOrderCall deleteAnOrderCall = DeleteAnOrderCall();
}

class CreateAnOrderCall {
  Future<ApiCallResponse> call({
    dynamic? lineItemsJson,
    String? total = '',
    String? shippingTotal = '0',
    String? status = '',
    String? firstName = '',
    String? lastName = '',
    String? address1 = '',
    String? shippingCity = '',
    String? phone = '',
    String? userId = '',
    String? orderNote = '',
  }) async {
    final baseUrl = OrdersGroup.getBaseUrl();

    final lineItems = _serializeJson(lineItemsJson, true);
    final ffApiRequestBody = '''
{
  "first_name": "${firstName}",
  "last_name": "${lastName}",
  "address_1": "${address1}",
  "shipping_city": "${shippingCity}",
  "phone": "${phone}",
  "line_items": ${lineItems},
  "shipping_total": "${shippingTotal}",
  "total": "${total}",
  "status": "${status}",
  "user_id": "${userId}",
  "order_note": "${orderNote}"
}''';
    return ApiManager.instance.makeApiCall(
      callName: 'Create an order',
      apiUrl: '${baseUrl}/rest/v1/order',
      callType: ApiCallType.POST,
      headers: {
        'Authorization':
            'Bearer eyJhbGciOiJIUzI1NiIsInR5cCI6IkpXVCJ9.eyJpc3MiOiJzdXBhYmFzZSIsInJlZiI6Imppa3NncWlzcXFrc3BidnFyZ2drIiwicm9sZSI6ImFub24iLCJpYXQiOjE3MDg4MTI1MjEsImV4cCI6MjAyNDM4ODUyMX0.aEZXDX2arf49-Rll7sBizxekGXGRePMu17H8SIeEoww',
        'apikey':
            'eyJhbGciOiJIUzI1NiIsInR5cCI6IkpXVCJ9.eyJpc3MiOiJzdXBhYmFzZSIsInJlZiI6Imppa3NncWlzcXFrc3BidnFyZ2drIiwicm9sZSI6ImFub24iLCJpYXQiOjE3MDg4MTI1MjEsImV4cCI6MjAyNDM4ODUyMX0.aEZXDX2arf49-Rll7sBizxekGXGRePMu17H8SIeEoww',
        'Prefer': 'return=minimal',
      },
      params: {},
      body: ffApiRequestBody,
      bodyType: BodyType.JSON,
      returnBody: true,
      encodeBodyUtf8: false,
      decodeUtf8: false,
      cache: false,
      isStreamingApi: false,
      alwaysAllowBody: false,
    );
  }
}

class RetrieveAnOrderCall {
  Future<ApiCallResponse> call({
    String? id = '',
    String? consumerKey = '',
    String? consumerSecret = '',
  }) async {
    final baseUrl = OrdersGroup.getBaseUrl();

    return ApiManager.instance.makeApiCall(
      callName: 'Retrieve an order',
      apiUrl: '${baseUrl}/wp-json/wc/v3/orders/${id}',
      callType: ApiCallType.GET,
      headers: {
        'Authorization':
            'Basic Y2tfZWE3YmMxNmRmZTRmMjMxYzI2NmY5NjNlOGI3OGE5MmRiZjMyMzNhYjpjc19mZDY2ZThjZTJjNjMwMzIwOWE2MzBhMTY3MWEyZjg2ZDg4NzQwNTc3',
      },
      params: {
        'consumer_key': consumerKey,
        'consumer_secret': consumerSecret,
      },
      returnBody: true,
      encodeBodyUtf8: false,
      decodeUtf8: false,
      cache: false,
      isStreamingApi: false,
      alwaysAllowBody: false,
    );
  }
}

class ListAllOrdersCall {
  Future<ApiCallResponse> call({
    String? consumerKey = 'ck_ea7bc16dfe4f231c266f963e8b78a92dbf3233ab',
    String? consumerSecret = 'cs_fd66e8ce2c6303209a630a1671a2f86d88740577',
    String? id = '',
    String? status = '',
    String? include = '',
  }) async {
    final baseUrl = OrdersGroup.getBaseUrl();

    return ApiManager.instance.makeApiCall(
      callName: 'List all orders',
      apiUrl:
          '${baseUrl}/wp-json/wc/v3/orders?_fields=id,status,date_modified,total,billing,line_items&per_page=50',
      callType: ApiCallType.GET,
      headers: {
        'Authorization':
            'Basic Y2tfZWE3YmMxNmRmZTRmMjMxYzI2NmY5NjNlOGI3OGE5MmRiZjMyMzNhYjpjc19mZDY2ZThjZTJjNjMwMzIwOWE2MzBhMTY3MWEyZjg2ZDg4NzQwNTc3',
      },
      params: {
        'consumer_key': consumerKey,
        'consumer_secret': consumerSecret,
        'include': include,
      },
      returnBody: true,
      encodeBodyUtf8: false,
      decodeUtf8: false,
      cache: false,
      isStreamingApi: false,
      alwaysAllowBody: false,
    );
  }
}

class UpdateAnOrderCall {
  Future<ApiCallResponse> call({
    String? id = '',
  }) async {
    final baseUrl = OrdersGroup.getBaseUrl();

    return ApiManager.instance.makeApiCall(
      callName: 'Update an Order',
      apiUrl: '${baseUrl}/wp-json/wc/v3/orders/${id}',
      callType: ApiCallType.PUT,
      headers: {
        'Authorization':
            'Basic Y2tfZWE3YmMxNmRmZTRmMjMxYzI2NmY5NjNlOGI3OGE5MmRiZjMyMzNhYjpjc19mZDY2ZThjZTJjNjMwMzIwOWE2MzBhMTY3MWEyZjg2ZDg4NzQwNTc3',
      },
      params: {},
      bodyType: BodyType.JSON,
      returnBody: true,
      encodeBodyUtf8: false,
      decodeUtf8: false,
      cache: false,
      isStreamingApi: false,
      alwaysAllowBody: false,
    );
  }
}

class DeleteAnOrderCall {
  Future<ApiCallResponse> call({
    String? id = '',
  }) async {
    final baseUrl = OrdersGroup.getBaseUrl();

    return ApiManager.instance.makeApiCall(
      callName: 'Delete an order',
      apiUrl: '${baseUrl}/wp-json/wc/v3/orders/${id}',
      callType: ApiCallType.DELETE,
      headers: {
        'Authorization':
            'Basic Y2tfZWE3YmMxNmRmZTRmMjMxYzI2NmY5NjNlOGI3OGE5MmRiZjMyMzNhYjpjc19mZDY2ZThjZTJjNjMwMzIwOWE2MzBhMTY3MWEyZjg2ZDg4NzQwNTc3',
      },
      params: {},
      returnBody: true,
      encodeBodyUtf8: false,
      decodeUtf8: false,
      cache: false,
      isStreamingApi: false,
      alwaysAllowBody: false,
    );
  }
}

/// End Orders Group Code

/// Start Customers Group Code

class CustomersGroup {
  static String getBaseUrl() => 'https://charcuterialaesquina.com/';
  static Map<String, String> headers = {};
  static CreateACustomerCall createACustomerCall = CreateACustomerCall();
  static RetrieveACustomerCall retrieveACustomerCall = RetrieveACustomerCall();
  static ListAllCustomersCall listAllCustomersCall = ListAllCustomersCall();
  static UpdateACustomerCall updateACustomerCall = UpdateACustomerCall();
  static DeleteACustomerCall deleteACustomerCall = DeleteACustomerCall();
}

class CreateACustomerCall {
  Future<ApiCallResponse> call({
    String? email = '',
    String? firstName = '',
    String? lastName = '',
    String? username = '',
    String? billingFirstName = '',
    String? billingLastName = '',
    String? billingCompany = '',
    String? billingAddress1 = '',
    String? billingAddress2 = '',
    String? billingCity = '',
    String? billingState = '',
    String? billingPostcode = '',
    String? billingCountry = '',
    String? billingEmail = '',
    String? billingPhone = '',
    String? shippingFirstName = '',
    String? shippingLastName = '',
    String? shippingCompany = '',
    String? shippingAddress1 = '',
    String? shippingAddress2 = '',
    String? shippingCity = '',
    String? shippingState = '',
    String? shippingPostcode = '',
    String? shippingCountry = '',
  }) async {
    final baseUrl = CustomersGroup.getBaseUrl();

    final ffApiRequestBody = '''
{
  "email": "${email}",
  "first_name": "${firstName}",
  "last_name": "${lastName}",
  "username": "${username}",
  "billing": {
    "first_name": "${billingFirstName}",
    "last_name": "${billingLastName}",
    "company": "${billingCompany}",
    "address_1": "${billingAddress1}",
    "address_2": "${billingAddress2}",
    "city": "${billingCity}",
    "state": "${billingState}",
    "postcode": "${billingPostcode}",
    "country": "${billingCountry}",
    "email": "${billingEmail}",
    "phone": "${billingPhone}"
  },
  "shipping": {
    "first_name": "${shippingFirstName}",
    "last_name": "${shippingLastName}",
    "company": "${shippingCompany}",
    "address_1": "${shippingAddress1}",
    "address_2": "${shippingAddress2}",
    "city": "${shippingCity}",
    "state": "${shippingState}",
    "postcode": "${shippingPostcode}",
    "country": "${shippingCountry}"
  }
}''';
    return ApiManager.instance.makeApiCall(
      callName: 'Create a customer',
      apiUrl: '${baseUrl}/wp-json/wc/v3/customers',
      callType: ApiCallType.POST,
      headers: {
        'Authorization':
            'Basic Y2tfZWE3YmMxNmRmZTRmMjMxYzI2NmY5NjNlOGI3OGE5MmRiZjMyMzNhYjpjc19mZDY2ZThjZTJjNjMwMzIwOWE2MzBhMTY3MWEyZjg2ZDg4NzQwNTc3',
      },
      params: {},
      body: ffApiRequestBody,
      bodyType: BodyType.JSON,
      returnBody: true,
      encodeBodyUtf8: false,
      decodeUtf8: false,
      cache: false,
      isStreamingApi: false,
      alwaysAllowBody: false,
    );
  }
}

class RetrieveACustomerCall {
  Future<ApiCallResponse> call({
    String? id = '',
    String? consumerKey = '',
    String? consumerSecret = '',
  }) async {
    final baseUrl = CustomersGroup.getBaseUrl();

    return ApiManager.instance.makeApiCall(
      callName: 'Retrieve a customer',
      apiUrl: '${baseUrl}/wp-json/wc/v3/customers/${id}',
      callType: ApiCallType.GET,
      headers: {},
      params: {
        'consumer_key': consumerKey,
        'consumer_secret': consumerSecret,
      },
      returnBody: true,
      encodeBodyUtf8: false,
      decodeUtf8: false,
      cache: false,
      isStreamingApi: false,
      alwaysAllowBody: false,
    );
  }
}

class ListAllCustomersCall {
  Future<ApiCallResponse> call({
    String? consumerKey = '',
    String? consumerSecret = '',
  }) async {
    final baseUrl = CustomersGroup.getBaseUrl();

    return ApiManager.instance.makeApiCall(
      callName: 'List all customers',
      apiUrl: '${baseUrl}/wp-json/wc/v3/customers',
      callType: ApiCallType.GET,
      headers: {},
      params: {
        'consumer_key': consumerKey,
        'consumer_secret': consumerSecret,
      },
      returnBody: true,
      encodeBodyUtf8: false,
      decodeUtf8: false,
      cache: false,
      isStreamingApi: false,
      alwaysAllowBody: false,
    );
  }
}

class UpdateACustomerCall {
  Future<ApiCallResponse> call({
    String? id = '',
  }) async {
    final baseUrl = CustomersGroup.getBaseUrl();

    return ApiManager.instance.makeApiCall(
      callName: 'Update a customer',
      apiUrl: '${baseUrl}/wp-json/wc/v3/customers/${id}',
      callType: ApiCallType.PUT,
      headers: {
        'Authorization':
            'Basic Y2tfZWE3YmMxNmRmZTRmMjMxYzI2NmY5NjNlOGI3OGE5MmRiZjMyMzNhYjpjc19mZDY2ZThjZTJjNjMwMzIwOWE2MzBhMTY3MWEyZjg2ZDg4NzQwNTc3',
      },
      params: {},
      bodyType: BodyType.JSON,
      returnBody: true,
      encodeBodyUtf8: false,
      decodeUtf8: false,
      cache: false,
      isStreamingApi: false,
      alwaysAllowBody: false,
    );
  }
}

class DeleteACustomerCall {
  Future<ApiCallResponse> call({
    String? id = '',
  }) async {
    final baseUrl = CustomersGroup.getBaseUrl();

    return ApiManager.instance.makeApiCall(
      callName: 'Delete a customer',
      apiUrl: '${baseUrl}/wp-json/wc/v3/customers/${id}',
      callType: ApiCallType.DELETE,
      headers: {
        'Authorization':
            'Basic Y2tfZWE3YmMxNmRmZTRmMjMxYzI2NmY5NjNlOGI3OGE5MmRiZjMyMzNhYjpjc19mZDY2ZThjZTJjNjMwMzIwOWE2MzBhMTY3MWEyZjg2ZDg4NzQwNTc3',
      },
      params: {},
      returnBody: true,
      encodeBodyUtf8: false,
      decodeUtf8: false,
      cache: false,
      isStreamingApi: false,
      alwaysAllowBody: false,
    );
  }
}

/// End Customers Group Code

/// Start Product categories Group Code

class ProductCategoriesGroup {
  static String getBaseUrl() => 'https://jiksgqisqqkspbvqrggk.supabase.co';
  static Map<String, String> headers = {};
  static ListAllProductCategoriesCall listAllProductCategoriesCall =
      ListAllProductCategoriesCall();
  static CreateAProductCategoryCall createAProductCategoryCall =
      CreateAProductCategoryCall();
  static RetrieveAProductCategoryCall retrieveAProductCategoryCall =
      RetrieveAProductCategoryCall();
  static UpdateAProductCategoryCall updateAProductCategoryCall =
      UpdateAProductCategoryCall();
  static DeleteAProductCategoryCall deleteAProductCategoryCall =
      DeleteAProductCategoryCall();
}

class ListAllProductCategoriesCall {
  Future<ApiCallResponse> call() async {
    final baseUrl = ProductCategoriesGroup.getBaseUrl();

    return ApiManager.instance.makeApiCall(
      callName: 'List all product categories',
      apiUrl: '${baseUrl}/rest/v1/category?select=*',
      callType: ApiCallType.GET,
      headers: {
        'Authorization':
            'Bearer eyJhbGciOiJIUzI1NiIsInR5cCI6IkpXVCJ9.eyJpc3MiOiJzdXBhYmFzZSIsInJlZiI6Imppa3NncWlzcXFrc3BidnFyZ2drIiwicm9sZSI6InNlcnZpY2Vfcm9sZSIsImlhdCI6MTcwODgxMjUyMSwiZXhwIjoyMDI0Mzg4NTIxfQ.eii7xhYWDYJ6dISthyT5Gz652I1FmKwZNtCa3TiC-bY',
        'apikey':
            'eyJhbGciOiJIUzI1NiIsInR5cCI6IkpXVCJ9.eyJpc3MiOiJzdXBhYmFzZSIsInJlZiI6Imppa3NncWlzcXFrc3BidnFyZ2drIiwicm9sZSI6InNlcnZpY2Vfcm9sZSIsImlhdCI6MTcwODgxMjUyMSwiZXhwIjoyMDI0Mzg4NTIxfQ.eii7xhYWDYJ6dISthyT5Gz652I1FmKwZNtCa3TiC-bY',
      },
      params: {},
      returnBody: true,
      encodeBodyUtf8: false,
      decodeUtf8: false,
      cache: false,
      isStreamingApi: false,
      alwaysAllowBody: false,
    );
  }

  List<int>? id(dynamic response) => (getJsonField(
        response,
        r'''$[:].id''',
        true,
      ) as List?)
          ?.withoutNulls
          .map((x) => castToType<int>(x))
          .withoutNulls
          .toList();
  List<String>? name(dynamic response) => (getJsonField(
        response,
        r'''$[:].name''',
        true,
      ) as List?)
          ?.withoutNulls
          .map((x) => castToType<String>(x))
          .withoutNulls
          .toList();
  List<String>? description(dynamic response) => (getJsonField(
        response,
        r'''$[:].description''',
        true,
      ) as List?)
          ?.withoutNulls
          .map((x) => castToType<String>(x))
          .withoutNulls
          .toList();
  List<int>? count(dynamic response) => (getJsonField(
        response,
        r'''$[:].count''',
        true,
      ) as List?)
          ?.withoutNulls
          .map((x) => castToType<int>(x))
          .withoutNulls
          .toList();
  List? image(dynamic response) => getJsonField(
        response,
        r'''$[:].image.src''',
        true,
      ) as List?;
}

class CreateAProductCategoryCall {
  Future<ApiCallResponse> call({
    String? name = '',
    String? image = '',
  }) async {
    final baseUrl = ProductCategoriesGroup.getBaseUrl();

    final ffApiRequestBody = '''
{
  "name": "${name}",
  "image": {
    "src": "${image}"
  }
}''';
    return ApiManager.instance.makeApiCall(
      callName: 'Create a product category',
      apiUrl: '${baseUrl}wp-json/wc/v3/products/categories',
      callType: ApiCallType.POST,
      headers: {
        'Authorization':
            'Basic Y2tfZWE3YmMxNmRmZTRmMjMxYzI2NmY5NjNlOGI3OGE5MmRiZjMyMzNhYjpjc19mZDY2ZThjZTJjNjMwMzIwOWE2MzBhMTY3MWEyZjg2ZDg4NzQwNTc3',
      },
      params: {},
      body: ffApiRequestBody,
      bodyType: BodyType.JSON,
      returnBody: true,
      encodeBodyUtf8: false,
      decodeUtf8: false,
      cache: false,
      isStreamingApi: false,
      alwaysAllowBody: false,
    );
  }
}

class RetrieveAProductCategoryCall {
  Future<ApiCallResponse> call({
    String? id = '',
  }) async {
    final baseUrl = ProductCategoriesGroup.getBaseUrl();

    return ApiManager.instance.makeApiCall(
      callName: 'Retrieve a product category',
      apiUrl: '${baseUrl}wp-json/wc/v3/products/categories/${id}',
      callType: ApiCallType.GET,
      headers: {
        'Authorization':
            'Basic Y2tfZWE3YmMxNmRmZTRmMjMxYzI2NmY5NjNlOGI3OGE5MmRiZjMyMzNhYjpjc19mZDY2ZThjZTJjNjMwMzIwOWE2MzBhMTY3MWEyZjg2ZDg4NzQwNTc3',
      },
      params: {},
      returnBody: true,
      encodeBodyUtf8: false,
      decodeUtf8: false,
      cache: false,
      isStreamingApi: false,
      alwaysAllowBody: false,
    );
  }
}

class UpdateAProductCategoryCall {
  Future<ApiCallResponse> call({
    String? id = '',
    String? name = '',
    String? image = '',
  }) async {
    final baseUrl = ProductCategoriesGroup.getBaseUrl();

    final ffApiRequestBody = '''
{
  "name": "${name}",
  "image": {
    "src": "${image}"
  }
}''';
    return ApiManager.instance.makeApiCall(
      callName: 'Update a product category',
      apiUrl: '${baseUrl}wp-json/wc/v3/products/categories/${id}',
      callType: ApiCallType.PUT,
      headers: {
        'Authorization':
            'Basic Y2tfZWE3YmMxNmRmZTRmMjMxYzI2NmY5NjNlOGI3OGE5MmRiZjMyMzNhYjpjc19mZDY2ZThjZTJjNjMwMzIwOWE2MzBhMTY3MWEyZjg2ZDg4NzQwNTc3',
      },
      params: {},
      body: ffApiRequestBody,
      bodyType: BodyType.JSON,
      returnBody: true,
      encodeBodyUtf8: false,
      decodeUtf8: false,
      cache: false,
      isStreamingApi: false,
      alwaysAllowBody: false,
    );
  }
}

class DeleteAProductCategoryCall {
  Future<ApiCallResponse> call({
    String? id = '',
  }) async {
    final baseUrl = ProductCategoriesGroup.getBaseUrl();

    return ApiManager.instance.makeApiCall(
      callName: 'Delete a product category',
      apiUrl: '${baseUrl}wp-json/wc/v3/products/categories/${id}',
      callType: ApiCallType.DELETE,
      headers: {
        'Authorization':
            'Basic Y2tfZWE3YmMxNmRmZTRmMjMxYzI2NmY5NjNlOGI3OGE5MmRiZjMyMzNhYjpjc19mZDY2ZThjZTJjNjMwMzIwOWE2MzBhMTY3MWEyZjg2ZDg4NzQwNTc3',
      },
      params: {
        'force': true,
      },
      returnBody: true,
      encodeBodyUtf8: false,
      decodeUtf8: false,
      cache: false,
      isStreamingApi: false,
      alwaysAllowBody: false,
    );
  }
}

/// End Product categories Group Code

class ApiPagingParams {
  int nextPageNumber = 0;
  int numItems = 0;
  dynamic lastResponse;

  ApiPagingParams({
    required this.nextPageNumber,
    required this.numItems,
    required this.lastResponse,
  });

  @override
  String toString() =>
      'PagingParams(nextPageNumber: $nextPageNumber, numItems: $numItems, lastResponse: $lastResponse,)';
}

String _toEncodable(dynamic item) {
  return item;
}

String _serializeList(List? list) {
  list ??= <String>[];
  try {
    return json.encode(list, toEncodable: _toEncodable);
  } catch (_) {
    if (kDebugMode) {
      print("List serialization failed. Returning empty list.");
    }
    return '[]';
  }
}

String _serializeJson(dynamic jsonVar, [bool isList = false]) {
  jsonVar ??= (isList ? [] : {});
  try {
    return json.encode(jsonVar, toEncodable: _toEncodable);
  } catch (_) {
    if (kDebugMode) {
      print("Json serialization failed. Returning empty json.");
    }
    return isList ? '[]' : '{}';
  }
}
