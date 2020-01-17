/**
 * Sample React Native App
 * https://github.com/facebook/react-native
 *
 */

import React, { Component } from 'react';
import {
  StyleSheet,
  View,
  Text,
  Button,
  NativeModules,
  TextInput,
} from 'react-native';

class App extends Component{
  state={

  }
  constructor(props){
    super(props)
  }
  sendMessage(){
    NativeModules.MyObj.sendMessage(this.state.data);
    this.rtnMessage();
  }
  editText = (e) => {
    this.setState({data: e})
  }
  rtnMessage = () => {
    // console.log(NativeModules.MyObj.sendMessage)
    NativeModules.MyObj.rtnMessage((error, name) => {
      alert(name)
    })
  }
  render() {
    return (
      <View style={styles.container}>
        <Text style={styles.hello}>Who are you?</Text>
        <TextInput style={styles.inputbox} onChangeText={(e) => {this.editText(e)}}></TextInput>
        <Button onPress={() => {this.sendMessage()}} title="Send Data" color="#FF6347"></Button>
      </View>
    )
  }
}

const styles = StyleSheet.create({
  container: {
    flex: 1,
    justifyContent: 'center',
    alignItems: 'center',
    backgroundColor: "#F5FCFF"
  },
  inputbox: {
    width: 100,
    height: 30,
    borderBottomWidth: 1,
    textAlign: 'center',
    marginTop: 20
  }
});

export default App;
