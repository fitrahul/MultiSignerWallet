// SPDX-License-Identifier: UNLICENSED
pragma solidity ^0.8.9;

contract ethTransfer {
    function payToCurrentContract() public payable {}

    // steps=> create Multi Signer Wallet Contracts
    // 1. create Owner's who approve the transiction
    // and minimum number of owner's required for approval
    // 2. create array of transictions (contain many information so use struct)
    // 3. approve the transiction (also check same transiction not occur several times)

    function addEth() public payable {}

    // 1.
    address[] public owners;
    uint public threshold;

    constructor (address[] memory _owners,uint _threshold) {
        owners = _owners;
        threshold = _threshold;
    }

    function getOwners() public view returns(address[] memory) {
        return owners;
    }

    // 2.
    struct Transiction {
        uint id;
        address payable to;
        uint amount;
        uint approval; // use to compare with threshold
        bool sent;
    }

    Transiction[] public transictions;

    function addTransiction(address payable _to, uint _amount) public {
        transictions.push(Transiction(
            transictions.length,
            _to,
            _amount,
            0,
            false
        ));
    }

    function getTransiction() public view returns(Transiction[] memory) {
        return transictions;
    }

    // 3.
    modifier onlyOwner() {
        bool flag = false;
        for (uint256 index = 0; index < owners.length; index++) {
            if(owners[index] == msg.sender) flag = true;
        }
        require(flag, "Only Owner can approve Transictions");
        _;
    }

    function approveTransiction(uint _id) public onlyOwner{
        require(transictions[_id].sent == false, "Transiction already approve and done");
        transictions[_id].approval++;

        if(transictions[_id].approval >= threshold) {
            transictions[_id].sent = true;
            address payable to = transictions[_id].to; // fetch the address
            to.transfer(transictions[_id].amount);
        }
    }
}