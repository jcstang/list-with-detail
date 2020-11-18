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
            Image(Reptile.icon)
                .shadow(radius: 3)
                .frame(width: 100, height: 100, alignment: .center)
                .overlay(
                    Circle().stroke(Color.purple, lineWidth: 3)
                )
                .clipShape(Circle())
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
    @State private var sort: Int = 0
    
    private let repList: [Reptile] = [
        Reptile(name: "gimli", icon: "default_reptile", description: "mojave ball"),
        Reptile(name: "Zelda", icon: "default_reptile", description: "hognose xanth"),
        Reptile(name: "Erso", icon: "default_reptile", description: "cornsnake")
    ]
    var body: some View {
        
        
        VStack {
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
                .navigationBarItems(trailing:
                    MenuView()
                )
                
            }
            
            //            List(repList) { rep in
            //                HStack {
            //                    ReptileCircleView(Reptile: rep)
            //                    Text(rep.name).font(.headline)
            //                }
            //                .onTapGesture {
            //                    print("stuff")
            //                }
            //            }
            MenuView()
        } //eof VStack
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
