// SPDX-License-Identifier: MIT
pragma solidity ^0.8.0;

contract Adoption{
    address [20] public adopters;

    function adopt(uint petId) public returns (uint) {
	require(petId >= 0 && petId <= 19);
    
	adopters[petId] = msg.sender;
	return petId;
    }

    function getAdopters() public view returns (address[20] memory) {
	return adopters;
    }
}