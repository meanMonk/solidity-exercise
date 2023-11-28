// SPDX-License-Identifier: MIT
pragma solidity ^0.8.0;

import "./SimpleStorage.sol";

contract ExtraStorage is SimpleStorage {
  // set fav with +5
  // override
  // specifier -> virtual , overrride
  // virtual => to be used on function which we want to override in inheritance.
  
  
  function setFavNumber(uint256 _favNumber) public override {
    favNumber = _favNumber;
  }
  
}