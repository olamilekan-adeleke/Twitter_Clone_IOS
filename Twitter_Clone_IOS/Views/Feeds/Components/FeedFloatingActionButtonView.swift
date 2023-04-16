//
//  FeedFloatingActionButtonView.swift
//  Twitter_Clone_IOS
//
//  Created by Enigma Kod on 16/04/2023.
//

import SwiftUI

struct FeedFloatingActionButtonView: View {
    var body: some View {
        Button(action: {}) {
            Image(systemName: "plus")
                .resizable()
                .renderingMode(.template)
                .frame(width: 18, height: 18)
                .padding()
        }
        .background(Color.blue)
        .foregroundColor(.white)
        .clipShape(Circle())
        .padding()
    }
}

struct FeedFloatingActionButtonView_Previews: PreviewProvider {
    static var previews: some View {
        FeedFloatingActionButtonView()
    }
}
