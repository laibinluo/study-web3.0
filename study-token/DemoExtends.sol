// SPDX-License-Identifier: GPL-3.0

pragma solidity >=0.7.0 < 0.9.0;


 contract FatherA {
     uint public money = 1000;
 }

 abstract contract FatherB {
     function getMoney() public virtual returns(uint);
 }

 contract FatherC {
     function talk() public pure returns(string memory) {
         return "hello world";
     }
    
 }

 contract FatherD {
     uint public number;
     constructor (uint _number) {
         number = _number;
     }
 }

 contract FatherE{
     uint public number0;
     constructor(uint _number0) {
         number0 = _number0;
     }
 }

 contract Son is FatherA, FatherB, FatherC, FatherD(300), FatherE {
     constructor(uint _y) FatherE(_y) {
     }

     function getMoney() public view override returns(uint) {
         return money;
     }

     function getTalk() public  pure returns(string memory) {
         return super.talk();
     }
 }