// SPDX-License-Identifier: MIT
pragma solidity ^0.8.18;

contract IfElse {

    // Solidity supports conditional statements if, else if and else.
    // Ternary operator "?"

    function foo(uint x) public pure returns (uint) {
        if (x < 10) {
            return 0;
        } else if (x < 20) {
            return 1;
        } else {
            return 2;
        }
    }

    function ternary(uint _x) public pure returns (uint) {
        // if (_x < 10) {
        //     return 1;
        // }
        // return 2;

        // shorthand way to write if / else statement
        // the "?" operator is called the ternary operator
        return _x < 10 ? 1 : 2; // retuns '1' if value is less than 10 and '2' if value is greater than or equal to 10
    }
}