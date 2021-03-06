# @coingrig/wallet-generator

Blazing ⚡️ Fast BTC and ETH Wallet Generator library for React Native, Android and iOS.
This is a high performance native library written in GO.

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
const chain = 'BTC' // or ETH
let wallet = await generateWallet(mnemonic, chain);
wallet = JSON.parse(wallet);
console.log(wallet.address, wallet.privateKey);

```
## Native - Android and iOS (Java, Kotlin, Objective-C, Swift)
It is also available to use in native projects (Android and iOS).
- For Android use jitpack: https://jitpack.io/#coingrig/cgwallet-android-artifact
- For iOS use the `CGWallet.xcframework` from `ios/`

## Contributing

See the [contributing guide](CONTRIBUTING.md) to learn how to contribute to the repository and the development workflow.

## License

MIT
