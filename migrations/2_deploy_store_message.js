const StoreMessage = artifacts.require("StoreMessage");

module.exports = function (deployer) {
  deployer.deploy(StoreMessage);
};
