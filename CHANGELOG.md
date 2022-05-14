## 0.23.0+1

 - **REFACTOR**: Remove unused code.
 - **FIX**: getTokenLargestAccounts response (#270).

## 0.23.0

> Note: This release has breaking changes.

 - **REFACTOR**: Bump mews_pedantic.
 - **FIX**: Make Meta innerInstructions and logMessages nullable (#257).
 - **BREAKING** **FIX**: Buffer to ByteArray (#266).
 - **BREAKING** **FEAT**: Add CompiledMessage.fromSignedTransaction (#256).

## 0.22.0

 - Graduate package to a stable release. See pre-releases prior to this version for changelog entries.

## 0.22.0-dev.4

> Note: This release has breaking changes.

 - **FEAT**: Update Solana pay support (#235).
 - **BREAKING** **REFACTOR**: borsh 0.3.0.

## 0.22.0-dev.3

 - **FEAT**: Add Solana Pay support (#232).

## 0.22.0-dev.2

 - **REFACTOR**: Restructure SolanaClient (#230).

## 0.22.0-dev.1

> Note: This release has breaking changes.

 - **BREAKING** **REFACTOR**: Update tokens and client (#228).

## 0.22.0-dev.0

> Note: This release has breaking changes.

 - **FIX**: Add delgate stake to the stake program (#173).
 - **FEAT**: Add app packages (#196).
 - **DOCS**: Fix twitter link.
 - **DOCS**: Add badges.
 - **BREAKING** **REFACTOR**: Update parameters names in instructions (#227).
 - **BREAKING** **REFACTOR**: Update types (#226).

## 0.21.0

> Note: This release has breaking changes.

 - **FIX**: Make ClusterNode fields nullable (#192).
 - **FIX**: Remove mintAuthority from initializeMint (#190).
 - **BREAKING** **FIX**: Metadata decoding (#194).

## 0.20.0+1

 - **DOCS**: Add discord link.

## 0.20.0

> Note: This release has breaking changes.

 - **FIX**: Use BigInt for curve25519 (#181).
 - **DOCS**: Update readme (#172).
 - **BREAKING** **FIX**: Remove unused exceptions (#182).

## 0.19.0+1

 - **FIX**: Fix stake instruction parameter (#179).

## 0.19.0

> Note: This release has breaking changes.

 - **BREAKING** **CHORE**: Update dependencies (#178).

## 0.18.0

> Note: This release has breaking changes.

 - **REFACTOR**: Put associated token account program into programs directory (#164).
 - **FEAT**: Add metaplex parsing support (#163).
 - **FEAT**: Add the ability to request all transactions in 1 request (#167).
 - **BREAKING** **REFACTOR**: Re-organize exports (#168).
 - **BREAKING** **FEAT**: Use String feePayer instead of Keypair (#122).

## 0.17.2+2

 - **FIX**: Check for connection before sending request (#166).

## 0.17.2+1

 - **FIX**: Close subscription clients after using them (#165).

## 0.17.2

 - **FIX**: Remove mint and authority from spl transfer info (#160).
 - **FIX**: isValidAddress should not throw (#158).
 - **FEAT**: Add timeout to waitForSignatureStatus (#161).

## 0.17.1

 - **FIX**: Add initialized account to StakeAccountData union (#151).
 - **FEAT**: Add rpc client timeout (#157).
 - **FEAT**: Stake program instructions (#149).
 - **FEAT**: SPL Token program instructions (#142).

## 0.17.0

> Note: This release has breaking changes.

 - **BREAKING** **FEAT**: Add SolanaClient (#144).

## 0.16.0

> Note: This release has breaking changes.

 - **REFACTOR**: Create programs directory to keep all programs (#140).
 - **FEAT**: System program instructions (#127).
 - **BREAKING** **REFACTOR**: Update Wallet (#143).

## 0.15.0

> Note: This release has breaking changes.

 - **BREAKING** **REFACTOR**: Update SubscriptionClient (#133).

## 0.14.0

> Note: This release has breaking changes.

 - **FIX**: Export optional error object (#132).
 - **FIX**: Program account data filter serialization (#125).
 - **CHORE**: Upgrade to newest dart version (#126).
 - **BREAKING** **FIX**: Add missing imports and fix program accounts filter (#131).
 - **BREAKING** **FEAT**: Complete RPC client implementation using a generator (#118).

## 0.13.3+1

 - **FIX**: Add missing `mint` value to the SPL tokens transfer info (#108).

## 0.13.3

 - **FEAT**: Export `base58encode` (#106).

## 0.13.2

 - **REFACTOR**: Update the polling timeout for `waitForSignatureStatus()` (#101).
 - **REFACTOR**: Organize some commonly used types (#88).
 - **FIX**: Allow program as null for unsupported instruction (#83).
 - **FEAT**: Add Ed25519HDKeyPair from private key bytes constructor (#99).
 - **FEAT**: Add support for checked transfer SPL and SOL (#98).
 - **FEAT**: Implement subscription API (#89).

## 0.13.1

 - **FEAT**: Export SignedTx (#78).

## 0.13.0

> Note: This release has breaking changes.

 - **BREAKING** **FEAT**: Make TransactionSignature typedef (#76).

## 0.12.0+1

 - **TEST**: Add a test for sending SPL and SOL in a single transaction (#73).
 - **FIX**: Throw TransactionException in waitForSignatureStatus.

## 0.12.0

> Note: This release has breaking changes.

 - **FIX**: Remove commitment from `simulateTransaction` and `sendTransaction`. (#67).
 - **BREAKING** **FIX**: Use commitment when waiting for signature status (#69).

## 0.11.0

> Note: This release has breaking changes.

 - **BREAKING** **FEAT**: Create a separate sign method and split waiting for signature statuses from sending transactions (#64).

## 0.10.0+2

 - Update a dependency to the latest release.

## 0.10.0+1

 - **FIX**: Update tests to reflect some API changes (#59).
 - **CHORE**: Splits borsh package (#60).
 - **CHORE**: publish packages.
 - **CHORE**: publish packages.

## 0.10.0

> Note: This release has breaking changes.

 - **FIX**: Update tests to reflect some API changes (#59).
 - **FEAT**: Support anchor generated programs (#42).
 - **CHORE**: Add an example and a test for sending SPL with a fee payer (#55).
 - **CHORE**: Update readme (#49).
 - **CHORE**: Restructure packages (#44).
 - **BREAKING** **FIX**: Remove explicit tokens adding (#52).
 - **BREAKING** **FEAT**: Implement `getTokenAccountsByOwner` rpc method (#53).

## 0.9.0+1

 - **FIX**: Add required exports (#41).
 - **FIX**: Add readonly signers once (#40).

## 0.9.0

> Note: This release has breaking changes.

 - **FEAT**: Derive associated token account address. (#34).
 - **BREAKING** **FEAT**: Add spl token support and an API to write arbitrary transactions  (#35).
 - **BREAKING** **FEAT**: Memo program implementation (#31).

## 0.8.0

> Note: This release has breaking changes.

- **FEAT**: Add commitment parameter to transactions methods (#28).
- **BREAKING** **FIX**: Correct the derivation method (#27)


## 0.7.0

> Note: This release has breaking changes.

 - **STYLE**: Fix formatting.
 - **DOCS**: Update documentation.
 - **BREAKING** **FEAT**: Add `commitment` parameters to Solana client.

## 0.6.0

> Note: This release has breaking changes.

 - **FEAT**: Add a function to validate solana addresses (#22).
 - **BREAKING** **FEAT**: Separate signing and sending transaction (#23).

## 0.5.1

 - **FEAT**: Add accounts support (#19).

## 0.5.0

> Note: This release has breaking changes.

 - **BREAKING** **FIX**: Update errors base classes.

## 0.4.2+1

 - **FIX**: Fix instruction parsing.

## 0.4.2

 - **FEAT**: Add UnknownTx.

## 0.4.1

 - **FEAT**: Update ConfirmedTransaction model.

## 0.4.0+1

 - **REFACTOR**: Fix analyzer issue.
 - **CHORE**: Update dependencies.

## 0.4.0

> Note: This release has breaking changes.

 - **CHORE**: Update .gitignore.
 - **CHORE**: Fix warnings.
 - **BREAKING** **FEAT**: Migrate to nullsafety.

## 0.3.1

 - Bump "solana" to `0.3.1`.

## 0.3.0

> Note: This release has breaking changes.

 - **BREAKING** **CHORE**: Rename library to solana.

## 0.2.0

 - Bump "solana_dart" to `0.2.0`.

## 0.1.0

> Note: This release has breaking changes.

- **BREAKING** **REFACTOR**: Update models.

# 0.0.5

- Export some needed types for library users
- Fix casing of global constants

# 0.0.4

- Use a better technique for json deserialization

# 0.0.3

- Added the ability to list recent transactions
- General cleanup
- Generated documentation

## 0.0.2

- Added a method to wait for a specific signature status or a time out
- Fixed return value of a couple of methods

## 0.0.1

- Call some rpc methods: `getBalance`, `getAccountInfo`, `requestAirdrop`
- Simulate sending transfer transactions from pubkey A to pubkey B
- Sending transfer transactions from pubkey A to pubkey B
