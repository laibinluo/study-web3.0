// SPDX-License-Identifier: GPL-3.0

pragma solidity >=0.7.0 < 0.9.0;

import "./CommonMethod.sol";

contract DemoLibraryContract {
    using CommonMethod for uint;
    uint number = 100;
    function runSum() public view returns(uint) {
        return number.sum(100);
    }

    function runSub() public view returns(uint) {
        return number.sub(10);
    }
}

