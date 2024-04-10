//
//  ContentView.swift
//  WhyNotTry
//
//  Created by Paulo Baltieri on 06/04/24.
//

import SwiftUI

struct ContentView: View {
    var body: some View {
        Circle()
            .fill(.blue)
            .padding()
        overlay(
            Image(systemName: "figure.soccer")
        )
    }
}

#Preview {
    ContentView()
}
