//
//  UserFeed.swift
//  RedditRedesign
//
//  Created by Dario Galiani on 14/12/21.
//

import SwiftUI

struct UserFeed: View {
    
    let images:[Image] = [Image("SliderCardOne"), Image("SliderCardTwo"), Image("SliderCardThree")]
    let subreddits:[String] = ["catatwork", "onlyHedgehog", "shibaInuFunny"]
    let users:[String] = ["prr45", "plug34", "chibishiby"]
    
    var body: some View {
        
        ScrollView(showsIndicators: false){
            VStack(spacing:0){
                
                VideoLiveCarousel(
                    images:images,
                    subreddits: subreddits,
                    users: users
                )
                
                CardPost()
                    .padding()
                
                CardPost()
                    .padding()
                
            }
        }
        .background(Color(red: 219/255, green: 219/255, blue: 219/255))
        
    }
}

struct UserFeed_Previews: PreviewProvider {
    static var previews: some View {
        UserFeed()
    }
}
