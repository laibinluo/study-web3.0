// SPDX-License-Identifier: GPL-3.0

pragma solidity >=0.7.0 < 0.9.0;

contract CreateEvent {
    string name;
    uint age;
    event DemoEvent (string  indexed _name, uint _age);

    function emitEvent() public {
        name = "lisi";
        age = 23;
        emit DemoEvent(name, age);
    }

    function tokeccak(string memory str) public pure returns(bytes32) {
        return keccak256(abi.encodePacked(str));
    }
}

// 0x7f202dc33fd3d35384acf6bef47b04affb50474bcff7d6645c7fa9c2a6c62fc3
// DemoEvent(string,uint)
//