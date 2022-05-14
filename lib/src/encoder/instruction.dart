import 'package:solana/src/crypto/ed25519_hd_public_key.dart';
import 'package:solana/src/encoder/account_meta.dart';
import 'package:solana/src/encoder/byte_array.dart';
import 'package:solana/src/encoder/compact_array.dart';

/// Taken from [here](https://spl.solana.com/memo#compute-limits).
///
/// An instruction representation that can be converted to a
/// `CompiledInstruction` and included into a message.
class Instruction {
  /// Construct a generic instruction for the [programId] program with
  /// [accounts]. These accounts will be interpreted by the specific program
  /// with id [programId].
  ///
  /// Some programs take specific [data]. You can provide raw 8bit bytes arrays
  /// with the [data] parameter.
  const Instruction({
    required this.programId,
    required this.accounts,
    required this.data,
  }) : super();

  final Ed25519HDPublicKey programId;
  final List<AccountMeta> accounts;
  final ByteArray data;

  /// Compiles instruction according to the [instruction format][1].
  ///
  /// [1]: https://docs.solana.com/developing/programming-model/transactions#instruction-format
  ByteArray compile(Map<Ed25519HDPublicKey, int> accountIndexesMap) {
    if (!accountIndexesMap.containsKey(programId)) {
      throw const FormatException('programId not found in accountIndexesMap');
    }
    final programIdIndex = ByteArray.u8(accountIndexesMap[programId]!);
    final accountIndexes = accounts.map((a) {
      if (!accountIndexesMap.containsKey(a.pubKey)) {
        throw const FormatException(
          'one of the supplied accounts was not found in the accountIndexesMap',
        );
      }

      return accountIndexesMap[a.pubKey]!;
    });

    return ByteArray.merge([
      programIdIndex,
      CompactArray(ByteArray(accountIndexes)).toByteArray(),
      CompactArray(data).toByteArray(),
    ]);
  }
}
