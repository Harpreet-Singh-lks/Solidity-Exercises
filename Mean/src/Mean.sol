// SPDX-License-Identifier: BUSL-1.1
pragma solidity ^0.8.13;

contract Mean {
    /**
     * The goal of this exercise is to return the mean of the numbers in "arr"
     */
    function mean(uint256[] calldata arr) public pure returns (uint256) {
        // your code here
        uint256 x=0;
        for(uint256 i=0;i<arr.length;i++){
            x=x+arr[i];
        }
        return x/arr.length;
    }
}
