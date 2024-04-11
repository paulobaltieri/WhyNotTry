//
//  ContentView.swift
//  WhyNotTry
//
//  Created by Paulo Baltieri on 06/04/24.
//

import SwiftUI

struct ContentView: View {
    var activities = ["Basketball", "Soccer", "Golf", "Volley"]
    var selected = "Soccer"
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
                            .font(.system(size: 230))
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
