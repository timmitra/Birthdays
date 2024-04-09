//
//  ContentView.swift
//  ChatPrototype
//
//  Created by Tim Mitra on 2024-04-08.
//

import SwiftUI

struct ContentView: View {
  
  @State private var friends: [Friend] = [
    Friend(name: "Elton Lin", birthday: .now),
    Friend(name: "Jenny Court", birthday: Date(timeIntervalSince1970: 0))
  ]
  
    var body: some View {
      NavigationStack {
        List(friends, id: \.name) { friend in
          HStack {
            Text(friend.name)
          }
        }
        .navigationTitle("Birthdays")
      }
    }
}

#Preview {
    ContentView()
}
