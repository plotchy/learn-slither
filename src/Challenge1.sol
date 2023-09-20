// SPDX-License-Identifier: MIT
pragma solidity ^0.8.0;

/*
    I've found the future of finance. I am a genius! We're all gonna be rich!

    Detect any methods that sell the coin and report it as a vulnerability.
    - specifically, find any external calls from Challenge1 to the `sell` method of the `hposi` contract

    INFO:
        try `slither . --print slithir`
            breaks down each node into slithir format
        try `slither . --print slithir-ssa`
            if a node undergoes several updates/changes, it will be suffixed with `*_1`, `*_2`, etc.
        try `slither . --print dominator`
            shows the dominator tree of each function
*/

contract Challenge1 {
    HarryPotterObamaSonic10Inu public hposi;

    function good1() public {
        foo();
    }

    function good2() public {
        buy();
    }

    function good3() public {
        hposi.buy();
    }

    function good4() public {
        sell();
    }

    function bad1() public {
        hposi.sell();
    }



    function foo() public {}
    function buy() public {}
    function sell() internal {}
}

contract HarryPotterObamaSonic10Inu {
    function buy() external {}
    function sell() external {}
    function foo() external {}
    function bar() external {}
    function good_sell() external {
        this.sell();
    }
}