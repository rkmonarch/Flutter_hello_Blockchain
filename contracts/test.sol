pragma solidity >=0.4.22 <0.9.0;

// Creating a contract
contract test {
    uint256 private num1;
    uint256 public num2;
    string internal str;

    // Defining a constructor
    constructor() {
        num2 = 10;
    }

    // Defining a private function
    function increment(uint256 data1) private pure returns (uint256) {
        return data1 + 1;
    }

    // Defining public functions
    function updateValue(uint256 data1) public {
        num1 = data1;
    }

    function getValue() public view returns (uint256) {
        return num1;
    }
}

contract derived_contract is test {
    function setStr(string memory _str) public {
        str = _str;
    }

    function getStr() public returns (string memory) {
        return str;
    }
}

//External Contract
contract D {
    function readData() public payable returns (string memory, uint256) {
        test c = new derived_contract();
    }
}
