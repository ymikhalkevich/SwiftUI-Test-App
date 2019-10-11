//
//  ProductItem.swift
//  SwiftUIApp
//
//  Created by Yury Mikhalkevich on 10/10/19.
//  Copyright © 2019 Yury Mikhalkevich. All rights reserved.
//

import SwiftUI

struct ProductItem: View {
    
    var object: ProductsResponse
    
    var body: some View {
        VStack(alignment: .leading, spacing: 0) {
            if object.category == .courses {
            Image(object.image)
            .resizable()
            .renderingMode(.original)
            .cornerRadius(20)
            .frame(width: 170, height: 170)
            } else if object.category == .webinars {
                Image(object.image)
                .resizable()
                .renderingMode(.original)
                .cornerRadius(20)
                .frame(width: 170, height: 190)
            }
        }
        .padding(.leading, 15)
        
    }
}

struct ProductItem_Previews: PreviewProvider {
    static var previews: some View {
        ProductItem(object: materialResponce[1])
    }
}
