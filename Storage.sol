// SPDX-License-Identifier: MIT
pragma solidity ^0.8.19;

contract SimpleStorage{

    uint256 public myFavoriteNumber;

    Person[] public listOfPeople;

    mapping (string => uint256) public nameToFavoriteNumber;

    struct Person{
        uint256 favoriteNumber;
        string name;
    }

        
    function Stor(uint256 _favoriteNumber) public {
        myFavoriteNumber = _favoriteNumber;
    }

    function retrieve() public view returns (uint256) {
        
        return myFavoriteNumber;
    }

    function addPerson(string memory _name, uint256 _favoriteNumber) public {
        
        listOfPeople.push(Person(_favoriteNumber, _name));

        nameToFavoriteNumber[_name] = _favoriteNumber;
    }

    
}