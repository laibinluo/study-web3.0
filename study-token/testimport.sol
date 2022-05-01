// SPDX-License-Identifier: GPL-3.0

pragma solidity >=0.7.0 < 0.9.0;

contract DemoC {
    string thirdName = "thirdXXX";

    function getThirdName() public view returns(string memory ) {
        return thirdName;
    } 
}