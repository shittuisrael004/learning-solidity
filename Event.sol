// SPDX-License-Identifier: MIT
pragma solidity ^0.8.18;

contract Event {

    //  Events allow logging to the Ethereum blockchain. Some use cases for events are:
    //      1. Listening for events and updating user interface
    //      2. A cheap form of storage

    //  Event declaration
    //  Up to 3 parameters can be indexed.
    //  Indexed parameters helps you filter the logs by the indexed parameter

    // In summary, the indexed keyword in the context of event parameters helps 
    // optimize event log storage and retrieval for specific values, enhancing 
    // the efficiency of querying events based on those values.

    event Log(address indexed sender, string message);
    event AnotherLog();

    function test() public {
        emit Log(msg.sender, "Hello World!");
        emit Log(msg.sender, "Hello EVM!");
        emit AnotherLog();
    }
}