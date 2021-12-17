//
//  ContentView.swift
//  RedditRedesign
//
//  Created by Dario Galiani on 10/12/21.
//

import SwiftUI
import CoreData

struct Home: View {

    @State private var selectedSegment:PageContents = .home
    
    var body: some View {
        
        VStack{
            Picker("Chose a page", selection: $selectedSegment){
                ForEach(PageContents.allCases, id: \.self){
                    Text($0.rawValue)
                }
            }
            .pickerStyle(.segmented)
            .padding([.leading, .trailing])
            
            Spacer()
            ChosenPageContentView(selectedContent: selectedSegment)
            Spacer()
        }
        
    }

}

enum PageContents:String, CaseIterable {
    case home = "Home"
    case news = "News"
}

struct ChosenPageContentView:View {
    var selectedContent:PageContents
    
    var body: some View {
        switch selectedContent {
        case .home:
            UserFeed()
        case .news:
            News()
        }
    }
    
}

struct Home_Previews: PreviewProvider {
    static var previews: some View {
        Home().environment(\.managedObjectContext, PersistenceController.preview.container.viewContext)
    }
}
