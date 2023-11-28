// SPDX-License-Identifier: MIT
pragma solidity ^0.8.0;

/**
 * Get funds from users
 * withdraw funds
 * Set a min funding value in USD
 * 
 * 
*/

/* Learning */
/**
 * Transactions - Fields.  
 * 
 *  Nonce: tx count for the account
 *  GasPrice: price per unit of gas (in wei)
 *  GasLimit: max gas that this tx can use
 *  To: address that the tx is sent to
 *  Value: amount of wei to send
 *  Data: what to send to the address   /// valuetransfer data: empty // function call data: what to sent to the address.
 *  v,r,s: compoents of tx signture.
 * 
 * 
*/


contract FundMe {
  
  
  // payable. - you can access the msg.value and other things of contract
  function fund() public payable {
    // want to be able to set the min fund amount in USD.
    // 1. How do we send ETH to this contract.
    
    require(msg.value > 1e18, "Didn't send enough!"); // 1e18 = 1 * 10 ** 18 = 1000000000000000000
    
    // what is the reverting?
    // undo any action before, and send remaining gas back.
  } 
  
  // function withdraw() {
    
  // }
}