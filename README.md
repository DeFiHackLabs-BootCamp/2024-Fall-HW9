# Assignment Instructions

This assignment contains one task. You are required to modify the following file to achieve the goal:  
- `hw/test/exploit.t.sol`

You are allowed to write and deploy additional contracts if necessary. However, **you are not allowed to use any Foundry cheatcodes**.

**The following file must not be modified**, as doing so will affect the grading process:  
- `hw/test/exploitBase.t.sol`

---

## Task 1: Liquidator in Prisma Finance

Prisma Finance is a protocol that allows users to open Troves and borrow stablecoins by collateralizing other collateral tokens. Recently, two users have opened new Troves with wstETH as collateral, and you have a significant amount of wstETH available. Your goal is to exploit the system’s mechanics and liquidate one of these users’ trove within a single block.

---

### **Goal**

Identify vulnerability or edge case in Prisma Finance's mechanism and accomplish the following:
- Liquidate one user's trove **within a single block**.

---


Good luck, and happy hacking!