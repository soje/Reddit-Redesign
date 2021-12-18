//
//  MainView.swift
//  RedditRedesign
//
//  Created by Dario Galiani on 17/12/21.
//

import SwiftUI

struct PaginaPrincipale: View {
    
    var body: some View {
        NavigationView{
            TabView{
                
                Home()
                    .tabItem{
                        IconText(imageName: "Home", label: "Home")
                    }
                
                RedditLive()
                    .tabItem{
                        IconText(imageName: "Live", label: "Live")
                    }
                
                Subreddit()
                    .tabItem{
                        IconText(imageName: "Subreddit", label: "Subreddit")
                    }
                
                Chat()
                    .tabItem{
                        IconText(imageName: "Chat", label: "Chat")
                    }
                
                Account()
                    .tabItem{
                        IconText(imageName: "Account", label: "Account")
                    }
                
            }
            .accentColor(Color.red)
            .navigationBarTitleDisplayMode(.inline)
            .toolbar {
                ToolbarItem(placement: .navigationBarTrailing){
                    HStack(spacing: 20){
                        Image("Search")
                        Image("Notifications")
                    }
                    .padding(.trailing)
                }
            }
        }
        
    }
}

struct IconText:View{
    let imageName:String
    let label:String
    
    var body: some View{
        Image(imageName)
        Text(label)
    }
    
}

struct PaginaPrincipale_Previews: PreviewProvider {
    static var previews: some View {
        PaginaPrincipale()
    }
}
