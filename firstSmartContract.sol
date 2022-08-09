//SPDX-License-Identifier: MIT
pragma solidity 0.8.8; //0.8.15 latest

contract simpleStorage {
    // boolean,uint,int,address,bytes
    bool hasFavNo = true;
    uint256 public favNo = 3;
    string favNoText = "Three";
    int256 favInt = -7;
    address myAddress = 0xB4252Cf4B1e4DC30f5D02Aa40fa47CA96a8967b3;
    bytes32 favBytes = "cat";

    //gets initialised to zero
    uint256 favNo2;

    mapping(string => uint256) public favNoToName;

    function store(uint256 _favNo) public {
       favNo = _favNo;
    }

    function retrieve () public view returns(uint256){
        return favNo;
    }

    function add() public pure returns(uint256){
        return(1+1);
    }

    struct people {
        uint256 favNo;
        string name;
    }

    people public person = people({favNo: 2, name: "john"});

    // for array
    uint256[] public favNo3;
    //also
    people[] public peopleq;

    function addPerson(uint256 _favNo, string memory _name) public {
        people memory newPersen = people({favNo : _favNo , name : _name});
        peopleq.push(newPersen);
        favNoToName[_name] = _favNo;
    }
}

//0xd9145CCE52D386f254917e481eB44e9943F39138  for contract