// SPDX-License-Identifier: MIT
pragma solidity ^0.8.18;

contract Constants {
    /*
    Constants are variables that cannot be modified.
    Their value is hard coded and using constants can save gas cost.
    */
    
    // coding convention to uppercase constant variables
    address public constant MY_ADDRESS = 0x5B38Da6a701c568545dCfcB03FcB875f56beddC4;
    uint public constant MY_UINT = 123;
}