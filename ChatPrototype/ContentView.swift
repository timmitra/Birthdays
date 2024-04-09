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
  @State private var newName = ""
  @State private var newDate = Date.now
  
    var body: some View {
      NavigationStack {
        List(friends, id: \.name) { friend in
          HStack {
            Text(friend.name)
          }
        }
        .navigationTitle("Birthdays")
        .safeAreaInset(edge: .bottom) {
          VStack(alignment: .center, spacing: 20) {
            Text("New Birthday")
              .font(.headline)
            DatePicker(selection: $newDate, in: Date.distantPast...Date.now, displayedComponents: .date) {
              TextField("Name", text: $newName)
                .textFieldStyle(.roundedBorder)
            }
            Button("Save") {
              let newFriend = Friend(name: newName, birthday: newDate)
            }
            .bold()
          }
        }
      }
    }
}

#Preview {
    ContentView()
}
