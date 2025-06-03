# Blockchain Inventory Management System

A decentralized inventory management system built on blockchain technology to ensure product authenticity and traceability. This project combines smart contracts with a modern web interface to provide a secure and transparent way to manage product inventory.

## Project Structure

The project consists of three main components:

1. **Smart Contracts** (`/contracts`)
   - Contains the core blockchain logic
   - Handles product registration, verification, and inventory management
   - Ensures data immutability and transparency

2. **Frontend Application** (`/trustdrive`)
   - Modern React-based web interface
   - User-friendly dashboard for inventory management
   - Real-time blockchain interaction

3. **Backend Server** (`/trustdrive_server`)
   - Handles API requests
   - Manages database operations
   - Integrates blockchain functionality with traditional systems

## Features

- Product authenticity verification
- Real-time inventory tracking
- Secure product registration
- Transparent supply chain management
- User authentication and authorization
- Blockchain-based data immutability

## Prerequisites

- Node.js (v14 or higher)
- MetaMask or similar Web3 wallet
- Hardhat development environment
- MongoDB (for backend storage)

## Installation

1. Clone the repository:
```bash
git clone [repository-url]
cd Blockchain-Inventory-Management-for-Displaying-Genuine-Products
```

2. Install dependencies:
```bash
# Install root dependencies
npm install

# Install frontend dependencies
cd trustdrive
npm install

# Install backend dependencies
cd ../trustdrive_server
npm install
```

3. Configure environment variables:
   - Create `.env` files in both frontend and backend directories
   - Add necessary configuration (see respective README files for details)

## Development

1. Start the local blockchain:
```bash
npx hardhat node
```

2. Deploy smart contracts:
```bash
npx hardhat run scripts/deploy.js --network localhost
```

3. Start the backend server:
```bash
cd trustdrive_server
npm run dev
```

4. Start the frontend application:
```bash
cd trustdrive
npm start
```

## Testing

Run the test suite:
```bash
npx hardhat test
```

For gas usage reports:
```bash
REPORT_GAS=true npx hardhat test
```


## License

This project is licensed under the MIT License - see the LICENSE file for details.

## Support

For support, please open an issue in the GitHub repository or contact the development team.
