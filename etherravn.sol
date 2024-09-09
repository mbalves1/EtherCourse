// etherRavn ICO
// SPDX-License-Identifier: UNLICENSED
// Version of compiler
pragma solidity ^0.8.27;

contract etherRavn {

    string fName;
    uint age;
    address owner;

    function EtherRavn() public {
        owner = msg.sender;
    }

    modifier onlyOwner {
        require(msg.sender == owner);
        _;
    }

    event Instructor(
        string name,
        uint age
    );

    function setInstructor(string memory _fName, uint _age) onlyOwner public {
        fName = _fName;
        age = _age;
        emit Instructor(_fName, _age);
    }

    function getInstructor() public view returns (string memory, uint) {
        return (fName, age);
    }
}