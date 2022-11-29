// SPDX-License-Identifier: UNLICENSED
pragma solidity ^0.8.9;

contract FundContract {
    // steps: <<<<<= SINGLE SIGNER WALLET =>>>>>
    // 1. add ether to current contract address(0x3)
    // 2. fetch ether of contracts
    // 3. send ether to another address(0x2) from current contract(0x3)
    // 4. use event to detect balances
    // owner    : 0x1
    // receiver : 0x2
    // contract : 0x3

    event Transfer(address receiver, uint256 amount);
    // 1. 0x1 => 0x3
    function addEth() external payable {}
    // 2. 0x3
    function getEth() public view returns(uint256) {
        return address(this).balance;
    }
    // 3. 0x3 => 0x2
    function sendEth(address payable _receiver, uint256 _amount) public {
        _receiver.transfer(_amount);
        emit Transfer(_receiver, _amount);
    }
}
