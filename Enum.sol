// SPDX-License-Identifier: MIT
pragma solidity ^0.8.18;

    // Enum representing shipping status
    enum Status {
        Pending,
        Shipped,
        Accepted,
        Rejected,
        Canceled
    }

contract Enum {
    // Solidity supports enumerables and they are useful to model choice and keep track of state.
    // Enums can be declared outside of a contract.

    // Enums can also be declared in a file(eg EnumDeclaration.sol) then imported into the contract

    // Default value is the first element listed in
    // definition of the type, in this case "Pending"
    Status public status;

    // Returns uint
    // Pending  - 0
    // Shipped  - 1
    // Accepted - 2
    // Rejected - 3
    // Canceled - 4
    function get() public view returns (Status) {
        return status;
    }

    // Update status by passing uint into input
    function set(Status _status) public {
        status = _status;
    }

    // You can update to a specific enum like this
    function cancel() public {
        status = Status.Canceled;
        // Set status to Canceled => 4
    }
    // function reject() public {
    //     status = Status.Rejected;
    //     // Set status to Rejected => 3
    // }
    // function accept() public {
    //     status = Status.Accepted;
    //     // Set status to Canceled => 2
    // }
    // function ship() public {
    //     status = Status.Shipped;
    //     // Set status to Shipped => 1
    // }
    // function pend() public {
    //     status = Status.Pending;
    //     // Set status to Pending => 0
    // }

    

    // delete resets the enum to its first value, 0
    function reset() public {
        delete status;
    }
}