// SPDX-License-Identifier: MIT
pragma solidity ^0.8.0;

import "./simpleStorage.sol";

contract StorageFactory {
  
  SimpleStorage public simpleStorage;
  
  function createStorage() public {
    simpleStorage = new SimpleStorage();
  }
  
}