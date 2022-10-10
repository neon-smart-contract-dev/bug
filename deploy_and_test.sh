DAPP_BUILD_OPTIMIZE=1 DAPP_BUILD_OPTIMIZE_RUNS=1 dapp build

. config.sh

contractAddress=$(dapp create Bug)
echo Bug address: $contractAddress

ETH_FROM=0xa3a0E8Fbe0Ad412D808693EDc2751f0776e13AF1 BUG_ADDRESS=$contractAddress . test_after_deploy.sh

