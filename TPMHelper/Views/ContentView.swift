//
//  ContentView.swift
//  TPMHelper
//
//  Created by Francis Breidenbach on 1/10/23.
//

import SwiftUI

struct ContentView: View {
  @State
  private var apiKey: String = ""
  
  func getStoredKey() -> String {
    let kcw = KeychainWrapper()
    if let password = try? kcw.getApiKeyFor(
      account: "TPMHelper",
      service: "apiKey") {
      return password
    }
    return ""
  }
  
  func setApiKey(_ password: String) {
    let kcw = KeychainWrapper()
    do {
      try kcw.storeApiKeyFor(
        account: "TPMHelper",
        service: "apiKey",
        password: password)
    } catch let error as KeychainWrapperError {
      print("Exception setting password: \(error.message ?? "no message")")
    } catch {
      print("An error occurred setting the password.")
    }
  }
  
  var body: some View {
    VStack {
      Image(systemName: "globe")
        .imageScale(.large)
        .foregroundColor(.accentColor)
      Text("Enter your Shortcut API key:")
      TextField("Enter...", text: $apiKey)
      Button("Save Key") {
        
      }
    }
    .padding()
  }
}

struct ContentView_Previews: PreviewProvider {
  static var previews: some View {
    ContentView()
  }
}
