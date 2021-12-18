//
//  ContentView.swift
//  RedditRedesign
//
//  Created by Dario Galiani on 10/12/21.
//

import SwiftUI

struct Home: View {
    
    @State private var selectedSegment:PageContents = .home
    
    init(){
        UISegmentedControl.appearance().selectedSegmentTintColor = .red
        UISegmentedControl.appearance().setTitleTextAttributes([.foregroundColor: UIColor.white], for: .selected)
        UISegmentedControl.appearance().setTitleTextAttributes([.foregroundColor: UIColor.gray], for: .normal)
    }
    
    var body: some View {
        
        VStack{
//            Picker("Chose a page", selection: $selectedSegment){
//                ForEach(PageContents.allCases, id: \.self){
//                    Text($0.rawValue)
//                }
//            }
//            .pickerStyle(.segmented)
//            .padding()
//            .foregroundColor(Color.green)
//
            
            Spacer()
            ChosenPageContentView(selectedContent: selectedSegment)
            Spacer()
            
            Picker("Chose a page", selection: $selectedSegment){
                ForEach(PageContents.allCases, id: \.self){
                    Text($0.rawValue)
                }
            }
            .pickerStyle(.segmented)
            
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
