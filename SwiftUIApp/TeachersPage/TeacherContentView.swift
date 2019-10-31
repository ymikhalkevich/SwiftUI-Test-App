//
//  ContentView.swift
//  SwiftUIApp
//
//  Created by Yury Mikhalkevich on 10/7/19.
//  Copyright © 2019 Yury Mikhalkevich. All rights reserved.
//

import SwiftUI

struct TeacherContentView: View {
    var body: some View {
        NavigationView() {
            List(userResponse) { user in
                TeacherCell(user: user)
            }
            .navigationBarTitle("Teachers", displayMode: .automatic)
            Spacer()
        }
        //.padding(-0.5)
    }
}

struct TeacherContentView_Previews: PreviewProvider {
    static var previews: some View {
        TeacherContentView()
    }
}
