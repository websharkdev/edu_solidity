// SPDX-License-Identifier: MIT

pragma solidity ^0.8.0;

contract Demo {
    bool public myBool; // initial (false)

    // unsigned integers
    uint public myUint = 42; // uint = uint256 > 256 is maximum of bit > 2 ** 256
    uint8 public mySmallUint = 2; // 0 > 256 - 1 > 2 ** 8


    // signed integers
    int public myInt = -42;
    int8 public mySmallInt = -1; // 1 bit (sign > -) else 7 bit it's our number > 2 ** 7 = 128 >> - 128 > (128 - 1)

    // 

    // function demo(uint _inputUint) public {
    //     uint localUint = 42;

    //     localUint / 2; // if localUint without (.) >> 414095 >> if we divided by 2, we get >> 207047
    //     localUint ** 3; // SQR
    // }


    // to get minimum && maximum
    uint public minimum;
    uint public maximum;

    function demo() public {
        minimum = type(uint).min; // is 0
        maximum = type(uint).max; // is 115792089237316195423570985008687907853269984665640564039457584007913129639935
    }

    // if more then max

    uint8 public myVal = 254;

    function inc() public {
        // myVal += 1;

        unchecked {
            myVal++; // if more then 255 > 0
        }

        // myVal++; if more then 255 > error
    }
}