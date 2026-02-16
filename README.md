# SuiMoreCoin

Custom cryptocurrency and DeFi smart contracts on the [Sui](https://sui.io) blockchain, written in Move.

## Overview

A collection of Move modules exploring token creation, smart contract interaction, DeFi lending pools, and proof-of-work concepts on the Sui network.

## Modules

### `mycoin.move` — Base Token
Basic coin implementation with mint, burn, and transfer operations.

### `extends.move` — Smart Contract Integration
Extends the base coin with contract deployment and invocation capabilities.

### `simple_defi.move` — DeFi & Lending Pool
DeFi application with a lending pool supporting deposits, withdrawals, and borrowing with basic validation.

| Function | Description |
|----------|-------------|
| `init_simple_defi()` | Initialize DeFi application |
| `deposit()` / `withdraw()` | User fund management |
| `init_lending_pool()` | Create lending pool |
| `deposit_to_lending_pool()` | Deposit to pool |
| `withdraw_from_lending_pool()` | Withdraw with validation |

### `various_features.move` — Proof of Work
Block structure with headers, transactions, and proof-of-work generation/verification.

## Tech Stack

- **Language:** [Move](https://move-language.github.io/move/)
- **Blockchain:** [Sui Network](https://sui.io)
- **Libraries:** Sui stdlib (`coin`, `tx_context`)

## Project Structure

```
src/
  mycoin.move            # Base token (mint, burn, transfer)
  extends.move           # + contract deploy/invoke
  simple_defi.move       # DeFi lending pool
  various_features.move  # Proof-of-work blocks
```

## References

- [Move Language Tutorial](https://github.com/move-language/move/blob/main/language/documentation/tutorial/README.md)
- [Sui Documentation](https://docs.sui.io)

## License

MIT License - see [LICENSE](LICENSE) for details.
