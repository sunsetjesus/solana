import 'package:json_annotation/json_annotation.dart';
import 'package:solana/src/rpc/dto/fee_calculator.dart';

part 'blockhash.g.dart';

/// Response of the [`getRecentBlockhash`][get recent blockhash] rpc method.
///
/// [get recent blockhash]: https://docs.solana.com/developing/clients/jsonrpc-api#getrecentblockhash
@JsonSerializable(createToJson: false)
class Blockhash {
  Blockhash({
    required this.feeCalculator,
    required this.blockhash,
  });

  factory Blockhash.fromJson(Map<String, dynamic> json) =>
      _$BlockhashFromJson(json);

  final FeeCalculator feeCalculator;
  final String blockhash;
}
