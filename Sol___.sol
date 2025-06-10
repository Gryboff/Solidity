// SPDX-License-Identifier: MIT
pragma solidity ^0.8.13;

contract Sol_ {
   



   string message = "Hello World";

   function setMessage(string memory newMessage) public {
    message = newMessage;

   }



    function getMesage() public  view returns (string memory ){
        
        return message;
    }


  

    function rate(uint _amount) external pure  returns (uint) {
        return _amount * 560 / 100;

    }
}    