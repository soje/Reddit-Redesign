//
//  VideoLiveCard.swift
//  RedditRedesign
//
//  Created by Dario Galiani on 10/12/21.
//

import SwiftUI

struct VideoLiveCard: View {
    let image:Image
    let subreddit:String
    let user:String
    
    var body: some View {
        
        ZStack{
            
            image
                .resizable()
            
            VStack{
                
                HStack(){
                    Spacer()
                    Text("Live")
                        .fontWeight(.bold)
                        .padding(5.0)
                        .background(Color.red)
                        .clipShape(
                            RoundedRectangle(cornerRadius: 13)
                        )
                    
                }
                .frame(width: 140)
                .foregroundColor(Color.white)
                
                Spacer()
                
                VStack(alignment: .leading){
                    Text("r/" + subreddit)
                        .fontWeight(.bold)
                    Text("u/" + user)
                }
                .padding([.top, .bottom, .trailing])
                .frame(width: 140)
                .foregroundColor(Color.white)
                .background(
                    LinearGradient(
                        gradient: Gradient(colors: [.black.opacity(0), .black]),
                        startPoint: .top,
                        endPoint: .bottom
                    )
                )
            }
            
        }
        .frame(width: 140, height: 210)
        .clipShape(
            RoundedRectangle(cornerRadius: 13)
        )
        
    }
    
}

struct VideoLiveCard_Previews: PreviewProvider {
    
    static var previews: some View {
        let img:Image = Image("SliderCardOne")
        let subreddit:String = "playground"
        let user:String = "bob"
        
        VideoLiveCard(image:img, subreddit:subreddit, user:user)
            .previewLayout(PreviewLayout.sizeThatFits)
    }
    
}
