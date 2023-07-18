// SPDX-License-Identifier: MIT
pragma solidity ^0.8.0;

contract DepositWithdrawContract {
    int256 public totalAmount;

    function deposit(int256 amount) external {
        require(amount > 0, "Deposit amount must be greater than zero");

        // Use assert to check that totalAmount remains non-negative after the deposit
        assert(totalAmount + amount >= totalAmount);

        totalAmount += amount;
    }

    function withdraw(int256 amount) external {
        require(amount <= totalAmount, "Insufficient funds");

        // Use assert to check that totalAmount remains non-negative after the withdrawal
        assert(totalAmount - amount >= 0);

        totalAmount -= amount;
    }
    uint public num=1;

    function Asserting() public view {
        
        assert(num == 3);
    }
    function assertNonNegative(int256 value) public  pure {
        assert(value >= 0);
    }

    function triggerRevert() external pure {
        // Use revert to explicitly trigger a revert with a custom message
        revert("This transaction explicitly reverted.");
    }
}

