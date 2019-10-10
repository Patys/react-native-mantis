
import { NativeModules } from 'react-native';

const { RNReactNativeMantis } = NativeModules;

console.log(RNReactNativeMantis)
console.log(RNReactNativeMantis.editPhoto("test.png"))

export default RNReactNativeMantis;
