// SPDX-License-Identifier: MIT
pragma solidity ^0.8.18;

//  Import
//  You can import local and external files in Solidity.

//  Local: files are in the same directory

//  External: You can also import from GitHub by simply copying the url e.g import "https://github.com/owner/repo/blob/branch/path/to/Contract.sol";

// import Foo.sol from current directory
import "./Foo.sol";

// import {symbol1 as alias, symbol2} from "filename";
import {Unauthorized, add as func, Point} from "./Foo.sol";

contract Import {
    // Initialize Foo.sol
    Foo public foo = new Foo();

    // Test Foo.sol by getting it's name.
    function getFooName() public view returns (string memory) {
        return foo.name();
    }
}
