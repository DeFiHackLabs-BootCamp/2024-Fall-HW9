// SPDX-License-Identifier: MIT
pragma solidity ^0.8.0;

interface IPriceFeed {
    function fetchPrice(address) external view returns (uint256);
}
