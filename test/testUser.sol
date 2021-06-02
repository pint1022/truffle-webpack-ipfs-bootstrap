pragma solidity >=0.5.0;

import "truffle/Assert.sol";
import "truffle/DeployedAddresses.sol";
import "../contracts/User.sol";

contract TestUser {
    function testUserCount() public {
        // Get the deployed contract
        User aUser = User(DeployedAddresses.User());

        // Call getGreeting function in deployed contract
        uint256 count = aUser.getUserCount();

        // Assert that the function returns the correct greeting
        Assert.equal(count, 1, "It should be 1.");
    }
}