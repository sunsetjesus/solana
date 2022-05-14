import 'package:json_annotation/json_annotation.dart';

part 'token_amount.g.dart';

/// The amount of a SPL token
@JsonSerializable()
class TokenAmount {
  const TokenAmount({
    required this.amount,
    required this.decimals,
    required this.uiAmountString,
  });

  factory TokenAmount.fromJson(Map<String, dynamic> json) =>
      _$TokenAmountFromJson(json);

  Map<String, dynamic> toJson() => _$TokenAmountToJson(this);

  /// Raw amount of tokens as a string, ignoring decimals.
  final String amount;

  /// Number of decimals configured for token's mint.
  final int decimals;

  /// Token amount as a string, accounting for decimals.
  final String? uiAmountString;
}
