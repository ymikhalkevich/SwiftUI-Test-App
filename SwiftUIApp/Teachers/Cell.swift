//
//  SwiftUIView.swift
//  SwiftUIApp
//
//  Created by Yury Mikhalkevich on 10/8/19.
//  Copyright © 2019 Yury Mikhalkevich. All rights reserved.
//

import SwiftUI

struct Cell: View {
    
    var user: UserResponse
    
    var body: some View {
        VStack (spacing: 10.0) {
            HStack (spacing: 4.0) {
                Image(user.profileImage)
                    .resizable()
                    .frame(width: 70, height: 70)
                    .clipShape(Circle())
                VStack (alignment: .leading, spacing: 4.0) {
                    Text(user.name).font(.title)
                    HStack {
                        Text(user.email).font(.subheadline)
                        Spacer()
                        Image("like")
                        Text(user.likes).font(.subheadline)
                    }
                }
            
            }
           // .padding()
            Text(user.text).lineLimit(nil)
           // .padding()
        }
        .padding(.top, 5)
    }
}

struct SwiftUIView_Previews: PreviewProvider {
    static var previews: some View {
        Cell(user: userResponse[0])
    }
}

