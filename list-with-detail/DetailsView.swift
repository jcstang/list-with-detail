//
//  DetailsView.swift
//  list-with-detail
//
//  Created by Jacob Stanger on 11/17/20.
//

import SwiftUI

struct DetailsView: View {
    @Environment(\.presentationMode) var presentationMode
    @State private var showingSheet = false
    
    let theReptile: Reptile
    
    var body: some View {
        VStack(alignment: .leading) {
            HStack {
                ReptileCircleView(Reptile: theReptile).padding(.trailing, 5)
                
                Text(theReptile.name)
                    .font(.largeTitle)
                    .bold()
                
//                Button("Dismiss") {
//                    self.presentationMode.wrappedValue.dismiss()
//                }
                
//                Button("Show details") {
//                    self.showingSheet.toggle()
//                }
//                .sheet(isPresented: $showingSheet) {
//                    DetailsView(theReptile: theReptile)
//                }
                
                Spacer()
            } // end of HStack
            .padding()
            .navigationBarTitle(Text(theReptile.name), displayMode: .inline)
            
            
        } // end of VStack
    }
}

struct DetailsView_Previews: PreviewProvider {
    static var previews: some View {
        DetailsView(theReptile: Reptile(name: "rex", icon: "mic", description: "paperclip"))
    }
}
