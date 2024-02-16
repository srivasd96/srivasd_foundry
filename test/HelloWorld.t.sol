// SPDX-License-Identifier: UNLICENSED
pragma solidity ^0.8.13;

import "forge-std/Test.sol";
import "../src/HelloWorld.sol";

contract HelloWorldTest is Test {
    HelloWorld hello;

    function setUp() public {
        hello = new HelloWorld("Hello Foundry!!");
    }

    function test1() public {
	assertEq(hello.greet(), "Hello Foundry!!");
    }

    function test2() public {
	assertEq(hello.version(),0);
	hello.updateGreeting("Hola radiola");
	assertEq(hello.version(),1);
	assertEq(hello.greet(), "Hola radiola");
    }
}
