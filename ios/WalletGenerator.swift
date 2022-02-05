import Addr

@objc(WalletGenerator)
class WalletGenerator: NSObject {

    @objc(multiply:withB:withResolver:withRejecter:)
    func multiply(a: Float, b: Float, resolve:RCTPromiseResolveBlock,reject:RCTPromiseRejectBlock) -> Void {
        resolve(a*b)
    }
    
    @objc(generateMnemonic:withResolver:withRejecter:)
    func generateMnemonic(size: Int, resolve:RCTPromiseResolveBlock,reject:RCTPromiseRejectBlock) -> Void {
        resolve(AddrGenerateMnemonic(12))
    }

    @objc(generateWallet:withChain:withResolver:withRejecter:)
    func generateWallet(mnemonic: String, chain: String, resolve:RCTPromiseResolveBlock,reject:RCTPromiseRejectBlock) -> Void {
        resolve(AddrGenerateWallet(mnemonic, chain, nil))
    }
}
