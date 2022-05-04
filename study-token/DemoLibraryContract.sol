// SPDX-License-Identifier: GPL-3.0

pragma solidity >=0.7.0 < 0.9.0;

library CommonMethod {
    function sum(uint a, uint b) public pure returns(uint) {
        return a + b;
    }

    function sub(uint a, uint b) public pure returns(uint) {
        return a - b;
    }
}

contract DemoLibraryContract {
    function runMethod() public pure returns (uint, uint) {
        return (CommonMethod.sum(100, 200), CommonMethod.sub(400, 300));
    }
}
