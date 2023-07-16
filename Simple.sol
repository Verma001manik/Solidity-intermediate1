// SPDX-License-Identifier: MIT
pragma solidity ^0.8.0;

contract DepositWithdrawContract {
    //public variable which has the totalamount //
    uint256 public totalAmount;

    //deposit takes 1 arguement : amount 
    function deposit(uint256 amount) external {
        // Use require to validate the deposit amount
        //amount>0 is the statement that is to be executed 
        require(amount > 0, "Deposit amount must be greater than zero");
        //the other parameter is the one which gets logged when the 1st param is failed//

        // Perform the deposit
        totalAmount += amount;
        //adds the amount to the totalamount
    }
    // takes 1 param as deposit 
    function withdraw(uint256 amount) external {
        // Use require to check if there are enough funds to withdraw
        require(amount <= totalAmount, "Insufficient funds");

        // Use assert to check an internal invariant
        //total amount should obviously be never less than 0 
        assert(totalAmount >= 0);

        // Perform the withdrawal
        //withdrawing amount from totalAmount
        totalAmount -= amount;
    }

    function triggerRevert() external pure {
        // Use revert to explicitly trigger a revert with a custom message
        revert("This transaction explicitly reverted.");
        //called when triggerRevert() is called 
    }
}
