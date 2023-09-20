// SPDX-License-Identifier: MIT
pragma solidity ^0.8.0;

/*
    Follow the help in the ../detector_template.py file in order to detect
    the hello_world method in this contract.

    Your output should look like:
        INFO:Detectors:
        HelloWorld.hello_world() (src/HelloWorld.sol#10-11) contains a hello_world function: HelloWorld (src/HelloWorld.sol#9-13)
        Reference: .
        INFO:Slither:. analyzed (5 contracts with 1 detectors), 1 result(s) found
*/

contract HelloWorld {
    function hello_world() public {
    }
}