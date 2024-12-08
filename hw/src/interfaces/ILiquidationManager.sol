// SPDX-License-Identifier: MIT
pragma solidity ^0.8.0;

interface ILiquidationManager {
    function liquidate(address troveManager, address borrower) external;
}
