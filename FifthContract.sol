// SPDX-License-Identifier: MIT

pragma solidity >=0.7.0 <0.9.0;

/**
 * @title FifthContract
 * @dev Exploring ether, modifiers, visibility, events, enums
 */
contract FifthContract {
    
    enum Statuses { Vacant, Occupied }
    Statuses currentStatus;
    
    event Occupy(address _occupant, uint _value);
    
    address payable public owner;
    
    constructor() {
        owner = payable(msg.sender);
        currentStatus = Statuses.Vacant;
    }
    
    modifier onlyWhileVacant {
        require(currentStatus == Statuses.Vacant, "Currently Occupied");
        _;
    }
    
    modifier costs(uint _amount) {
        require(msg.value >= _amount, "Insufficient Ether.");
        _;
    }
    
    receive() external payable onlyWhileVacant costs(2 ether) {
        currentStatus = Statuses.Occupied;
        owner.transfer(msg.value);
        emit Occupy(msg.sender, msg.value);
    }
    
}
