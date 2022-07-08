// SPDX-License-Identifier: UNLICENSED
pragma solidity ^0.8;

contract StoreMessage {
  string public message;
  
  constructor () {
    message = "Hello, There";
  }

  function setMessage (string memory _message) public {
    message = _message;
  }

}
