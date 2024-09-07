// etherRavn ICO
// SPDX-License-Identifier: UNLICENSED
// Version of compiler
pragma solidity ^0.8.27;

contract etherRavn {

    string fName;
    uint age;

    function setInstructor(string memory _fName, uint _age) public {
        fName = _fName;
        age = _age;
    }

    function getInstructor() public view returns (string memory, uint) {
        return (fName, age);
    }
}