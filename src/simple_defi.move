module examples::mycoin_with_smart_contracts::defi {

use mycoin_with_smart_contracts::{DeFi, mint, burn, transfer};

struct SimpleDeFi {
    defi: DeFi,
    lending_pool: LendingPool,
}

fun init_simple_defi() -> SimpleDeFi {
    SimpleDeFi {
        defi: init_defi(),
        lending_pool: init_lending_pool(),
    }
}

fun deposit(simple_defi: &mut SimpleDeFi, amount: u64, sender: Address) {
    deposit(&mut simple_defi.defi, amount, sender);
    deposit_to_lending_pool(&mut simple_defi.lending_pool, amount, sender);
}

fun withdraw(simple_defi: &mut SimpleDeFi, amount: u64, sender: Address) {
    withdraw(&mut simple_defi.defi, amount, sender);
    withdraw_from_lending_pool(&mut simple_defi.lending_pool, amount, sender);
}

struct LendingPool {
    total_supply: u64,
    deposits: Vec<(Address, u64)>,
    borrowings: Vec<(Address, u64)>,
}

fun init_lending_pool() -> LendingPool {
    LendingPool {
        total_supply: 0,
        deposits: vec![],
        borrowings: vec![],
    }
}

fun deposit_to_lending_pool(lending_pool: &mut LendingPool, amount: u64, sender: Address) {
    lending_pool.total_supply += amount;
    lending_pool.deposits.push((sender, amount));
}

fun withdraw_from_lending_pool(lending_pool: &mut LendingPool, amount: u64, sender: Address) {
    if amount > lending_pool.total_supply {
        panic!("Not enough funds");
    }
    lending_pool.total_supply -= amount;
    lending_pool.borrowings.push((sender, amount));
}

}