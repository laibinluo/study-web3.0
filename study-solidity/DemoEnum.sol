// SPDX-License-Identifier: GPL-3.0

pragma solidity >=0.7.0 < 0.9.0;

contract DemoEnum{
    enum Actionchoices {GoLeft, GoRight, GoStraight, sitStill}

    Actionchoices choice;

    Actionchoices defaultChoice = Actionchoices.GoStraight;

    function setGoStraight() public {
        choice = Actionchoices.GoStraight;
    }

    function setGoRight() public {
        choice =  Actionchoices.GoRight;
    }

    function getChoice() public view returns(Actionchoices) {
        return choice;
    }

    function getDefaultChoice() public view returns (uint) {
        return uint(defaultChoice);
    }
}