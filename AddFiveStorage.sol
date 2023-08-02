// SPDX-License-Identifier: MIT

pragma solidity ^0.8.18;

import {SargeSimpleStorage} from "./SimpleStorage.sol"; // Named import

contract AddFiveStorage is SargeSimpleStorage {
    // Inheritance - AddFiveStorage is gonna inherit everything (functions, state variables, e.t.c) from SargeSimpleStorage
    
    // function sayHello() public pure returns(string memory){
    //     return "Hello";
    // }

    // +5
    // overrides
    // virtual override
    
    function store(uint256 _newNumber) public override {
        myFavoriteNumber = _newNumber + 5;
    }
}