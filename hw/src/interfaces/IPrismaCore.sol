// SPDX-License-Identifier: MIT
pragma solidity ^0.8.0;

interface IPrismaCore {
    function priceFeed() external view returns (address);
}
