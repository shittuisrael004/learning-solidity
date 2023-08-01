 // SPDX-License-Identifier: MIT
pragma solidity ^0.8.18;

contract EtherUnits {

    /**
        Transactions are paid with ether.

        Similar to how one dollar is equal to 100 cent, one ether is equal to 10**18 wei(or 1e18).
     */

    uint public oneWei = 1 wei;
    // 1 wei is equal to 1 - 1 wei == 1e0 / 10**0
    bool public isOneWei = 1 wei == 1; // returns true

    uint public oneGwei = 1 gwei;
    // 1 gwei is equal to 10^9 wei - 1 gwei == 10**9
    bool public isOneGwei = 1 gwei == 1e9; // returns true

    uint public oneEther = 1 ether;
    // 1 ether is equal to 10^18 wei - 1 ether == 10**18
    bool public isOneEther = 1 ether == 1e18; // returns true

    // visit https://eth-converter.com/
}