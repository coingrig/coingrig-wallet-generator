import CGWallet

@objc(WalletGenerator)
class WalletGenerator: NSObject {

    @objc(generateMnemonic:withResolver:withRejecter:)
    func generateMnemonic(size: Int, resolve:RCTPromiseResolveBlock,reject:RCTPromiseRejectBlock) -> Void {
        resolve(CGWalletGenerateMnemonic(12))
    }

    @objc(generateWallet:withChain:withResolver:withRejecter:)
    func generateWallet(mnemonic: String, chain: String, resolve:RCTPromiseResolveBlock,reject:RCTPromiseRejectBlock) -> Void {
        resolve(CGWalletGenerateWallet(mnemonic, chain, nil))
    }
}
