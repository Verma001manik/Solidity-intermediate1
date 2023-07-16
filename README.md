# Solidity-intermediate1
# Introduction
This is a simple solidity script that uses revert(), assert() and require() keywords, this was the first project in the solidity intermediate couse from the metacrafters platform , the editor used was remix (https://remix.ethereum.org) and solidity was the programming language behind it .
# Description 
We used 3 methods in this program 
* require(): Used to validate certain conditions before further execution of a function. It takes two parameters as an input.
  ```
  require(<condition to be validated> , <message to be displayed if the condition fails>);
  ```
* assert() takes only one parameter as input. You pass a condition to assert(), and if the condition is true, then the function execution continues and the execution jumps to the next statement in the function
  ```
  assert(<condition to be checked/validated>);
  ```
* revert(): Can be used to flag an error and revert the current call. You can also provide a message containing details about the error, and the message will be passed back to the caller. However, the message, like in require(), is an optional parameter

  # Getting started
  To run the script :
  * Go to https://remix.ethereum.org
  * Create a name .sol file
  * Copy paste the code
  * Compile the code
  * Deploy the code
  * finish

# License
This project is licensed under the MIT LICENSE
    
