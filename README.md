# @coingrig/wallet-generator

Blazing ⚡️ Fast BTC an ETH Wallet Generator library for React Native.
This is a high performant native library written in GO.

Todo:
- [x] Bitcoin (segwit)
- [x] Ethereum
- [ ] Bitcoin Cash
- [ ] Litecoin
- [ ] Doge
- [ ] Egold (Elrond)
- [ ] Solana
- [ ] Dash
- [ ] Ethereum Clasic

## React Native
### Installation

```sh
npm install @coingrig/wallet-generator
```

### Usage

```js
import { generateMnemonic, generateWallet } from '@coingrig/wallet-generator';

// Generate mnemonic
const words = 12; // or 24
const mnemonic = await generateMnemonic(words);

// Generate wallet
const coinType = 'BTC' // or ETH
let wallet = await generateWallet(mnemonic, coinType);
wallet = JSON.parse(wallet);
console.log(wallet.address, wallet.privateKey);

```
## Native
It is also available to use in native projects (Android and iOS). 
- For Android use the `CGWallet.aar` and `.jar` files from `android/libs`
- For iOS you  use the `CGWallet.xcframework` from `ios/`

## Contributing

See the [contributing guide](CONTRIBUTING.md) to learn how to contribute to the repository and the development workflow.

## License

MIT
