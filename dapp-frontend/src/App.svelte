<script>
 
  import { ethers } from 'ethers';
  import { abi, address } from './contractData.js';
 
  let connectedAccount = "";
  let contractMessage = "";
  const provider = new ethers.providers.Web3Provider(window.ethereum);

  async function connectWallet() {
    if (window.ethereum) {
      await window.ethereum.request({ method: 'eth_requestAccounts' })
      const signer = provider.getSigner();
      connectedAccount = await signer.getAddress();
    }
  }

  async function callContract() {
    const contract = new ethers.Contract(address, abi, provider);
    contractMessage = await contract.message();
  }
</script>
 
<main>
  <div>Connected Account: {connectedAccount}</div>
  <div>Contract Message: { contractMessage }</div>
 
  <button on:click={connectWallet}>Connect wallet</button>
  <button on:click={callContract}>Call Contract</button>
</main>
