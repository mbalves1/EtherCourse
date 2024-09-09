// SPDX-License-Identifier: MIT
pragma solidity 0.8.27;

contract Courses {
    struct Instructor {
        uint age;
        string fName;
        string lName;
    }

    mapping(address => Instructor) instructors;

    address[] public instrutorAccts;

    function setInstructor(address _address, uint _age, string memory _fName, string memory _lName) public {
        Instructor storage instructor = instructors[_address];

        instructor.age = _age;
        instructor.fName = _fName;
        instructor.lName = _lName;

        instrutorAccts.push(_address);
    }

    function getInstructors() view public returns (address[] memory) {
        return instrutorAccts;
    }

    function getInstructor(address _address) view public returns (uint, string memory, string memory) {
        return (instructors[_address].age, instructors[_address].fName, instructors[_address].lName);
    }
}