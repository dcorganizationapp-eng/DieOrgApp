//
//  ContentView.swift
//  DieOrgApp
//
//  Created by James Sweeney on 8/18/25.
//

import SwiftUI

struct ContentView: View {
    var body: some View {
        VStack {
            Image(systemName: "person")
                .imageScale(.large)
                .foregroundStyle(.tint)
            Text("This is only a test")
        }
        .padding()
    }
}

#Preview {
    ContentView()
}
