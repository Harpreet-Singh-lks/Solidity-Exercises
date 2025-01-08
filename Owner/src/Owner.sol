// SPDX-License-Identifier: BUSL-1.1
pragma solidity ^0.8.13;

contract OnlyOwner {
    /*
        This exercise assumes you know how restrict a function call to an address.
        1. Restrict `updateMagicNumber` function call to only the address
           passed in the constructor.
    */
   ///// @@@@@@@@@@@@@@@@@@@@@@@@       restriction can done using modifier and other by

    address owner;
    uint256 public magicNumber;

    constructor(address _owner, uint256 _magicNumber) {
        owner = _owner;
        magicNumber = _magicNumber;
    }
    modifier OnlyOwner(){
        require(msg.sender == owner," caller is not owner");
        _;

    }
    function updateMagicNumber(uint256 _number) public OnlyOwner {
        magicNumber = _number;
    }
}
