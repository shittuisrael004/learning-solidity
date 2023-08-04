// SPDX-Licence-Identifier: MIT

pragma solidity ^0.6.0;

// Solidity Versions 0.7 & 0.6 data types are unchecked, they can wrap which can cause overflow and underflow

contract SafeMathTester{
    uint8 public bigNumber = 255; 

    function add() public{
        bigNumber = bigNumber + 1;
    }
}

////////////////////
/// SAME AS ////////
////////////////////

// pragma solidity ^0.8.0;

// // Solidity Versions 0.8 solved the unchecked issue, they would revert an error incase of overflow or underflow

//  contract SafeMathTester{
//     uint8 public bigNumber = 255; 

//     function add() public{
//        unchecked { bigNumber = bigNumber + 1};
//        // with 'unchecked' keyword, this code will wrap, uint8 (255 + 1) == 0
//        // 'unchecked' saves gas, so use only when youre positive the values will not overflow or underflow
//     }
//  }