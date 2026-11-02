// import('hardhat/config').HardhatUserConfig 

require("@nomicfoundation/hardhat-toolbox");

require("dotenv").config();


const SEPOLIA_URL = process.env.SEPOLIA_URL;
const PRIVATE_KEY = process.env.PRIVATE_KEY;

module.exports = {
  // solidity: "0.8.18",
  // The Sepolia network is only added when both values are set in .env,
  // so local development with `npx hardhat node` works without them.
  networks: SEPOLIA_URL && PRIVATE_KEY ? {
    sepolia: {
      url: SEPOLIA_URL,
      accounts: [PRIVATE_KEY],
    }
  } : {},
  solidity: {
    version: "0.8.18",
    settings: {
      optimizer: {
        enabled: true,
      }
    }
  }
};