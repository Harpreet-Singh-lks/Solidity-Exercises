// SPDX-License-Identifier: MIT
pragma solidity ^0.8.13;

contract CodeSize {
    uint256 public hello;
    uint256[256] public largeArray; // Large array to increase size

    mapping(address => mapping(string => uint256)) btfs;

    function upload(uint256 CID) public pure {
        require(CID != 0, "your CID is wrong");
    }

    function sumofallterms() public pure returns (uint256) {
        uint256 sum = 0;
        for (uint256 i = 0; i <= 100; i++) {
            sum += i;
        }
        return sum;
    }

    function getX() public view returns (uint256) {
        return hello;
    }

    uint256 private fuckyouall;

    function func1() public pure returns (uint256) {
        return 1;
    }

    // Adding more functions to increase size
    function func2() public pure returns (uint256) {
        return 2;
    }

    function func3() public pure returns (uint256) {
        return 3;
    }

    function func4() public pure returns (uint256) {
        return 4;
    }

    function func5() public pure returns (uint256) {
        return 5;
    }

    function func6() public pure returns (uint256) {
        return 6;
    }

    function func7() public pure returns (uint256) {
        return 7;
    }

    function func8() public pure returns (uint256) {
        return 8;
    }

    function func9() public pure returns (uint256) {
        return 9;
    }

    function func10() public pure returns (uint256) {
        return 10;
    }

    // Adding repeated code blocks
    function repeatedCode1() public pure returns (uint256) {
        uint256 sum = 0;
        for (uint256 i = 0; i < 100; i++) {
            sum += i;
        }
        return sum;
    }

    function repeatedCode2() public pure returns (uint256) {
        uint256 sum = 0;
        for (uint256 i = 0; i < 100; i++) {
            sum += i;
        }
        return sum;
    }

    function repeatedCode3() public pure returns (uint256) {
        uint256 sum = 0;
        for (uint256 i = 0; i < 100; i++) {
            sum += i;
        }
        return sum;
    }

    // Adding more state variables
    uint256 public var1;
    uint256 public var2;
    uint256 public var3;
    uint256 public var4;
    uint256 public var5;
    uint256 public var6;
    uint256 public var7;
    uint256 public var8;
    uint256 public var9;
    uint256 public var10;
}
