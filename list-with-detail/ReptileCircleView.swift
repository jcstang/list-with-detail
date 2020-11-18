//
//  ReptileCircleView.swift
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
        }
    }
}

struct ReptileCircleView_Previews: PreviewProvider {
    static var previews: some View {
        ReptileCircleView(Reptile: Reptile(name: "blaze", icon: "default_reptile_photo", description: "blah"))
    }
}
