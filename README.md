# Learning Solidity

References: 
  - [patric - learn blockchain 32hrs](https://youtu.be/gyMwXuJrbJQ)


- Tools: https://remix.ethereum.org

DataTypes: 
 - bool
 - string
 - uint
 - int
 - struct
 - [] // variable length
 - [3] // array with defined length

Contracts: 
 - contract ContractName

Declaration: 

```sol

uint256 public favNumber;

People public person;

struct People {
  uint256 favNumber;
  string name;
}

```

Functions: 
 - function fnName

Storage type declaration: 
 - memory : only for args
 - calldata : only for args valid inside the function and get cleanup
 - storage


Importing: 
 - import 

```sol
import './simpleStorage.sol'
```

Deploy Contracts: 
 - Deploying contracts from other contracts.

Inheritance: 
 - is


Overriding: 
 - virtual : function that we can override
 - override : function which works as overriden

