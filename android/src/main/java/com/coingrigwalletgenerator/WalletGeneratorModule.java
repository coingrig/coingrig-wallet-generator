package com.coingrigwalletgenerator;

import androidx.annotation.NonNull;

import com.facebook.react.bridge.Promise;
import com.facebook.react.bridge.ReactApplicationContext;
import com.facebook.react.bridge.ReactContextBaseJavaModule;
import com.facebook.react.bridge.ReactMethod;
import com.facebook.react.module.annotations.ReactModule;

import addr.Addr;

@ReactModule(name = WalletGeneratorModule.NAME)
public class WalletGeneratorModule extends ReactContextBaseJavaModule {
    public static final String NAME = "WalletGenerator";

    public WalletGeneratorModule(ReactApplicationContext reactContext) {
        super(reactContext);
    }

    @Override
    @NonNull
    public String getName() {
        return NAME;
    }


    // Example method
    // See https://reactnative.dev/docs/native-modules-android
    @ReactMethod
    public void multiply(int a, int b, Promise promise) {
        promise.resolve(a * b);
    }

    @ReactMethod
    public void generateMnemonic(int size, Promise promise) {
      promise.resolve(Addr.generateMnemonic(size));
    }

  @ReactMethod
  public void generateWallet(String mnemonic, String chain, Promise promise) {
      try{
        promise.resolve(Addr.generateWallet(mnemonic, chain));
      }catch (Throwable e){
        promise.reject(e);
      }

  }


  public static native int nativeMultiply(int a, int b);
}
