pragma solidity ^0.5.0;

contract TodoList {
  uint public taskCount = 0;

  struct Task {
    uint id;
    string content;
    bool completed;
  }

  mapping(uint => Task) public tasks;

  constructor() public {
    createTask("Byu some milk");
  }

  function createTask(string memory _content) public {
    taskCount += 1;
    tasks[taskCount] = Task(taskCount, _content, false);
  }
}
