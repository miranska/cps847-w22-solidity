// the file is created manually
var ProofOfExistence1 = artifacts.require("./ProofOfExistence1.sol");
var ProofOfExistence2 = artifacts.require("./ProofOfExistence2.sol");
module.exports = function(deployer) {
  deployer.deploy(ProofOfExistence1, {gas: 471200});
  deployer.deploy(ProofOfExistence2, {gas: 471200});
};
