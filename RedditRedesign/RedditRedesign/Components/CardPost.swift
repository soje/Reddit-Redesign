//
//  CardPost.swift
//  RedditRedesign
//
//  Created by Dario Galiani on 13/12/21.
//

import SwiftUI

struct CardPost: View {

//  let subredditImage:Image
//  let subredditName:String
//  @State let gifts:[Image]
//  let title:String
//  let post:String
//  let userImage:Image
//  let userName:String
    
    var body: some View {
        
        VStack{
            
            VStack{
                
                // Header
                HStack {
                    
                    // Right
                    HStack(spacing:10) {
                        
                        Circle()
                            .frame(width: 40, height: 40)
                        
                        VStack(alignment: .leading, spacing: 0){
                            Text("r/subreddit")
                            
                            HStack{
                                Text("u/user")
                                Image(systemName: "circle.fill")
                                    .resizable()
                                    .frame(width: 5, height: 5)
                                Text("2h ago")
                            }
                            
                        }
                    
                    }
                    
                    // Spacer
                    Spacer()
                    
                    // Left
                    HStack(spacing:1){
                        Image(systemName: "circle.fill")
                            .resizable()
                            .frame(width: 5, height: 5)
                        Image(systemName: "circle.fill")
                            .resizable()
                            .frame(width: 5, height: 5)
                        Image(systemName: "circle.fill")
                            .resizable()
                            .frame(width: 5, height: 5)
                    }

                }
                
                // Prizes Section
                HStack {
                    
                    GiftSegment()
                    
                    GiftSegment()
                    
                    GiftSegment()
                    
                    Spacer()
                    
                }
                
                // Body
                
                VStack {
                    
                    HStack {
                        Text("Titolo Post")
                            .fontWeight(.bold)
                        Spacer()
                    }
                    
                    HStack {
                        Text("Lorem ipsum dolor sit amet, consectetur adipiscing elit. Donec quis suscipit neque, sed luctus enim. Integer a pharetra lorem, ut efficitur ante. Nunc sit amet ante lobortis, mattis arcu id, tempus massa. Fusce finibus euismod sapien, nec lacinia mauris pharetra eu. Maecenas sit amet nisi velit. Sed lobortis tristique aliquet.")
                        Spacer()
                    }
                    
                }
                .padding(.bottom, 5)
                .padding(.top, 10)
                
                HStack(){
                    
                    HStack(alignment:.center) {
                        Image("Up Vote")
                        Text("45K")
                        Image("Down Vote")
                    }
                    
                    Spacer()
                    
                    HStack(alignment:.center) {
                        
                        HStack(spacing:0){
                            Image(home)
                            Text("67")
                        }
                        
                        HStack(spacing:0){
                            Image(systemName: "star")
                            Text("Share")
                        }
                        
                        HStack(spacing:0){
                            Image(systemName: "sun.max.fill")
                            Text("Gift")
                        }
                        
                    }
                    
                }.padding()
                
                
            }
            .padding()
            
        }
        .clipShape(
            RoundedRectangle(cornerRadius: 13)
        )
        
    }
}

struct GiftSegment:View {
    
    let number = 5
    
    var body: some View {
        HStack(spacing:2){
            Image(systemName: "gift")
            Text(number.description)
        }
    }
}

struct CardPost_Previews: PreviewProvider {
    static var previews: some View {
        
        let subreddit:String = "playground"
        
        CardPost()
            .previewLayout(PreviewLayout.sizeThatFits)
    }
}
