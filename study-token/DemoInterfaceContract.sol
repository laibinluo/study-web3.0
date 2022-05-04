// SPDX-License-Identifier: GPL-3.0

pragma solidity >=0.7.0 < 0.9.0;

interface Bank{
    function saveMoney(uint _money) external;
    function withdrawMoney(uint _money) external returns(uint);
}

contract ICBCBank is Bank {
    uint public money;
    function saveMoney(uint _money) external override {
        money = money + _money;
    }
    function withdrawMoney(uint _money) external override returns(uint) {
        money = money - _money;
        return _money;
    }
}