// SPDX-License-Identifier: GPL-3.0

pragma solidity >=0.7.0 < 0.9.0;

contract DemoException {
    uint public num = 0 ;

    function testRevert() public {
        num ++ ;
        if (num > 3) {
            revert("revert runned");
        }
        num ++;
    }

    function testAssert() public {
        num ++;
        assert(num < 13);
        num ++;
    }

    function testRequire() public {
        num ++;
        require(num < 23);
        num ++;
    }
}