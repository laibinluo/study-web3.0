//SPDX-License-Identifier: Unlicense
pragma solidity ^0.8.0;


contract Token {
    string public name = "My Token";
    string public symbol = "MTN";
    uint256 public totalSupply  = 1000000;

    address public owner;

    mapping (address=>uint) balances;

    constructor() {
       owner = msg.sender;
       balances[msg.sender] = totalSupply;
    }

    function transfer(address  to, uint amount) external {
        balances[msg.sender] -= amount;
        balances[to] += amount;
    } 

    function balancesOf(address account) external view returns(uint) {
        return balances[account];
    }
}
