//
//  SwiftUIView.swift
//  RedditRedesign
//
//  Created by Dario Galiani on 10/12/21.
//

import SwiftUI

struct VideoLiveCarousel: View {
    let images:[Image]
    let subreddits:[String]
    let users:[String]
    
    var body: some View {

        VStack(alignment: .leading){
            
            Text("best live")
                .fontWeight(.bold)
                .textCase(.uppercase)
                .padding(.leading)
            
            ScrollView(.horizontal, showsIndicators: false){
                HStack {
                    ForEach(0..<images.count) { num in
                        VideoLiveCard(
                            image: images[num],
                            subreddit: subreddits[0],
                            user: users[0])
                    }
                }
                .padding(.leading)
            }
            
        }
        
    }
    
}

struct VideoLiveCarousel_Previews: PreviewProvider {
    static var previews: some View {
        let images:[Image] = [Image("SliderCardOne"), Image("SliderCardTwo"), Image("SliderCardThree")]
        let subreddits:[String] = ["catatwork", "onlyHedgehog", "shibaInuFunny"]
        let users:[String] = ["prr45", "plug34", "chibishiby"]
        
        VideoLiveCarousel(images:images, subreddits: subreddits, users: users)
            .previewLayout(PreviewLayout.sizeThatFits)
    }
}
