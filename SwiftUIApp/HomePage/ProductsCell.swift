//
//  ProductsCell.swift
//  SwiftUIApp
//
//  Created by Yury Mikhalkevich on 10/10/19.
//  Copyright © 2019 Yury Mikhalkevich. All rights reserved.
//

import SwiftUI

struct ProductsCell: View {
    var categoryName: String
    var items: [ProductsResponse]
    
    var body: some View {
        VStack (alignment: HorizontalAlignment.leading, spacing: 0) {
            Text(self.categoryName).font(.headline)
                .padding(.leading, 15)
                .padding(.top, 10)
            if categoryName == "Courses" {
                ScrollView(.horizontal, showsIndicators: false) {
                    HStack (alignment: .center, spacing: 0){
                        ForEach(self.items) { item in
                            NavigationLink(destination: DeteilPage(object: item)) {
                                ProductItem(object: item)
                            }
                        }
                    }
                }
                .frame(height: 190)
            } else if categoryName == "Webinars" {
                ScrollView(.horizontal, showsIndicators: false) {
                    HStack (alignment: .center, spacing: 0){
                        ForEach(self.items) { item in
                            NavigationLink(destination: DeteilPage(object: item)) {
                                ProductItem(object: item)
                            }
                        }
                    }
                }
                .frame(height: 210)
            }
            Spacer()
        }
        
    }
}

struct ProductsCell_Previews: PreviewProvider {
    static var previews: some View {
        ProductsCell(categoryName: materialResponce[0].category.rawValue, items: Array(materialResponce.prefix(3)))
    }
}
