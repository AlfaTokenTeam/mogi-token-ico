pragma solidity ^0.4.12;

import "./lib/BurnableToken.sol";
import "./lib/UpgradeableToken.sol";

contract MogiToken is BurnableToken, UpgradeableToken {

  string public name;
  string public symbol;
  uint public decimals;

  function MogiToken(address _owner)  UpgradeableToken(_owner) {
    name = "MogiToken";
    symbol = "MOG";
    totalSupply = 100000000000000000000000000;
    decimals = 18;

    balances[_owner] = totalSupply;
  }
}