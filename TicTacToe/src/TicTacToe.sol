// SPDX-License-Identifier: BUSL-1.1
pragma solidity ^0.8.13;

contract TicTacToe {
    /* 
        This exercise assumes you know how to manipulate nested array.
        1. This contract checks if TicTacToe board is winning or not.
        2. Write your code in `isWinning` function that returns true if a board is winning
           or false if not.
        3. Board contains 1's and 0's elements and it is also a 3x3 nested array.
    */

    function isWinning(uint8[3][3] memory board) public pure returns (bool) {
        // your code here
        //check row 
        for(uint256 i=0;i<3;i++){
            if(board[i][0]==1 && board[i][1]==1 && board[i][2]==1){
                return true;
            }
        } 
        //check column
        for(uint256 i=0;i<3;i++){
            if(board[0][i]==1 && board[1][i]==1 && board[2][i]==1){
                return true;
            }
        } 
        //check for diagonals
        if ((board[0][0] == 1 && board[1][1] == 1 && board[2][2] == 1) || 
            (board[0][2] == 1 && board[1][1] == 1 && board[2][0] == 1)) {
            return true;
        }
        return false;
        }
}
