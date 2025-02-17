// SPDX-License-Identifier: BUSL-1.1
pragma solidity ^0.8.13;

contract X {
    uint256 public constant x = 42;
}

contract Y {
    uint256 public constant y = 24;
}

contract MultiInheritance is X,Y {
    /**
     * The goal of this exercise is to use the functionality of contracts X and Y without pasting their code here or making an external call or delegate call
     */
    function avb() public view returns(uint256){
        return x;
        
    }
    function avc() public view returns(uint256){
        return y;

    }
    
}
