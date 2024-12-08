// SPDX-License-Identifier: MIT
pragma solidity ^0.8.0;

import "./ITroveManager.sol";

interface IBorrowerOperations {
    function getGlobalSystemBalances() external returns (uint256 totalPricedCollateral, uint256 totalDebt);
    function getTCR() external returns (uint256 globalTotalCollateralRatio);
    function openTrove(
        address troveManager,
        address account,
        uint256 _maxFeePercentage,
        uint256 _collateralAmount,
        uint256 _debtAmount,
        address _upperHint,
        address _lowerHint
    ) external;
    function closeTrove(
      ITroveManager,
      address account
    ) external;
    function DEBT_GAS_COMPENSATION() external view returns (uint256);
    function debtToken() external view returns (address);
    function minNetDebt() external view returns (uint256);
    function checkRecoveryMode(uint256) external view returns (bool);
    function adjustTrove(
        ITroveManager troveManager,
        address account,
        uint256 _maxFeePercentage,
        uint256 _collDeposit,
        uint256 _collWithdrawal,
        uint256 _debtChange,
        bool _isDebtIncrease,
        address _upperHint,
        address _lowerHint
    ) external;
}
