// SPDX-License-Identifier: GPL-3.0

pragma solidity >=0.7.0 < 0.9.0;

contract DemoAddress {
    address addr = 0xB90f13d7a7cc25675b99537A4f435324c909b04C;

    function getAddress () public view returns(address) {
        return addr;
    }


    function getSelfAddress() public view returns(address) {
        return msg.sender;
    }

    function getCompareResult() public view returns(bool) {
         return msg.sender == addr;
    } 


    // function getKeccakStr(string _str) public pure returns(bytes32) {
    //     bytes32 result = keccak256(_str);
    //     return result;
    // }

    // function getSHAStr(string _str) public pure returns(bytes32) {
    //     bytes32 result = sha256(_str);
    //     return result;
    // }


}