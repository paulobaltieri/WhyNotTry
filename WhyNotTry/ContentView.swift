//
//  ContentView.swift
//  WhyNotTry
//
//  Created by Paulo Baltieri on 06/04/24.
//

import SwiftUI

struct ContentView: View {
    var activities = ["Soccer", "Golf", "Volley","Archery", "Basketball", "Bowling", "Boxing", "Cricket", "Curling", "Golf", "Lacrosse", "Rugby", "Squash"]
    
    var selected = "Basketball"
    var body: some View {
        VStack {
            Text("Why not try...")
                .font(.largeTitle.bold())
            
            VStack{
                Circle()
                    .fill(.blue)
                    .padding()
                    .overlay(
                        Image(systemName: "figure.\(selected.lowercased())")
                            .font(.system(size: 144))
                            .foregroundColor(.white)
                    )
                Text("\(selected)")
                    .font(.title)
            }
        }
    }
}

#Preview {
    ContentView()
}
