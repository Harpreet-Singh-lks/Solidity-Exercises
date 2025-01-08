// SPDX-License-Identifier: BUSL-1.1
pragma solidity ^0.8.13;

contract Distribute {
    /*
        This exercise assumes you know how to sending Ether.
        1. This contract has some ether in it, distribute it equally among the
           array of addresses that is passed as argument.
        2. Write your code in the `distributeEther` function.
    */

    constructor() payable {}

    function distributeEther(address[] memory addresses) public payable {
        // your code here

        uint amount = address(this).balance/(addresses.length);
        for (uint i = 0;i<addresses.length;i++){
        (bool sent, bytes memory data ) = addresses[i].call{value: amount}("");
        require(sent, "transaction has failed");
        }

    }
}
