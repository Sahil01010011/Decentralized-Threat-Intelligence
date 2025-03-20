// SPDX-License-Identifier: UNLICENSED
pragma solidity ^0.8.0;

contract ThreatCounter {
    mapping(bytes32 => bool) private submittedHashes; // Tracks submitted threat hashes
    uint public totalSubmissions; // Counts total submissions

    function submitThreat(string memory hashInput) public {
        bytes32 hash = keccak256(abi.encodePacked(hashInput)); // Hash the input string to bytes32
        require(!submittedHashes[hash], "Hash already submitted"); // Revert if hash already submitted
        submittedHashes[hash] = true;
        totalSubmissions += 1;
    }

    function getTotalSubmissions() public view returns (uint) {
        return totalSubmissions;
    }
}
