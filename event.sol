// SPDX-License-Identifier: MIT
pragma solidity ^0.8.17;

contract Demo {
    address owner;
    constructor(){
        owner = msg.sender;
    }

    function Pay()external payable {}


function Withdrow(address payable  _to)external {
    require(msg.sender == owner, "You are not an owner");
    _to.transfer(address(this).balance);
}
}