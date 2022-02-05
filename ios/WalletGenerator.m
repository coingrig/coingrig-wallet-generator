#import <React/RCTBridgeModule.h>

@interface RCT_EXTERN_MODULE(WalletGenerator, NSObject)

RCT_EXTERN_METHOD(multiply:(float)a withB:(float)b
                 withResolver:(RCTPromiseResolveBlock)resolve
                 withRejecter:(RCTPromiseRejectBlock)reject)


RCT_EXTERN_METHOD(generateMnemonic:(int)size
                 withResolver:(RCTPromiseResolveBlock)resolve
                 withRejecter:(RCTPromiseRejectBlock)reject)

RCT_EXTERN_METHOD(generateWallet:(NSString)mnemonic withChain:(NSString)chain
                 withResolver:(RCTPromiseResolveBlock)resolve
                 withRejecter:(RCTPromiseRejectBlock)reject)

@end
