//
//  FavoriteButton.swift
//  Landmarks
//
//  Created by Mohammad Sulthan on 19/08/21.
//

import SwiftUI

struct FavoriteButton: View {
    @Binding var isSet: Bool
    
    var body: some View {
        Button(action: {
            isSet.toggle()
        }) {
            Image(systemName: isSet ? "star.fill" : "star")
                .foregroundColor(isSet ? Color.yellow : Color.gray)
        }
        .alert(isPresented: $isSet, content: {
            Alert(title: Text("Favorited!"), dismissButton: .default(Text("Got it!")))
        })
    }
}

struct FavoriteButton_Previews: PreviewProvider {
    static var previews: some View {
        FavoriteButton(isSet: .constant(true))
    }
}
