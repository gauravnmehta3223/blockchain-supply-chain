# Blockchain Inventory Management

A supply-chain tracker that records each step of a product's journey on an Ethereum smart contract, so a buyer can check whether a product is genuine.

Five roles hand the product along the chain: **manufacturer → transporter → distributor → vendor → customer**. Each role adds its step on-chain. The `checkgenuine(productId)` function then confirms whether a product ID was registered by a manufacturer.

## What's in the repository

| Folder | What it is |
| --- | --- |
| `contracts/smart_contract.sol` | The `ProductDetails` Solidity contract (0.8.18). It stores each step and emits an event for it. |
| `scripts/deploy.js` | Deploys the contract and runs a sample product through every step |
| `trustdrive/` | React front end with a login and dashboard for each role |
| `trustdrive_server/` | Express API that stores user accounts in PostgreSQL |

## Run it locally

You need Node.js 16+, PostgreSQL and MetaMask.

1. Clone the repository and install the dependencies:
   ```bash
   git clone https://github.com/Gmehta604/Blockchain-Inventory-Management.git
   cd Blockchain-Inventory-Management
   npm install
   (cd trustdrive && npm install)
   (cd trustdrive_server && npm install)
   ```
2. Start a local blockchain and deploy the contract (in a separate terminal):
   ```bash
   npx hardhat node
   npx hardhat run scripts/deploy.js --network localhost
   ```
3. Create the database and start the API:
   ```bash
   createdb miniproject
   psql -d miniproject -f trustdrive_server/schema.sql
   cd trustdrive_server
   PGPASSWORD=your_postgres_password npm run dev
   ```
   The server reads `PGUSER`, `PGHOST`, `PGPORT` and `PGDATABASE` too. They default to `postgres`, `localhost`, `5433` and `miniproject`.
4. Start the front end:
   ```bash
   cd trustdrive
   npm start
   ```

### Optional: deploy to the Sepolia test network

Create a `.env` file in the repository root. Never commit this file.
```
SEPOLIA_URL=https://your-rpc-provider-url
PRIVATE_KEY=your_test_wallet_private_key
```
Then run `npx hardhat run scripts/deploy.js --network sepolia`.

## Limitations

- This is a student project, not production code.
- The API stores passwords as plain text and builds SQL queries from strings. A real deployment would need password hashing and parameterized queries.
- There are no automated tests yet.
