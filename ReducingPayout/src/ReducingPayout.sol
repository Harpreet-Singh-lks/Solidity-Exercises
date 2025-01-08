// // SPDX-License-Identifier: BUSL-1.1
// pragma solidity ^0.8.13;

// contract ReducingPayout {
//     /*
//         This exercise assumes you know how block.timestamp works.
//         1. This contract has 1 ether in it, each second that goes by, 
//            the amount that can be withdrawn by the caller goes from 100% to 0% as 24 hours passes.
//         2. Implement your logic in `withdraw` function.
//         Hint: 1 second deducts 0.0011574% from the current %.
//     */

//     // The time 1 ether was sent to this contract
//     uint256 public immutable depositedTime;
//     uint256 public constant Duration = 86400;// total time in second 24*60*60=86400

//     constructor() payable {
//         depositedTime = block.timestamp;
//     }

//     function withdraw() public {
//         // your code here
//         uint256 timepassed = block.timestamp - depositedTime;
//         if(timepassed>= Duration){
//             payable(msg.sender).transfer(address(this).balance);

//         }else{
//             uint256 percentage = ((Duration - timepassed)* 1e6)/Duration;
//             uint256 amount = (percentage* address(this).balance)/1e6;
//             payable(msg.sender).transfer(amount);
//         }
        
//     }


// }

pragma solidity ^0.8.13;

contract ReducingPayout {
    uint256 public immutable depositedTime;
    uint256 public constant DURATION = 86400; // 24 hours in seconds
    uint256 public constant PERCENT_SCALE = 1e6; // Scaling factor for precision

    constructor() payable {
        depositedTime = block.timestamp;
    }

    function withdraw() public {
        uint256 timePassed = block.timestamp - depositedTime;

        if (timePassed >= DURATION) {
            // After 24 hours, nothing can be withdrawn
            return;
        }

        // Calculate remaining amount using fixed-point arithmetic
        uint256 reductionFactor = (timePassed * 11574) / (1000000000); // Equivalent to timePassed * 0.000011574
        uint256 amount = address(this).balance - ((address(this).balance * reductionFactor) / PERCENT_SCALE);

        payable(msg.sender).transfer(amount);
    }
}

