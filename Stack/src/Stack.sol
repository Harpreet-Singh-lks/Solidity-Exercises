// SPDX-License-Identifier: BUSL-1.1
pragma solidity ^0.8.13;

contract Stack {
    uint256[] private stack;

    constructor(uint256[] memory _stack) {
        stack = _stack;
    }

    // Push function: Adds a new value to the stack
    function push(uint256 value) public {
        stack.push(value);
    } 

    // Peek function: Returns the last element without removing it
    function peek() public view returns (uint256) {
        require(stack.length > 0, "Stack is empty");
        return stack[stack.length - 1];
    }

    // Pop function: Removes and returns the last element
    function pop() public returns (uint256) {
        require(stack.length > 0, "Stack is empty");
        uint256 value = stack[stack.length - 1];
        stack.pop();
        return value;
    }

    // Size function: Returns the number of elements in the stack
    function size() public view returns (uint256) {
        return stack.length;
    }

    // GetStack function: Returns the entire stack
    function getStack() public view returns (uint256[] memory) {
        return stack;
    }
}
