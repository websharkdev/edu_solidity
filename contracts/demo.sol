// SPDX-License-Identifier: MIT

pragma solidity ^0.8.0;

contract Demo {
    address owner;
    mapping (address => uint) public payments;

    constructor() {
        owner = msg.sender;
    }

    function pay() public payable {
        payments[msg.sender] = msg.value;
    }

    function withdraw() public {
        address payable _to = payable(owner);
        address _thisContract = address(this);
        _to.transfer(_thisContract.balance);
    }
}