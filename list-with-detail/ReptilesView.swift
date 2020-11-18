//
//  ReptilesView.swift
//  list-with-detail
//
//  Created by Jacob Stanger on 11/17/20.
//

import SwiftUI

struct ReptilesView: View {
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
            MenuView()
        } //eof VStack
    }
}

struct ReptilesView_Previews: PreviewProvider {
    static var previews: some View {
        ReptilesView()
    }
}
