```bash
ETH_FROM=0xa3a0E8Fbe0Ad412D808693EDc2751f0776e13AF1 . deploy_and_test.sh
```

```bash
dapp---use: Could not find solc-0.6.12 in your path or nix store.
Temporarily installing solc-0.6.12...
Tip: run `nix-env -f https://github.com/dapphub/dapptools/archive/master.tar.gz -iA solc-static-versions.solc_0_6_12` for a lasting installation of this version.
+ dapp clean
+ rm -rf out
dapp---use: Could not find solc-0.6.12 in your path or nix store.
Temporarily installing solc-0.6.12...
Tip: run `nix-env -f https://github.com/dapphub/dapptools/archive/master.tar.gz -iA solc-static-versions.solc_0_6_12` for a lasting installation of this version.
++ seth send --create 608060405234801561001057600080fd5b506101b8806100206000396000f3fe608060405234801561001057600080fd5b50600436106100785760003560e01c80630b3b60cd1461007d5780636ab8ac00146100875780638886bb181461008f578063955809b21461009757806395e8c5d014610097578063aeee25601461008f578063de94e992146100b1578063fb8ef91a146100b9575b600080fd5b6100856100d6565b005b6100856100f0565b610085610127565b61009f61013c565b60408051918252519081900360200190f35b610085610140565b61009f600480360360208110156100cf57600080fd5b5035610170565b426001819055600090815260208190526040902060649055565b67016345785d8a0000600090815260205260647f26bcfdeb9841fb5f46ae93e0a1f0d20edd5af331415748b3cfdd5c5ce842303855565b42600090815260208190526040902060649055565b4290565b6001600090815260205260647fada5013122d395ba3c54772283fb069b10426056ef8ca54750cb9bb552a59e7d55565b6000602081905290815260409020548156fea26469706673582212207fac9b50579194ca89b6055c492aa3cb21adab4957125366a801ff48cddc99b264736f6c634300060c0033 'Bug()'
seth-send: Published transaction with 472 bytes of calldata.
seth-send: 0xa21318f771e408824c41466f06877771e0fab7c2a390627b73e820b09b4404bd
seth-send: Waiting for transaction receipt....
seth-send: Transaction included in block 167892073.
Bug address: 0x6C72573564A2b9B53e189B5fa6420DE649a01577
now and block.timestamp are calculated correctly!
now: 1665421161
block_timestamp: 1665421162
Creating new mapping elements always works well!
create_new_element_1
seth-send: Published transaction with 4 bytes of calldata.
seth-send: 0xa20bd3721ae1c2233dae5990acf02f31b0ea568a416f9c81de599d3d482e6ad8
seth-send: Waiting for transaction receipt....
seth-send: Transaction included in block 167892104.
create_new_element_100000000000000000
seth-send: Published transaction with 4 bytes of calldata.
seth-send: 0x0ccab1e79fe82fe4dde03fc3fc9d31281205fac0548af0cc45738055016249bb
seth-send: Waiting for transaction receipt....
seth-send: Transaction included in block 167892125.
The create_new_element_timestamp1 function is unstable.
In it, we first store the timestamp value in a variable, and then use this variable to add a new element to the mapping.
create_new_element_timestamp1
seth-send: Published transaction with 4 bytes of calldata.
seth-send: 0x129b8a467a5b897794fcbacf27d915a076fa9521e7e7508afaaed6cde30dab1b
seth-send: Waiting for transaction receipt....
seth-send: Transaction included in block 167892146.
The create_new_element_timestamp2 function almost always fails. Very rarely, but the transaction did sometimes go through. 
In it, we immediately create a new element in the mapping using the current timestamp as a key.
create_new_element_timestamp2
seth-send: Published transaction with 4 bytes of calldata.
seth-send: 0xcbecf2d7dfa160a5b188802c702595f90f5f763f7aeeb2c1ecde65fda00d068d
seth-send: Waiting for transaction receipt.............^C
```

/////////////////////////////////////////////////////////////////////////////////////////////////////////////////

```bash
ETH_FROM=0xa3a0E8Fbe0Ad412D808693EDc2751f0776e13AF1 BUG_ADDRESS=0x6C72573564A2b9B53e189B5fa6420DE649a01577 . test_after_deploy.sh
```

```bash
now and block.timestamp are calculated correctly!
now: 1665422193
block_timestamp: 1665422194
Creating new mapping elements always works well!
create_new_element_1
seth-send: Published transaction with 4 bytes of calldata.
seth-send: 0xae45004dd376855e6461e2570c0b7f026165a9477ca262a5112eebf46269a4c8
seth-send: Waiting for transaction receipt....
seth-send: Transaction included in block 167894798.
create_new_element_100000000000000000
seth-send: Published transaction with 4 bytes of calldata.
seth-send: 0xdd7a7d73d498466896b3f991d5f5c7b9fa731e725ac0165e9845869c069027ba
seth-send: Waiting for transaction receipt....
seth-send: Transaction included in block 167894817.
The create_new_element_timestamp1 function is unstable.
In it, we first store the timestamp value in a variable, and then use this variable to add a new element to the mapping.
create_new_element_timestamp1
seth-send: Published transaction with 4 bytes of calldata.
seth-send: 0x79040f7c591cb0e122789637608714a0854616aeee13c0364b2eac78cd7082b4
seth-send: Waiting for transaction receipt.................^C
```
