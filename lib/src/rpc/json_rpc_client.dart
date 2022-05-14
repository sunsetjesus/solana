import 'dart:async';
import 'dart:convert';

import 'package:http/http.dart';
import 'package:solana/src/exceptions/http_exception.dart';
import 'package:solana/src/exceptions/json_rpc_exception.dart';

class JsonRpcClient {
  JsonRpcClient(
    this._url, {
    required Duration timeout,
  }) : _timeout = timeout;

  final String _url;
  final Duration _timeout;
  int _lastId = 1;

  Future<List<Map<String, dynamic>>> bulkRequest(
    String method,
    List<List<dynamic>> params,
  ) async {
    final requests = params
        .map(
          (p) => _JsonRpcSingleRequest(
            method: method,
            params: p,
            id: (_lastId++).toString(),
          ),
        )
        .toList(growable: false);

    final response = await _postRequest(_JsonRpcRequest.bulk(requests));
    if (response is _JsonRpcArrayResponse) {
      final elements = response.array;

      return elements
          .map((_JsonRpcObjectResponse item) => item.data)
          .toList(growable: false);
    } else {
      throw const FormatException('unexpected jsonrpc response type');
    }
  }

  /// Calls the [method] jsonrpc-2.0 method with [params] parameters
  Future<Map<String, dynamic>> request(
    String method, {
    List<dynamic>? params,
  }) async {
    final request = _JsonRpcSingleRequest(
      id: (_lastId++).toString(),
      method: method,
      params: params,
    );

    final response = await _postRequest(request);
    if (response is _JsonRpcObjectResponse) {
      return response.data;
    } else {
      throw const FormatException('unexpected jsonrpc response type');
    }
  }

  Future<_JsonRpcResponse> _postRequest(
    _JsonRpcRequest request,
  ) async {
    final body = json.encode(request.toJson());
    // Perform the POST request
    final Response response = await post(
      Uri.parse(_url),
      headers: _defaultHeaders,
      body: body,
    ).timeout(
      _timeout,
      onTimeout: () {
        throw TimeoutException('request timed out');
      },
    );
    // Handle the response
    if (response.statusCode == 200) {
      return _JsonRpcResponse._parse(json.decode(response.body));
    } else {
      throw HttpException(response.statusCode, response.body);
    }
  }
}

abstract class _JsonRpcRequest {
  const factory _JsonRpcRequest.bulk(
    List<_JsonRpcSingleRequest> list,
  ) = _JsonRpcBulkRequest;

  dynamic toJson();
}

class _JsonRpcBulkRequest implements _JsonRpcRequest {
  const _JsonRpcBulkRequest(this.list);

  @override
  List<dynamic> toJson() =>
      list.map<dynamic>((i) => i.toJson()).toList(growable: false);

  final List<_JsonRpcRequest> list;
}

class _JsonRpcSingleRequest implements _JsonRpcRequest {
  const _JsonRpcSingleRequest({
    required this.id,
    required this.method,
    this.params,
  });

  @override
  Map<String, dynamic> toJson() => <String, dynamic>{
        'jsonrpc': '2.0',
        'id': id,
        'method': method,
        if (params != null) 'params': params,
      };

  final String id;
  final String method;
  final List<dynamic>? params;
}

abstract class _JsonRpcResponse {
  const factory _JsonRpcResponse._object(Map<String, dynamic> data) =
      _JsonRpcObjectResponse;

  const factory _JsonRpcResponse._array(List<_JsonRpcObjectResponse> list) =
      _JsonRpcArrayResponse;

  factory _JsonRpcResponse._fromObject(Map<String, dynamic> data) {
    if (data['jsonrpc'] != '2.0') {
      throw const FormatException('invalid jsonrpc-2.0 response');
    }
    if (data['error'] != null) {
      throw JsonRpcException.fromJson(data['error'] as Map<String, dynamic>);
    }
    if (!data.containsKey('result')) {
      throw const FormatException(
        'object has no result field, invalid jsonrpc-2.0',
      );
    }

    return _JsonRpcResponse._object(data);
  }

  factory _JsonRpcResponse._parse(dynamic response) {
    if (response is List<dynamic>) {
      return _JsonRpcResponse._array(
        response.map((dynamic r) {
          if (r is Map<String, dynamic>) {
            return _JsonRpcObjectResponse(r);
          } else {
            throw const FormatException('cannot parse the jsonrpc response');
          }
        }).toList(growable: false),
      );
    } else if (response is Map<String, dynamic>) {
      return _JsonRpcResponse._fromObject(response);
    } else {
      throw const FormatException('cannot parse the jsonrpc response');
    }
  }
}

class _JsonRpcObjectResponse implements _JsonRpcResponse {
  const _JsonRpcObjectResponse(this.data);

  final Map<String, dynamic> data;
}

class _JsonRpcArrayResponse implements _JsonRpcResponse {
  const _JsonRpcArrayResponse(this.array);

  final List<_JsonRpcObjectResponse> array;
}

const _defaultHeaders = <String, String>{
  'Content-Type': 'application/json; charset=UTF-8',
};
