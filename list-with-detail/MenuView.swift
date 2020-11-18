//
//  MenuView.swift
//  list-with-detail
//
//  Created by Jacob Stanger on 11/17/20.
//

import SwiftUI

struct MenuView: View {
    var body: some View {
        Menu {
            Button(action: {
//                    newFolder()
            }) {
                Label("New folder", systemImage: "folder.badge.plus")
            }
            Button(action: {
//                select()
            }) {
                Label("Select", systemImage: "checkmark.circle")
            }
            Button(action: {
//                    edit()
            }) {
                Label("Edit", systemImage: "pencil.circle")
            }
        } label: {
            Image(systemName: "plus.circle.fill")
        }
        .font(.largeTitle)
    }
}

struct MenuView_Previews: PreviewProvider {
    static var previews: some View {
        MenuView()
    }
}
