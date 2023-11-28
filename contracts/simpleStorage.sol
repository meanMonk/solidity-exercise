// SPDX-License-Identifier: MIT

pragma solidity ^0.8.0;

contract SimpleStorage {
  
  uint256 public favNumber;
  
  // persons list array 
  // need to remember the person index. 
  People[] public personList;
  
  // mapping solves the above issue - can fetch the num based on name
  
  mapping(string => uint256) personToFavNum;
  
  // prepare structure for storing the person details.
  struct People {
    uint256 favNumber; 
    string name;
  }
  
  function setFavNumber(uint256 _favNumber) public virtual {
    favNumber = _favNumber;
  }
  
  function retrieveFavNumber() public view returns(uint256) {
    return favNumber;
  }
  
  function addPerson(string calldata _name,  uint256 _favNumber ) public {
    personList.push(People(_favNumber, _name)); 
    personToFavNum[_name] = _favNumber;
  }
}