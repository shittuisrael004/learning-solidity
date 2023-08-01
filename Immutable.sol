// SPDX-License-Identifier: MIT
pragma solidity ^0.8.18;

contract Immutable {
    // coding convention to uppercase constant variables
    address public immutable MY_ADDRESS;
    uint public immutable MY_UINT;

    constructor(uint _myUint) {
        MY_ADDRESS = msg.sender; // Contract Deployer address == msg.sender
        MY_UINT = _myUint; // Value entered in the constructor (_myUint) variable
    }
}
