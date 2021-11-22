// SPDX-License-Identifier: MIT

pragma solidity >=0.7.0 <0.9.0;

/**
 * @title ThirdContract
 * @dev Exploring constructor and mappings
 */
contract ThirdContract {
    mapping (uint => string) public names;
    mapping (uint => Book) public books;
    mapping (address => mapping(uint => Book)) public myBooks;
    
    struct Book {
        string title;
        string author;
    }
    
    constructor() {
        names[1] = "Sehwag";
        names[2] = "Sachin";
        names[3] = "Dravid";
        names[4] = "Ganguly";
        names[5] = "Yuvraj";
    }
    
    function addBook(uint _id, string memory _title, string memory _author) public {
        books[_id]=Book(_title,_author);
    }
    
    function addMyBook(uint _id, string memory _title, string memory _author) public {
        myBooks[msg.sender][_id]=Book(_title,_author);
    }
    
}
