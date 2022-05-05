// SPDX-License-Identifier: GPL-3.0

pragma solidity >=0.7.0 < 0.9.0;

contract DemoMapping {
    mapping (uint => string ) students;

    function pushStudent(uint id, string memory name) public {
        students[id] = name;
    }

    function getName(uint id) public view returns(string memory) {
        return students[id];
    }
}