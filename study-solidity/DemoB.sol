// SPDX-License-Identifier: GPL-3.0

pragma solidity >=0.7.0 < 0.9.0;

contract DemoB {
    string secondName = "wangwu";

    function getSecondName() public view returns(string memory ) {
        return secondName;
    } 
}

