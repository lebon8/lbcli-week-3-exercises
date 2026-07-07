# Create a native segwit address and get the public key from the address.

Address=$(bitcoin-cli -regtest -rpcwallet=builderswallet getnewaddress "" bech32)

bitcoin-cli -regtest getaddressinfo $Address | jq -r '.pubkey'