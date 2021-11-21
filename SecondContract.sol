// SPDX-License-Identifier: MIT

pragma solidity >=0.7.0 <0.9.0;

/**
 * @title SecondContract
 * @dev Exploring advanced types of variables
 */
contract SecondContract {
    
    uint[] public uintArray = [0,10,20,30,40,50];
    string[] public stringArray = ["Sehwag","Sachin","Dravid","Ganguly"];
    uint[][] public uintArray2D = [[0,1,2],[1,10,20],[1,100,200]];
    string[] public stringEditableArray;
    
    function addValue(string memory _value) public {
        stringEditableArray.push(_value);
    }
    
    function valueCount() public view returns(uint) {
        return stringEditableArray.length;
    }
    
}
