import * as React from 'react';

import { StyleSheet, View, Text, TouchableOpacity } from 'react-native';
import { generateMnemonic, generateWallet } from '@coingrig/wallet-generator';

export default function App() {
  const [result, setResult] = React.useState<number | undefined>();

  const start = async () => {
    let m: string = await generateMnemonic(12);
    let w = await generateWallet(m, 'BTC');
    let x = JSON.parse(w);
    console.log(x.address, x.privateKey);
  };

  return (
    <View style={styles.container}>
      <TouchableOpacity onPress={start}>
        <Text>CLICK</Text>
      </TouchableOpacity>
    </View>
  );
}

const styles = StyleSheet.create({
  container: {
    flex: 1,
    alignItems: 'center',
    justifyContent: 'center',
  },
  box: {
    width: 60,
    height: 60,
    marginVertical: 20,
  },
});
