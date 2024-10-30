// SPDX-License-Identifier: BUSL-1.1
pragma solidity ^0.8.13;

contract BasicBank {
    /// @notice deposit ether into the contract
    /// @dev it should work properly when called multiple times
    address payable public owner;

    constructor() payable{
        owner = payable(msg.sender);
    }
    function addEther() external payable {
    require(msg.value > 0, "value should be greater than 0");
    }

    /// @notice used to withdraw ether from the contract (No restriction on withdrawals)
    function removeEther(uint256 amount) external payable {
        require(msg.sender== owner, "caller is not owner");
        payable(msg.sender).transfer(amount);

    }
}
