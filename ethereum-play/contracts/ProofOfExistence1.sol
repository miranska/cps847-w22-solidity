pragma solidity >=0.5.0 <0.9.0;

// Proof of Existence contract, version 1
contract ProofOfExistence1 {
    // state
    bytes32 public proof;
    // calculate and store the proof for a document
    // *transactional function*
    function notarize(string memory document) public {
        proof = proofFor(document);
    }
    // helper function to get a document's sha256
    // *read-only function*
    // constant is replaced by
    //   view -- can access the contract storage
    //   pure -- cannot access the contract storage
    function proofFor(string memory document) public pure returns (bytes32) {
        return sha256(bytes(document));
    }
}
