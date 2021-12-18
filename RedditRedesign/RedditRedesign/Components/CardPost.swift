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
                
                //Header
                PostHeader()
                
                // Body
                PostBody()
                
                // Footer
                PostFooter()
                
            }
            .padding()
            
        }
        .background(Color.white)
        .clipShape(
            RoundedRectangle(cornerRadius: 13)
        )
        
    }
}

struct GiftSegment:View {
    let prizeName:String
    
    let number = 5
    
    var body: some View {
        HStack(spacing:2){
            Image(prizeName)
                .resizable()
                .aspectRatio(contentMode: .fit)
                .frame(width:22)
            Text(number.description)
        }
    }
}

struct GiftsComponent:View {
    var body: some View {
        HStack {
            
            GiftSegment(prizeName: "prizeOne")
            
            GiftSegment(prizeName: "prizeTwo")
            
            GiftSegment(prizeName: "prizeThree")
            
            Spacer()
            
        }
    }
}

struct ThreeDotsComponent:View {
    var body: some View{
        HStack(spacing:1){
            Image(systemName: "circle.fill")
                .resizable()
                .aspectRatio(contentMode: .fit)
                .frame(width: 3)
                .foregroundColor(Color(red: 135/255, green: 138/255, blue: 140/255))
            Image(systemName: "circle.fill")
                .resizable()
                .aspectRatio(contentMode: .fit)
                .frame(width: 3)
                .foregroundColor(Color(red: 135/255, green: 138/255, blue: 140/255))
            Image(systemName: "circle.fill")
                .resizable()
                .aspectRatio(contentMode: .fit)
                .frame(width: 3)
                .foregroundColor(Color(red: 135/255, green: 138/255, blue: 140/255))
        }
    }
}

struct PostMetaData:View {
    var body: some View {
        
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
        
    }
}

struct PostHeader:View {
    var body: some View{
        
        // Header
        HStack {
            
            // Right
            PostMetaData()
            
            // Spacer
            Spacer()
            
            // Left
            ThreeDotsComponent()

        }
        
        // Prizes Section
        GiftsComponent()
    }
}

struct PostBody:View {
    var body: some View{
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
//        .padding(.bottom, 5)
//        .padding(.top, 10)
    }
}

struct PostFooter:View {
    var body: some View{
        
        HStack(){
            
            HStack(alignment:.center) {
                Image("Up Vote")
                    .resizable()
                    .aspectRatio(contentMode: .fit)
                    .frame(width:18)
                Image("Down Vote")
                    .resizable()
                    .aspectRatio(contentMode: .fit)
                    .frame(width:18)
                Text("45K")
            }
            
            Spacer()
            
            HStack(alignment:.center, spacing: 15) {
                
                HStack(spacing:4){
                    Image("Comments")
                        .resizable()
                        .aspectRatio(contentMode: .fit)
                        .frame(width:18)
                    Text("67")
                }
                
                HStack(spacing:4){
                    Image("Share")
                        .resizable()
                        .aspectRatio(contentMode: .fit)
                        .frame(width:18)
                    Text("Share")
                }
                
                HStack(spacing:4){
                    Image("Gift")
                        .resizable()
                        .aspectRatio(contentMode: .fit)
                        .frame(width:18)
                    Text("Gift")
                }
                
            }
            
        }
        .foregroundColor(Color(red: 135/255, green: 138/255, blue: 140/255))
        
    }
}

struct CardPost_Previews: PreviewProvider {
    static var previews: some View {
        
        CardPost()
            .previewLayout(PreviewLayout.sizeThatFits)
    }
}
