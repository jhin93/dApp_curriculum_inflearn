// SPDX-License-Identifier: MIT
pragma solidity >=0.4.22 <0.9.0;

contract RealEstate {
    struct Buyer {
        address buyerAddress;
        string lessor;
        string lessee;
        string leaseType;

        uint deposit;
    }
    
    mapping (uint => Buyer) public buyerInfo;
    address payable public owner;
    address[10] public buyers;

    event LogBuyRealEstate(
        address _buyer,
        uint _id
    );

    constructor() public {
        owner = msg.sender;
    }

    function buyRealEstate(uint _id, string memory _lessor, string memory _lessee, string memory _leaseType, uint _deposit) public payable {
        require(_id >= 0 && _id <= 9);
        buyers[_id] = msg.sender;
        buyerInfo[_id] = Buyer(msg.sender, _lessor, _lessee, _leaseType, _deposit);

        owner.transfer(msg.value);
        emit LogBuyRealEstate(msg.sender, _id);
    }

    function getBuyerInfo(uint _id) public view returns(address, string memory, string memory, string memory, uint){
        Buyer memory buyer = buyerInfo[_id];
        return (buyer.buyerAddress, buyer.lessor, buyer.lessee, buyer.leaseType, buyer.deposit);
    }

    function getAllBuyers() public view returns (address[10] memory) {
        return buyers;
    }
}
