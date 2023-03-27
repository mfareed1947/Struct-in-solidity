// SPDX-License-Identifier: MIT

pragma solidity ^0.8.8;

struct student {
    uint256 roll;
    string name;
}

contract demo {
    student public s1;

    constructor(uint256 _roll, string memory _name) public {
        s1.roll = _roll;
        s1.name = _name;
    }

    function change(uint256 _roll, string memory _name) public {
        student memory newStudent = student({
            roll:_roll,
            name: _name
        });
    s1 = newStudent;
    }
}
