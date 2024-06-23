//
//  ContentView.swift
//  WhyNotTry
//
//  Created by Amer Andersson on 2024-06-23.
//

import SwiftUI

struct ContentView: View {
    var  activities = ["Archery", "Baseball", "Basketball",
                       "Bowling", "Boxing", "Cricket", "Curling", "Fencing",
                       "Golf", "Hiking", "Lacrosse", "Rugby", "Squash"]
    ///  Pick a random colors each time
    var colors: [Color] = [.blue, .cyan, .gray, .green, .indigo, .mint, .orange, .pink, .purple, .red]

    @State private var selected = "Baseball"
    @State private var id = 1

    var body: some View {
        /// Building a static UI with draw circle
        VStack {
            /// Large title
            Text("Why not try...")
                .font(.largeTitle.bold())

            Spacer()

            VStack {
                Circle()
                    .fill(colors.randomElement() ?? .blue)
                    .padding()
                    .overlay(
                        Image(systemName: "figure.\(selected.lowercased())")
                            .font(.system(size: 144))
                            .foregroundColor(.white)
                    )
                /// Title
                Text("\(selected)!")
                    .font(.title)
            }
            .transition(.slide)
            .id(id)

            Spacer()

            /// Change activity every time it’s pressed
            Button("Try again"){
                /// animating the change
                withAnimation(.easeIn(duration: 1)) {
                    selected = activities.randomElement() ?? "Archery"
                    id += 1
                }

            }
            .buttonStyle(.borderedProminent)

        }
    }
}

#Preview {
    ContentView()
}
