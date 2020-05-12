pragma solidity ^0.6.0;

import "openzeppelin-solidity/contracts/token/ERC20/ERC20.sol";

contract SimpleToken is ERC20 {
    constructor(
        string memory name,
        string memory symbol,
        uint8 decimals,
        uint256 initSupply
    )
        public
        ERC20(name, symbol)
    {
        _setupDecimals(decimals);
        _mint(msg.sender, initSupply);
    }
}