// SPDX-License-Identifier: UNLICENSED
pragma solidity ^0.8.0;

contract ThreatCounter {
    mapping(bytes32 => bool) private submittedHashes; // Tracks submitted threat hashes
    uint public totalSubmissions; // Counts total submissions
    bytes32 private salt; // salt for hashing

    event ThreatSubmitted(bytes32 indexed hash, string hashInput); // Event to log submissions

    constructor(bytes32 _salt) {
        salt = _salt;
    }

    function submitThreat(string memory hashInput) public {
        require(bytes(hashInput).length > 0, "Input cannot be empty"); // Ensures the hash is not empty
        require(bytes(hashInput).length <= 100, "Input too long"); // Limit input length to 100 bytes
        bytes32 hash = keccak256(abi.encodePacked(hashInput, salt)); // Hash the input string to bytes32
        require(!submittedHashes[hash], "Hash already submitted"); // Revert if hash already submitted
        submittedHashes[hash] = true;
        totalSubmissions++;
        emit ThreatSubmitted(hash, hashInput); // Emit event
    }

    function getTotalSubmissions() public view returns (uint) {
        return totalSubmissions;
    }
}
