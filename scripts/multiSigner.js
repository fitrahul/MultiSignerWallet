const hre = require("hardhat");

async function main() {
  const [owner1,owner2,owner3,to1,to2] = await hre.ethers.getSigners();

  const ethTransfer = await hre.ethers.getContractFactory("ethTransfer");
  const eth = await ethTransfer.deploy([owner1.address,owner2.address,owner3.address], 2);
  await eth.deployed();

  // 1.
  const getOwners = await eth.getOwners();

  // 2.
  const addTransiction1 = await eth.addTransiction(to1.address,10);
  const addTransiction2 = await eth.addTransiction(to2.address,20);
  const getTransiction = await eth.getTransiction();

  // 3.
  const approveTransiction = await eth.approveTransiction(0);
  console.log("1. getTransiction: ", getTransiction,
"2. approveTransiction", approveTransiction,
"3. contract address: ", eth.address);
}

main().catch((error) => {
  console.error(error);
  process.exitCode = 1;
});
