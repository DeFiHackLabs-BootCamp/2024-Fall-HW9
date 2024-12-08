// SPDX-License-Identifier: MIT
pragma solidity ^0.8.0;

interface IStabilityPool {
    function claimCollateralGains(address recipient, uint256[] calldata collateralIndexes) external;
    function claimReward(address recipient) external returns (uint256 amount);
    function provideToSP(uint256 _amount) external;
    function getTotalDebtTokenDeposits() external view returns (uint256);
}
