//
//  ContentView.swift
//  Twitter_Clone_IOS
//
//  Created by Enigma Kod on 16/04/2023.
//

import SwiftUI

struct ContentView: View {
    var body: some View {
        NavigationView {
            VStack {
                TabView {
                    FeedsViews()
                        .tabItem {
                            Image(systemName: "house")
                        }

                    Text("Search")
                        .tabItem {
                            Image(systemName: "magnifyingglass")
                        }

                    Text("Space")
                        .tabItem {
                            Image(systemName: "mic")
                        }

                    Text("Notificationss")
                        .tabItem {
                            Image(systemName: "bell")
                        }

                    Text("Messages")
                        .tabItem {
                            Image(systemName: "envelope")
                        }
                }
            }
            .navigationBarTitleDisplayMode(.inline)
            .navigationBarItems(
                leading: Image("user.profile")
                    .resizable()
                    .clipped()
                    .frame(width: 32, height: 32)
                    .clipShape(Circle())
            )
        }
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
