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
                HStack(alignment: .center, spacing: 10) {
                    Image("settings").resizable().frame(width: 20, height: 20)
                    Text("Settings")
                }.frame(alignment:.leading)
                Divider()
                HStack(alignment: .center, spacing: 10) {
                    Image("logOut").resizable().frame(width: 20, height: 20)
                    Text("Log Out")
                }.frame(alignment:.leading)

            }.frame(height: 50)
                .padding(EdgeInsets(top: 0, leading: 20, bottom: 0, trailing: 20))
        }
    }
}

struct NavFooter_Preview : PreviewProvider {
    static var previews: some View{
        NavFooter()
    }
}
