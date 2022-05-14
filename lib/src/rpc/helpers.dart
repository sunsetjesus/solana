Map<K, V> fromJsonMap<K, V>(
  dynamic map,
  K Function(dynamic key) convertKey,
  V Function(dynamic value) convertValue,
) {
  if (map is! Map<String, dynamic>) {
    throw const FormatException('invalid input type is not map');
  }

  final result = <K, V>{};
  for (final entry in map.entries) {
    result[convertKey(entry.key)] = convertValue(entry.value);
  }

  return result;
}

List<T> fromJsonArray<T>(dynamic array, T Function(dynamic) convert) {
  if (array is List) {
    return array.map(convert).toList(growable: false);
  } else {
    throw const FormatException('invalid input type is not json array');
  }
}

dynamic getResult(dynamic raw) {
  if (raw is! Map<String, dynamic>) {
    throw const FormatException('expecting a map but got something else');
  }

  return raw['result'];
}

dynamic unwrapAndGetResult(dynamic raw) {
  final dynamic result = getResult(raw);
  if (result is! Map<String, dynamic>) {
    throw const FormatException('expecting a map but got something else');
  }

  return result['value'];
}
