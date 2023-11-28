// SPDX-License-Identifier: MIT
pragma solidity ^0.8.0;

import "./simpleStorage.sol";

contract StorageFactory {
  
  SimpleStorage[] public simpleStorageList;
  
  function createStorage() public {
    SimpleStorage simpleStorage = new SimpleStorage();
    simpleStorageList.push(simpleStorage);
  }
  
  // updating the favNumber of different instance of simpleStorage;
  
  function SfStore(uint256 _simpleStorageIndex, uint256 _favNumber) public {
    SimpleStorage simpleStorage = simpleStorageList[_simpleStorageIndex];
    simpleStorage.setFavNumber(_favNumber);
    
    // we can reduce the code with single line like.
    /* 
      simpleStorageList[_simpleStorageIndex].setFavNumber(_favNumber);
    */
  }
  
  function SfGet(uint256 _simpleStorageIndex) public view returns(uint256) {
    SimpleStorage simpleStorage = simpleStorageList[_simpleStorageIndex];
    return simpleStorage.retrieveFavNumber();
    
    // we can reduce the code with single line like.
    /* 
      return simpleStorageList[_simpleStorageIndex].retrieveFavNumber();
    */
  }
   
}