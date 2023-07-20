# suimorecoin
my own coin with more features in the future

[This is an external link to move tutorial][def]



[def]: https://github.com/move-language/move/blob/main/language/documentation/tutorial/README.md

## modules

### extends.move
able to mint, burn, transfter, deploy contract, and invoke contract. <br /> 

### mycoin_with_smart_contracts.move
A new type called SimpleDeFi, which inherits from DeFi.<br /> 
A function called init_simple_defi(), which initializes a new SimpleDeFi application.<br /> 
A function called deposit(), which deposits funds into a SimpleDeFi application.<br /> 
A function called withdraw(), which withdraws funds from a SimpleDeFi application.<br /> 

### simple_defi.move
A new type called SimpleDeFi, which inherits from DeFi and adds the ability to lend and borrow money.<br /> 
A new type called LendingPool, which represents a lending pool that allows users to deposit and borrow money.<br /> 
A function called deposit_to_lending_pool(), which deposits money into a lending pool.<br /> 
A function called withdraw_from_lending_pool(), which withdraws money from a lending pool.<br /> 