// SPDX-License-Identifier: MIT
pragma solidity ^0.8.0;

/*
    Some of my passwords are safe with me. I'm not going to tell you what they are!
    
    Detect any returns of my private passwords and report it as a vulnerability.
*/

contract Challenge2 {
    string constant public password1 = "hunter2";
    string private password2;
    string private password3;
    string public password4;
    string private password5;
    string private password6;
    string public password7;



    function good1() public pure returns (string memory) {
        return password1;
    }

    function good2() public view returns (string memory) {
        return password4;
    }

    function good3() public view returns (string memory) {
        return password7;
    }

    function bad1() public view returns (string memory) {
        return password2;
    }

    function bad2() public view returns (string memory) {
        return password3;
    }

    function bad3() public view returns (string memory) {
        return password5;
    }

    function bad4() public view returns (string memory) {
        return password6;
    }


    function good4_bonus() public view returns (string memory password2) {
        // Don't detect this one
    }
}