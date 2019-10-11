//
//  SwiftUIView.swift
//  SwiftUIApp
//
//  Created by Yury Mikhalkevich on 10/8/19.
//  Copyright © 2019 Yury Mikhalkevich. All rights reserved.
//

import SwiftUI

struct TeacherCell: View {
    
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
            Text(user.text).lineLimit(nil)
        }
        .padding(.top, 5)
    }
}

struct SwiftUIView_Previews: PreviewProvider {
    static var previews: some View {
        TeacherCell(user: userResponse[0])
    }
}

