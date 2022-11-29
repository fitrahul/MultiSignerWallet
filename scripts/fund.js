const hre = require("hardhat");

async function main() {
  const [owner,receiver] = await hre.ethers.getSigners();

  const FundContract = await hre.ethers.getContractFactory("FundContract");
  const fundContract = await FundContract.deploy();
  await fundContract.deployed();

  // 1.
  const getEth = await fundContract.getEth();

  // 2.
  const sendEth = await fundContract.sendEth(receiver.address, 20);
  console.log("1. getEth: ", getEth,
"2. sendEth", sendEth,
"3. contract address: ", fundContract.address);
}

main().catch((error) => {
  console.error(error);
  process.exitCode = 1;
});
