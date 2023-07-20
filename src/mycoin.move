module examples::mycoin {

struct MYCOIN has drop {}

fun mint(amount: u64) {
    coin::mint(tx_context::sender(ctx), amount, &metadata);
}

fun burn(amount: u64) {
    coin::burn(tx_context::sender(ctx), amount, &metadata);
}

fun transfer(amount: u64, recipient: Address) {
    coin::transfer(tx_context::sender(ctx), amount, &metadata, recipient);
}
