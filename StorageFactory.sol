// SPDX-License-Identifier: MIT 

pragma solidity ^0.8.18;

import {SargeSimpleStorage} from "./SimpleStorage.sol"; // Named import - importing my SargeSimpleStorage (Specific) contract from my SimpleStorage.sol file 

contract StorageFactory {
    
    SargeSimpleStorage[] public listOfSimpleStorageContracts;
    
    function createSimpleStorageContract() public {
        SargeSimpleStorage newSimpleStorageContract = new SargeSimpleStorage(); // 'new' keyword is used to deploy a contract
        listOfSimpleStorageContracts.push(newSimpleStorageContract);
    }
    
    function sfStore(uint256 _simpleStorageIndex, uint256 _newSimpleStorageNumber) public {
        // Address 
        // ABI - Application Binary Interface
        // SimpleStorage(address(listOfSimpleStorageContracts[_simpleStorageIndex])).store(_simpleStorageNumber);
        listOfSimpleStorageContracts[_simpleStorageIndex].store(_newSimpleStorageNumber);
    }
    
    function sfGet(uint256 _simpleStorageIndex) public view returns (uint256) {
        // return SimpleStorage(address(listOfSimpleStorageContracts[_simpleStorageIndex])).retrieve();
        return listOfSimpleStorageContracts[_simpleStorageIndex].retrieve();
    }
}