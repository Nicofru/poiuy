// SPDX-License-Identifier: MIT

pragma solidity ^0.8.0;
 
import "https://github.com/OpenZeppelin/openzeppelin-contracts/blob/master/contracts/token/ERC20/ERC20.sol";

contract AlyraToken is ERC20 {

    address public owner;

    modifier onlyOwner() {
        require(owner == msg.sender, "Access Token Denied");
        _;
    }

    constructor() ERC20("Fruneau Token", "FRUMOON") {
        owner = msg.sender;
        _mint(owner, 500000000000000000000000);
    }

    function myMint (address target, uint amount) onlyOwner() external{
        _mint(target, amount);
    }
}