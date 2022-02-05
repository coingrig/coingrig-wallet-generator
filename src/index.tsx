import { NativeModules, Platform } from 'react-native';

const LINKING_ERROR =
  `The package '@coingrig/wallet-generator' doesn't seem to be linked. Make sure: \n\n` +
  Platform.select({ ios: "- You have run 'pod install'\n", default: '' }) +
  '- You rebuilt the app after installing the package\n' +
  '- You are not using Expo managed workflow\n';

const WalletGenerator = NativeModules.WalletGenerator
  ? NativeModules.WalletGenerator
  : new Proxy(
      {},
      {
        get() {
          throw new Error(LINKING_ERROR);
        },
      }
    );

export function multiply(a: number, b: number): Promise<number> {
  return WalletGenerator.multiply(a, b);
}

export function generateMnemonic(size: number): Promise<string> {
  return WalletGenerator.generateMnemonic(size);
}
export function generateWallet(
  mnemonic: string,
  chain: string
): Promise<string> {
  return WalletGenerator.generateWallet(mnemonic, chain);
}
