<<=>>===== RESULT (multi signer)======>>

1. getTransiction:  [
  [
    BigNumber { value: "0" },
    '0x90F79bf6EB2c4f870365E785982E1f101E93b906',    
    BigNumber { value: "10" },
    BigNumber { value: "0" },
    false,
    id: BigNumber { value: "0" },
    to: '0x90F79bf6EB2c4f870365E785982E1f101E93b906',
    amount: BigNumber { value: "10" },
    approval: BigNumber { value: "0" },
    sent: false
  ],
  [
    BigNumber { value: "1" },
    '0x15d34AAf54267DB7D7c367839AAf71A00a2C6A65',    
    BigNumber { value: "20" },
    BigNumber { value: "0" },
    false,
    id: BigNumber { value: "1" },
    to: '0x15d34AAf54267DB7D7c367839AAf71A00a2C6A65',
    amount: BigNumber { value: "20" },
    approval: BigNumber { value: "0" },
    sent: false
  ]
] 2. approveTransiction {
  hash: '0x7f644e491eb7d9003df0f8242c75a1e813d53158652f155d661e30bcdc432ef4',
  type: 2,
  accessList: [],
  blockHash: '0x9292232d96988cac1c62dc761350bc648ec88feff76b566e96bbf15a4c6e7f25',
  blockNumber: 4,
  transactionIndex: 0,
  confirmations: 1,
  from: '0xf39Fd6e51aad88F6F4ce6aB8827279cffFb92266',
  gasPrice: BigNumber { value: "1592623740" },
  maxPriorityFeePerGas: BigNumber { value: "1000000000" },
  maxFeePerGas: BigNumber { value: "2185247480" },
  gasLimit: BigNumber { value: "29021400" },
  to: '0x5FbDB2315678afecb367f032d93F642f64180aa3',
  value: BigNumber { value: "0" },
  nonce: 3,
  data: '0x843d49980000000000000000000000000000000000000000000000000000000000000000',
  r: '0x6f10a40c1bb8971cd0925116bc67444b114d3757b9c5cd469f47e144f57ce570',
  s: '0x6360a67dda00f7c5d61fdc6d22bafbff7c40f40bed15a704f208690a5c973eca',
  v: 1,
  creates: null,
  chainId: 31337,
  wait: [Function (anonymous)]
} 3. contract address:  0x5FbDB2315678afecb367f032d93F642f64180aa3




// const hre = require("hardhat");

// async function main() {
//   const [receiver] = await hre.ethers.getSigners();

//   const fundTransfer = await hre.ethers.getContractFactory("FundContract");
//   const fund = await fundTransfer.deploy();
//   await fund.deployed();

//   const addEth = await fund.addEth();
//   const getEth = await fund.getEth();
//   const sendEth = await fund.sendEth(receiver.address, 1000);

//   console.log("1. contract-address: ", fund.address);

// }

// main().catch((error) => {
//   console.error(error);
//   process.exitCode = 1;
// });