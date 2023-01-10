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
