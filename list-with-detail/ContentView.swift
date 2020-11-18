//
//  ContentView.swift
//  list-with-detail
//
//  Created by Jacob Stanger on 11/17/20.
//

import SwiftUI

struct Reptile: Identifiable {
    let id = UUID()
    let name: String
    let icon: String
    let description: String
}

struct ContentView: View {
    
    var body: some View {
        ReptilesView()
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
