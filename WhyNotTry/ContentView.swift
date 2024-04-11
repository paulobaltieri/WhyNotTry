//
//  ContentView.swift
//  WhyNotTry
//
//  Created by Paulo Baltieri on 06/04/24.
//

import SwiftUI

struct ContentView: View {
    var activities = ["Soccer", "Golf", "gymnastics","Archery", "Basketball", "Bowling", "Boxing", "Cricket", "Curling", "Golf", "Lacrosse", "Rugby", "Squash"]
    var colors:[Color] = [.blue, .cyan, .gray, .green, .indigo, .mint, .orange, .pink, .purple, .red]
    
    @State private var selected = "Basketball"
    @State private var id = 1
    var body: some View {
        VStack {
            Text("Why not try...")
                .font(.largeTitle.bold())
            
            VStack{
                Circle()
                    .fill(colors.randomElement() ?? .blue)
                    .padding()
                    .overlay(
                        Image(systemName: "figure.\(selected.lowercased())")
                            .font(.system(size: 144))
                            .foregroundColor(.white)
                            .transition(.slide)
                            .id(id)

                    )
                Text("\(selected)")
                    .font(.title)
            }
            .transition(.slide)
            .id(id)
            
                Button("Try again"){
                    
                    withAnimation(.easeInOut(duration: 1)){
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
