// SPDX-License-Identifier: GPL-3.0

pragma solidity >=0.7.0 < 0.9.0;


contract DemoModeifier {
    address public owner;
    uint public a;

    modifier countModifier() {
        a++;
        _;
        a--;
    }

    function runCount() public countModifier() returns(uint) {
        uint b = a;
        return b;
    }

    constructor() {
        owner = msg.sender;
    }

    modifier ownerOnly(address addr) {
        require(addr == owner);
        _;
    }

    function useSuperPowers() public ownerOnly(msg.sender) countModifier() {
        a= 10;
    }


}