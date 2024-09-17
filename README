# Wallet V4
Wallet v4 is proposed version of wallet to replace v3 or older wallets.

The main difference from previous versions consist in plugins functionality:
trusted conjugated contracts may implement complex logic while being able to use all funds from main wallet.

That way wallet can be extended in numerous ways, including partial, infinite or programmatic allowances, special connectors to specific DApps, custom user-governed add-ons.

More info see in [TIPS-38](https://github.com/newton-blockchain/TIPs/issues/38).

## Interface
### External messages
1. Send arbitrary owner-formed message (the same functionality as v1, v2, v3)
2. Deploy and install plugin
3. Install deployed plugin
4. Remove plugin

### Internal messages
1. Upon receiving message with `0x706c7567` op from plugin (list of plugins is stored in wallet storage), wallet sends requested funds to plugin.

## Plugins
### Subscription plugin
Plugin implements logic of periodic predefined payments to fixed destination address. Payment is initiated by anyone-can-send external message,
 while plugin's logic ensures that funds will be sent not more often than desired. Fees are subtracted from transferred amount (payee pays for fees)
 including 1 Toncoin which stays on plugin balance until plugin destruction. Upon subscription destruction, remnants of 1 Toncoins are transferred to 
destination address.
