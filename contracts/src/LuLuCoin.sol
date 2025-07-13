// SPDX-License-Identifier: MIT
// Compatible with OpenZeppelin Contracts ^5.0.0
pragma solidity ^0.8.20;

import {ERC20} from "@openzeppelin/contracts/token/ERC20/ERC20.sol";
import {Ownable} from "@openzeppelin/contracts/access/Ownable.sol";

contract LuLuCoin is ERC20, Ownable {
    // 铸造事件
    event Mint(uint256 indexed amount);
    // 销毁事件
    event Burn(uint256 indexed amount);

    string public _name = "LuLuCoin";
    string public _symbol = "LLC";

    // initialOwner: 初始的合约拥有者
    constructor(address initialOwner) ERC20(_name, _symbol) Ownable(initialOwner) {}

    // 发行代币
    function mint(uint256 _amount) public onlyOwner {
        _mint(owner(), _amount);
        emit Mint(_amount);
    }

    // 销毁代币
    function burn(uint256 _amount) public onlyOwner {
        _burn(msg.sender, _amount);
        emit Mint(_amount);
    }
}
