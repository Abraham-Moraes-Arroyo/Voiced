//
//  VoicedTabView.swift
//  Voiced
//
//  Created by student on 2/28/24.
//

import SwiftUI

struct VoicedTabView: View {
    @State private var selectedTab = 0
    var body: some View {
        TabView(selection: $selectedTab) {
            Text("MapView")
                .tabItem {
                    Image(systemName: selectedTab == 0 ? "map.fill" : "map")
                        .environment(\.symbolVariants, selectedTab == 0 ? .fill : .none)
                }
                .onAppear { selectedTab = 0 }
                .tag(0)
                    
            Text("ForumView")
                        .tabItem {
                            Image(systemName: selectedTab == 1 ? "quote.bubble.fill" : "quote.bubble")
                                .environment(\.symbolVariants, selectedTab == 1 ? .fill : .none)
                        }
                        .onAppear { selectedTab = 1 }
                        .tag(1)
            
            Text("UploadPostView")
                        .tabItem {
                            Image(systemName: "plus")
                        }
                        .onAppear { selectedTab = 2 }
                        .tag(2)
            
            Text("VoteView")
                        .tabItem {
                            Image(systemName: selectedTab == 3 ? "list.clipboard.fill" : "list.clipboard")
                                .environment(\.symbolVariants, selectedTab == 3 ? .fill : .none)
                        }
                        .onAppear { selectedTab = 3 }
                        .tag(3)
            
            Text("HighlightsView")
                        .tabItem {
                            Image(systemName: selectedTab == 4 ? "face.smiling.inverse" : "face.smiling")
                                .environment(\.symbolVariants, selectedTab == 4 ? .fill : .none)
                        }
                        .onAppear { selectedTab = 4 }
                        .tag(4)
            Text("ProfileView")
                        .tabItem {
                            Image(systemName: selectedTab == 5 ? "person.fill" : "person")
                                .environment(\.symbolVariants, selectedTab == 5 ? .fill : .none)
                        }
                        .onAppear { selectedTab = 5 }
                        .tag(5)
                    
                
        }
        .tint(Color.black)
    }
}

struct VoicedTabView_Previews: PreviewProvider {
    static var previews: some View {
        VoicedTabView()
    }
}
