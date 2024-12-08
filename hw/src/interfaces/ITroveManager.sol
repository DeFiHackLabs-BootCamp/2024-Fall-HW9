// SPDX-License-Identifier: MIT
pragma solidity ^0.8.0;

interface ITroveManager {
    function getEntireSystemBalances() external returns (uint256, uint256, uint256);
    function openTrove(
        address _borrower,
        uint256 _collateralAmount,
        uint256 _compositeDebt,
        uint256 NICR,
        address _upperHint,
        address _lowerHint,
        bool _isRecoveryMode
    ) external returns (uint256 stake, uint256 arrayIndex);
    function CCR() external view returns (uint256);
    function DEBT_GAS_COMPENSATION() external view returns (uint256);
    function MCR() external view returns (uint256);
    function accountLatestMint(address) external view returns (uint32 amount, uint32 week, uint32 day);
    function borrowerOperationsAddress() external view returns (address);
    function debtToken() external view returns (address);
    function getBorrowingFeeWithDecay(uint256 _debt) external view returns (uint256);
    function getBorrowingRateWithDecay() external view returns (uint256);
    function getRedemptionRateWithDecay() external view returns (uint256);
    function fetchPrice() external returns (uint256);
    function getCurrentICR(address _borrower, uint256 _price) external view returns (uint256);
    function getTotalActiveCollateral() external view returns (uint256);
    function getEntireDebtAndColl(
        address _borrower
    ) external view returns (uint256 debt, uint256 coll, uint256 pendingDebtReward, uint256 pendingCollateralReward);
    function getEntireSystemColl() external view returns (uint256);
    function getEntireSystemDebt() external view returns (uint256);
    function getTroveCollAndDebt(address _borrower) external view returns (uint256 coll, uint256 debt);
    function redeemCollateral(
        uint256 _debtAmount,
        address _firstRedemptionHint,
        address _upperPartialRedemptionHint,
        address _lowerPartialRedemptionHint,
        uint256 _partialRedemptionHintNICR,
        uint256 _maxIter
    ) external;
}
