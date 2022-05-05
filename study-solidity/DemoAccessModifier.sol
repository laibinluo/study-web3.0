// SPDX-License-Identifier: GPL-3.0

pragma solidity >=0.7.0 < 0.9.0;

contract DemoAccessModifier {
    uint num = 0;
    function publicFunc() public {
        num ++;
    }

    function callPublicFunc() public returns(uint) {
        publicFunc();

        this.publicFunc();
        return num;
    
    }

    function privateFunc() private {
        num --;
    }

    function callPriFunc() public returns(uint) {
        privateFunc();
        return num;
    }

    function externalFunc() external {
        num ++;
    }

    function callExtFunc() public returns(uint) {
        this.externalFunc();
        return num;
    }
}

contract A {
    uint public num = 0;
    function internalFunc() internal {
        num ++;
    }

    function callFunc() public virtual {
        internalFunc();
    }
}

contract B is A {
    function callFunc() public override {
        internalFunc();
    }
}