// SPDX-License-Identifier: GPL-3.0

pragma solidity >=0.7.0 < 0.9.0;

contract DemoOverload{
    function overloadMethod(uint num) public pure returns(uint) {
        return num;
    }

    function overloadMethod(uint num, string memory str) public pure returns(uint, string memory) {
        return (num, str);
    }

    function overloadMethod(string  memory str) public pure returns(string memory) {
        return str;
    }
    function overloadMethod(string memory str, uint num) public pure returns(string memory, uint) {
        return (str, num);
    }
}