//
//  NavFooter.swift
//  NavigationMenu
//
//  Created by Jerry Hanks on 23/09/2020.
//  Copyright © 2020 Jerry Okafor. All rights reserved.
//

import SwiftUI

struct NavFooter : View {
    var body: some View{
        VStack{
            Divider()
            HStack(alignment: .center, spacing: 10) {
                Spacer()
                HStack(alignment: .center, spacing: 10) {
                    Image("settings")
                    Spacer(minLength: 8).fixedSize()
                    Text("Settings")
                }.frame(alignment:.leading)
                Spacer()
                Divider()
                Spacer()
                HStack(alignment: .center, spacing: 10) {
                    Image("logOut")
                    Spacer(minLength: 8).fixedSize()
                    Text("Log Out")
                }.frame(alignment:.leading)
                Spacer()
            }.frame(height: 50)
                .padding(EdgeInsets(top: 0, leading: 20, bottom: 0, trailing: 20))
        }.background(Color.red)
    }
}

struct NavFooter_Preview : PreviewProvider {
    static var previews: some View{
        NavFooter()
    }
}
