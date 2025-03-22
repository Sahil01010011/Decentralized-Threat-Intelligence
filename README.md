# My Decentralized Threat Thingy Project

Hey there! I’m a total newbie working on this cool project called a "Decentralized Threat Intelligence Sharing Platform." It’s basically a way to share cyber threat info using a smart contract on Ethereum. I’m still learning, so bear with me—this project isn’t done yet! I’m in Week 3 of 6 (as of March 21, 2025), and I’m figuring things out as I go. 😅

## What’s This Project About?
I made a smart contract called `ThreatCounter.sol` that lets you submit threat hashes (like a code for a cyber threat). It makes sure you don’t submit the same thing twice by using a "salt" (a random value I add to make each hash unique). I just added some cool stuff like a length limit (so the input isn’t too long) and an event to log when a threat is submitted.

### What It Can Do So Far
- You can submit a threat hash, like `"samplehash"`.
- It won’t let you submit the same hash twice in the same contract (it’ll say “Hash already submitted”).
- It stops you if the input is too long (over 100 characters).
- It logs an event called `ThreatSubmitted` so you can see what was submitted.

## What’s in the Repo?
- `contracts/ThreatCounter.sol`: My smart contract code.
- `screenshots/threatcounter_optimized.png`: A pic of my tests in Remix and Ganache GUI.
- `README.md`: This file (hi!).

## How to Set It Up (I’m Using Remix and Ganache GUI)
I’m using Remix (a website) and Ganache GUI (a fake blockchain) to test my contract. Here’s how I did it:

1. **Get Ganache GUI**:
   - I downloaded Ganache GUI from [https://trufflesuite.com/ganache/](https://trufflesuite.com/ganache/).
   - Open it, click “New Workspace,” and name it something like “ThreatCounterTest.”
   - Set the port to `8545` and the hardfork to `Shanghai` (or `Istanbul` if it doesn’t work).
   - Click “Save” to start it.

2. **Open Remix**:
   - Go to [https://remix.ethereum.org/](https://remix.ethereum.org/).
   - Make a new file called `ThreatCounter.sol` and copy-paste my code (it’s below).

3. **Clone My Repo (If You Want)**:
   - If you wanna see my code, you can clone it:
   - `git clone https://github.com/Sahil01010011/Decentralized-Threat-Intelligence.git`