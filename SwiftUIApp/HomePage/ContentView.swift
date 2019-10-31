//
//  HomePageContentView.swift
//  SwiftUIApp
//
//  Created by Yury Mikhalkevich on 10/10/19.
//  Copyright © 2019 Yury Mikhalkevich. All rights reserved.
//

import SwiftUI

struct ContentView: View {
    
    var categories: [String: [ProductsResponse]] {
        .init(grouping: materialResponce,
              by: {$0.category.rawValue}
        )
    }
    
    var body: some View {
        NavigationView {
            List {
                TeacherCell(user: swiftbook)
                    .padding(.top, 5)
                
                ForEach(self.categories.keys.sorted(), id: \.self) { key in
                    
                    ProductsCell(categoryName: key, items: self.categories[key]!)
                   
                }.listRowInsets(EdgeInsets())
                
                NavigationLink(destination: TeacherContentView()) {
                    Text("Наши преподаватели")
                }
            }
            .navigationBarTitle("Homepage")
        }
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
