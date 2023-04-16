//
//  TweetCell.swift
//  Twitter_Clone_IOS
//
//  Created by Enigma Kod on 16/04/2023.
//

import SwiftUI

struct TweetCell: View {
    var body: some View {
        VStack {
            HStack(alignment: .top) {
                Image("batman")
                    .resizable()
                    .scaledToFit()
                    .clipped()
                    .frame(width: 46, height: 46)
                    .cornerRadius(56 / 2)

                VStack(alignment: .leading) {
                    HStack {
                        Text("Bruce Wayne")
                            .font(.system(size: 14, weight: .semibold))

                        Text("@batman • ")
                            .font(.system(size: 13, weight: .semibold))
                            .foregroundColor(.gray)

                        Text("2h")
                            .font(.system(size: 13, weight: .semibold))
                            .foregroundColor(.gray)

                        Spacer()

                        Image(systemName: "ellipsis")
                            .font(.system(size: 13, weight: .semibold))
                            .foregroundColor(.gray)
                            .rotationEffect(.degrees(90))
                    }
                    .padding(.trailing, 10)

                    Text("It's not who I am underneth, but what i do that defines me")
                        .font(.system(size: 13))
                    

                    HStack {
                        TweetIconAndCoutView(systemImage: "message", count: "6")
                        Spacer()
                        TweetIconAndCoutView(systemImage: "arrow.2.squarepath", count: "2")
                        Spacer()
                        TweetIconAndCoutView(systemImage: "heart", count: "155")
                        Spacer()
                        TweetIconAndCoutView(systemImage: "chart.bar.xaxis", count: "1,760")
                    }
                    .padding(.top, 5)
                    .padding(.trailing, 10)
                }
            }
        }
        .padding(.horizontal, 5)
        .padding(.leading, 5)
    }
}

struct TweetCell_Previews: PreviewProvider {
    static var previews: some View {
        TweetCell()
    }
}

struct TweetIconAndCoutView: View {
    let systemImage: String
    let count: String

    var body: some View {
        HStack {
            Image(systemName: systemImage)
                .font(.system(size: 13, weight: .semibold))
                .foregroundColor(.gray)
            Text(count)
                .font(.system(size: 13, weight: .semibold))
                .foregroundColor(.gray)
        }
    }
}
