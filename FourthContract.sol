// SPDX-License-Identifier: MIT

pragma solidity >=0.7.0 <0.9.0;

/**
 * @title FourthContract
 * @dev Exploring conditionals and loops
 */
contract FourthContract {
    
    address public owner;
    
    constructor() {
        owner=msg.sender;
    }
    
    uint[] public numbers = [11,21,31,40,51,60,71,80,91,100];
    
    function countOddNumbers() public view returns (uint) {
        uint count = 0;

        for(uint i = 0; i < numbers.length; i++) {
            if ( isOddNumber(numbers[i])) {
                count = count + 1;
            }
 
        }
        return count;
    }
    
    function isOddNumber (uint _number) public view returns(bool) {
       if (_number % 2 == 1) { 
           return true;
       }
       else {
           return false;
       }
   }
   
   function isOwner() public view returns(bool) {
       return(msg.sender == owner);
   }
   
}
