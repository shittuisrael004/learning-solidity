// SPDX-License-Identifier: MIT

pragma solidity >=0.8.18 <0.9.0;
// compiler version must be greater than or equal to 0.8.17 and less than 0.9.0

contract HelloWorld {
    string greet = "Hello World!"; 
    // data-type = string, visibility = public, variable-name = greeting & value = "Hello, World!"

    function greeting() public view returns (string memory){
        return greet;
    }
}
