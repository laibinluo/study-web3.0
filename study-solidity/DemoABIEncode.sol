// SPDX-License-Identifier: GPL-3.0

pragma solidity >=0.7.0 < 0.9.0;

contract DemoABIEncode {
    uint storedData;

    function set(uint x) public {
        storedData = x;
    }

    function abiEncode() public pure returns(bytes memory) {
        return abi.encode(3423);
    }
}