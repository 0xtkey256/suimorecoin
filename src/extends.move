module examples::mycoin_with_smart_contracts {

use mycoin::MYCOIN;

fun mint(amount: u64) {
    MYCOIN::mint(amount);
}

fun burn(amount: u64) {
    MYCOIN::burn(amount);
}

fun transfer(amount: u64, recipient: Address) {
    MYCOIN::transfer(amount, recipient);
}

fun deploy_contract(contract: &[u8]) {
    contracts::deploy(contract);
}

fun invoke_contract(contract: Address, method: &str, args: Vec<u8>) {
    contracts::invoke_contract(contract, method, args);
}

}