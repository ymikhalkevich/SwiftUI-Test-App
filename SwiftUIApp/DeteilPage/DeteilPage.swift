//
//  DeteilPage.swift
//  SwiftUIApp
//
//  Created by Yury Mikhalkevich on 10/31/19.
//  Copyright © 2019 Yury Mikhalkevich. All rights reserved.
//

import SwiftUI



struct DeteilPage: View {
    
    var object: ProductsResponse
    
    var body: some View {
        VStack (spacing: 16.0){
            VStack(spacing: 20.0) {
                MainImage(object: object)
                Text(object.name)
                    .lineLimit(nil)
                    .font(.title)
            }
            LittleStack(object: object)
            
            VStack(alignment: .leading, spacing: 12.0) {
                Text("Описание")
                    .font(.title)
                Text(object.description)
                    .lineLimit(nil)
            }
            Spacer()
        }.padding()
    }
}


struct LittleStack: View {
    
    var object: ProductsResponse

    var body: some View {
        
        HStack (spacing: 30) {
            VStack {
                Text("\(object.lessons)")
                    .font(.title)
                Text("Lessons")
                    .font(.body)
                    .fontWeight(.medium)
            }
            VStack {
                Text("\(object.students)")
                    .font(.title)
                Text("Students")
                    .font(.body)
                    .fontWeight(.medium)
            }
        }
    }
    
}
struct MainImage: View {
    
    var object: ProductsResponse
    
    var body: some View {
        ViewBuilder.buildBlock(
            object.category == .courses
                ? ViewBuilder.buildEither(first: Image(object.image)
                    .resizable()
                    .cornerRadius(30)
                    //   .border(Color.gray, width: 3)
                    .shadow(radius: 10)
                    .frame(width: 170, height: 170))
                : ViewBuilder.buildEither(second: Image(object.image)
                    .resizable()
                    .cornerRadius(30)
                    //   .border(Color.gray, width: 3)
                    .shadow(radius: 10)
                    .frame(width: 170, height: 190))
        )
    }
}

struct DeteilPage_Previews: PreviewProvider {
    static var previews: some View {
        DeteilPage(object: materialResponce[7])
    }
}
