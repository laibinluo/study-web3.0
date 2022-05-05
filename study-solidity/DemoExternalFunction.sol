// SPDX-License-Identifier: GPL-3.0

pragma solidity >=0.7.0 < 0.9.0;

contract InfoFeed{
    function info() public payable returns(uint ret) {
        return msg.value;
    }

}


contract Consumer{
    function deposit() public payable returns(uint) {
        return msg.value;
    }

    function left() public view returns(uint) {
        return address(this).balance;
    }

    function callFeed(address addr) public returns(uint) {
        InfoFeed feed = InfoFeed(addr) ;
        return feed.info{value:10, gas:800}();
    }
}