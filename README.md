# Decentralized Attendance System

A blockchain-based attendance management system built as a Blockchain Technology mini project. The system uses a Solidity smart contract deployed on the Ethereum Sepolia test network and a web frontend connected through MetaMask and Ethers.js.

## Overview

Traditional attendance systems generally depend on centralized databases. This project demonstrates how blockchain can be used to record attendance in a decentralized, transparent, and tamper-resistant manner.

The smart contract stores attendance records containing the student's wallet address, attendance status, whether attendance has been marked, and the blockchain timestamp.

## Key Blockchain Characteristics

- **Decentralization:** Attendance data is recorded through a blockchain smart contract rather than a single conventional database.
- **Immutability:** Blockchain transactions provide tamper-resistant records once confirmed.
- **Transparency:** Contract data can be queried and verified through the blockchain.
- **Consensus:** Transactions are confirmed by the Ethereum network.
- **Security:** Access to attendance-writing functions is restricted to the contract owner.

## Project Features

- MetaMask wallet connection
- Ethereum Sepolia network verification
- Contract-owner verification
- Mark student as Present
- Mark student as Absent
- Check an individual student's attendance
- View complete class attendance
- Display total registered students
- Display transaction hash after attendance transactions
- Blockchain timestamp for attendance records

## Technologies Used

| Technology | Purpose |
|---|---|
| Solidity | Smart contract development |
| Ethereum Sepolia | Blockchain test network |
| MetaMask | Wallet and transaction confirmation |
| Ethers.js | Web3 / blockchain integration |
| Remix IDE | Smart contract development and deployment |
| HTML | Frontend structure |
| CSS | Frontend design |
| JavaScript | Frontend logic and blockchain interaction |

## Smart Contract

The main contract is:

`contracts/DecentralizedAttendance.sol`

It provides:

- `markPresent(address student)`
- `markAbsent(address student)`
- `getAttendance(address student)`
- `getClassAttendance()`
- `getStudentCount()`

Only the contract owner can mark attendance.

## Deployed Contract

**Network:** Ethereum Sepolia Testnet

**Contract Address:**

`0x23253d694Fe18FC6Ea6f95b42db852882fDCbf6b`

## Project Structure

```text
decentralized-attendance-system/
├── README.md
├── LICENSE
├── contracts/
│   └── DecentralizedAttendance.sol
├── frontend/
│   └── index.html
├── screenshots/
└── documentation/
```

## How to Run

1. Install the MetaMask browser extension.
2. Switch MetaMask to the **Ethereum Sepolia** network.
3. Open `frontend/index.html` using a local web server.
4. Click **Connect MetaMask**.
5. Make sure the connected account is the contract owner when marking attendance.
6. Enter a student's wallet address.
7. Select **Mark Present** or **Mark Absent**.
8. Confirm the transaction in MetaMask.
9. Wait for blockchain confirmation.
10. Use **Check Attendance** or **Load Attendance** to view records.

## Important Note

This project is a student mini-project/demo deployed on the Ethereum Sepolia test network. Sepolia ETH is testnet currency and does not represent real monetary value.

## Future Scope

- Student self-registration
- Role-based access for teachers and administrators
- Multiple classes and subjects
- Attendance reports and analytics
- QR-code based attendance
- Event logs for improved auditability
- Production-grade access control and deployment

## Project Context

Developed as a Blockchain Technology mini project to demonstrate practical use of smart contracts, Web3 connectivity, wallet authentication, and blockchain-based record management.
