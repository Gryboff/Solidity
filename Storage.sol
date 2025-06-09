// SPDX-License-Identifier: MIT
pragma solidity ^0.8.19;

contract Storage{
    uint256 myFavoriteNumber;

    uint256[] ListOfFavoriteNumber;

    struct Person{
        uint256 favoriteNumber;
        string name;
    }

    Person[] public listOfPeople;

    //Person public myFriend = Person({favoriteNumber: 1, name: 'Pet'});

    function Stor(uint256 _favoriteNumber) public {
        myFavoriteNumber = _favoriteNumber;
    }

    function retrieve() public view returns (uint256){
        return myFavoriteNumber;
    }

    function addPerson(string memory _name, uint256 _favoriteNumber) public {   
       
        //Person memory newPerson = Person(_favoriteNumber, _name);
        listOfPeople.push(Person(_favoriteNumber, _name));
    }

}