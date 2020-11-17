//
//  ContentView.swift
//  list-with-detail
//
//  Created by Jacob Stanger on 11/17/20.
//

import SwiftUI

struct ReptileCircleView: View {
    let Reptile: Reptile
    
    var body: some View {
        ZStack {
            Image(systemName: Reptile.icon)
                .shadow(radius: 3)
                .frame(width: 65, height: 65, alignment: .center)
                .overlay(
                    Circle().stroke(Color.purple, lineWidth: 3)
                )
//            Text(Reptile.icon)
//                .shadow(radius: 3)
//                .font(.largeTitle)
//                .frame(width: 65, height: 65)
//                .overlay(
//                    Circle().stroke(Color.purple, lineWidth: 3)
//                )
        }
    }
}

struct Reptile: Identifiable {
    let id = UUID()
    let name: String
    let icon: String
    let description: String
}

struct ContentView: View {
    @State private var showingSheet = false
    
    private let repList: [Reptile] = [
        Reptile(name: "gimli", icon: "bolt", description: "mojave ball"),
        Reptile(name: "Zelda", icon: "bolt.fill", description: "hognose xanth"),
        Reptile(name: "Erso", icon: "bolt", description: "cornsnake")
    ]
    var body: some View {
//        NavigationView {
//            List(repList) { reptile in
//                NavigationLink(
//                    destination: EmptyView()) {
//                HStack {
//                    ReptileCircleView(Reptile: reptile)
//                    Text(reptile.name).font(.headline)
//                }.padding(7)
//                }
//            }
//        }
//        .navigationBarTitle("Reptiles")
        
        VStack {
            // testing
            NavigationView {
              List(repList) { rep in
                NavigationLink(destination: DetailsView(theReptile: rep)) {
                HStack {
                    ReptileCircleView(Reptile: rep)
                    Text(rep.name).font(.headline)

                    
                }.padding(7)
                }
              }
              .navigationBarTitle("Reptiles")
            }
            
            List(repList) { rep in
                HStack {
                    ReptileCircleView(Reptile: rep)
                    Text(rep.name).font(.headline)
                }
                .onTapGesture {
                    print("stuff")
                }
            }
        } //eof VStack
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
