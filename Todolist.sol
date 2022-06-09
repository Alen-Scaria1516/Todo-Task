// SPDX-License-Identifier: MIT
pragma solidity 0.8.8; 
contract Todo{
    uint public  task_count  =0;
    struct todo
    {
        string title ;
        string description;
        uint256 timeCreatedAt;
        address createdBy;

    }
    todo[] public todolist;
    function addtodo(string memory _title, string memory _description) public
    {
        todolist.push(todo(_title,_description,block.timestamp,msg.sender));
        task_count++;

    }

    function donetodo(uint256 _index) public
    {
        delete todolist[_index];
        task_count--;
    }

    function updatetodo(uint256 _index,string memory _title, string memory _description ) public
    {
        delete todolist[_index];
        todolist[_index]= todo(_title,_description,block.timestamp,msg.sender);
    }

}
