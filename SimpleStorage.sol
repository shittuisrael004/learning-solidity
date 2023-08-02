// SPDX-License-Identifier: MIT
pragma solidity ^0.8.18;

contract SargeSimpleStorage{
    //By Patrick Collins

    // Basic Types: boolean, uint, int, address, bytes
    // bool hasFavoriteNumber = true;
    // uint256 favoriteNumber = 12345;
    // string favoriteNumberInText = "qwertyuiop";
    // int256 favoriteInt = -12345;
    // address favoriteAddress = 0x5B38Da6a701c568545dCfcB03FcB875f56beddC4; 
    // bytes32 favoriteBytes = "dog"; //0x1234567
    // bytes != bytes32
    
    // This gets initiated to zero! Zero is the null and default value
    uint256 myFavoriteNumber; // defaulted to 0

    mapping(string => uint256) public nameToFavoriteNumber;
    // mapping is like a dictionary and it maps the key(string) to the value(uint256) in a variable(nameToFavoriteNumber)

    struct Person {
        uint256 favoriteNumber;
        string name;
    }

    // uint256[] public favoriteNumbersList;
    // Person public Isr = Person({favoriteNumber: 20, name: "Isr"});
    Person[] public listOfPeople; // dynamic array: size of array can go and shrink, dependent of the number of values
    // Person[4] public listOfPeopleStatic; // static array for only 4 values

    function store(uint256 _myFavoriteNumber) public virtual {
        myFavoriteNumber = _myFavoriteNumber;
    }

    // view(cant modify, but can read), pure(cant read, cant modify)
    function retrieve() public view returns(uint256){
        return myFavoriteNumber;
    }
    
    /*
    calldata: stores value for only duration of function(temporary) and cannot be modified after call
    memory: stores value for only duration of function(temporary) but can be modified after call
    storage: permanent variables that can be modified e.g myFavoriteNumber on line 14
    */

    function addPerson(string memory _name, uint256 _favoriteNumber) public {
        listOfPeople.push( Person(_favoriteNumber, _name) );
        nameToFavoriteNumber[_name] = _favoriteNumber;
    }
    
    // This is our contract address 0x75dB0F81442130bf29Ddb5dA5450A74067D54E46
}

contract SimpleStorage {
    // By SmartContractProgrammer

    // State variable to store a number
    uint public num;

    // You need to send a transaction to write to a state variable.
    function set(uint _num) public {
        num = _num;
    }

    // You can read from a state variable without sending a transaction.
    function get() public view returns (uint) {
        return num;
    }
}