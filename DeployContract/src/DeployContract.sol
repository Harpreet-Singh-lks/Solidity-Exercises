// SPDX-License-Identifier: BUSL-1.1
pragma solidity ^0.8.13;

contract Deployer {
    /*
        This exercise assumes you know how to deploy a contract.

        1. Deploy `DeployMe` contract and return the address in `deployContract` function.
    */

    function deployContract() public returns (address) {
        // your code here
        DeployMe deployme = new DeployMe("Hello World");
        return address(deployme);
    }
}

contract DeployMe {
    string public message;

    constructor(string memory _message) {
        message = _message;
    }

    function setMessage(string memory _message) public {
        message = _message;
    }
}

