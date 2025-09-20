//
//  ContentView.swift
//  Sneaker Store
//
//  Created by Fabricio Banda on 16/09/25.
//

import SwiftUI

struct ContentView: View {
    var body: some View {
        TabView{
            Tab{
                StoreView()
            } label: {
                Label("Store", systemImage: "bag")
            }
             
            
            Tab{
                ProfileView()
            } label: {
                Label("Profile", systemImage: "person")
            }

        }
    }
}

#Preview {
    ContentView()
}


