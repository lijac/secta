// SPDX-License-Identifier: MIT 
pragma solidity 0.6.12;

import "forge-std/Test.sol";
import "../src/Secta.sol";

contract SectaTest is Test {

  SectaToken secta;

  function setUp() public {
    secta = new SectaToken();
  }

  function testMint() public {
    console.logAddress(tx.origin);
    console.logAddress(msg.sender);
    console.logAddress(secta.owner());

    console.logAddress(address(this));
    secta.mint(address(this), 1000000 ether);
  }

  
}
