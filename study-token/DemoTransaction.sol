// SPDX-License-Identifier: GPL-3.0

pragma solidity >=0.7.0 < 0.9.0;

contract DemoTransaction{
    uint number = 0;

    function pay() public payable {
        number ++;
    }

    function getNumber() public view returns(uint) {
        return number;
    }

    function getContractBalance() public view returns(uint) {
        return address(this).balance;
    }

    function getAccountBalance() public view returns(uint) {
        return msg.sender.balance;
    }

    function getContractAddress() public view returns(address) {
        return address(this);
    }

    function doTransfer(address payable _addr) public payable {
        _addr.transfer(msg.value);
    }

    function doTransferToConstract(address payable _addr) public payable {
        DemoContract demo = DemoContract(_addr);
        demo.pay{value:1 ether, gas:200}();

    }

    function getOneBalance(address addr) public view returns(uint) {
        return address(addr).balance;
    }

}

contract DemoContract {
    constructor() payable {

    }
    
    function pay() public payable {}

    function getBalance() public view returns (uint) {
        return address(this).balance;
    }
}