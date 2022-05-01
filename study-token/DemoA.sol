// SPDX-License-Identifier: GPL-3.0

pragma solidity >=0.7.0 < 0.9.0;

import "./DemoB.sol";
import * as ti from "./testimport.sol";

contract DemoA {
    string name = "nobody";

    function setName(string memory _name) public {
        name = _name;
    }

    function getName() public returns(string memory, string memory, string memory) {
        DemoB b = new DemoB();
        string memory secondName = b.getSecondName();

        ti.DemoC c = new ti.DemoC();
        string memory thirdNmae = c.getThirdName(); 

        return(name, secondName, thirdNmae);
        
    }
}
