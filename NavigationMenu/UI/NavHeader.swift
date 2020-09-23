//
//  NavHeader.swift
//  NavigationMenu
//
//  Created by Jerry Hanks on 23/09/2020.
//  Copyright © 2020 Jerry Okafor. All rights reserved.
//

import SwiftUI

struct NavHeader : View{
    let name:String
    let coins:Int
    
    @Environment(\.colorScheme) var colorScheme
    
    var body: some View{
        GeometryReader{geo in
            VStack(alignment: .leading) {
                Image("avatar")
                    .resizable()
                    .frame(width:100,height: 100)
                    .clipShape(Circle())
                    .border(Color.white, width: 2)
                Spacer(minLength: 10).fixedSize(horizontal: false, vertical: true)
                Text(self.name)
                    .font(.system(size:20))
                    .foregroundColor(self.colorScheme == .dark ? Color.white : Color.black)
                Text("\(self.coins) Coins")
                    .font(.system(size:14))
                    .foregroundColor(self.colorScheme == .dark ? Color.secondary : Color.secondary)
            }.frame(minWidth:geo.size.width,alignment: .leading)
        }.padding(.leading,20).padding(.trailing,20)
    }

}


struct NavHeader_Preview : PreviewProvider {
    
    static var previews: some View{
        NavHeader(name: "Hanner Fields", coins: 29848)
    }
}
