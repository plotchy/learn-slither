// SPDX-License-Identifier: MIT
pragma solidity ^0.8.0;

/*
    I'm doing math `onchain`! What a world we live in!

    Detect any useless math operations and report them as a vulnerability.

    INFO:
        suggest looking at <slither/slither/detectors/statements/divide_before_multiply.py>
*/

contract Challenge3 {
    uint public x;

    function foo() public {
        // Good
        x = 1 + 1;
        x = 1 - 1;
        x = 1 * 0;
        x = 0 / 2;

        // Bad
        x = x + 0;
        x = x * 1;
        x = x / 1;
        x = x - 0;

        // Bonus
        x = x + 1 - 1;
        x = x << 0;
    }
}