//
//  NavDrawer.swift
//  NavigationMenu
//
//  Created by Jerry Hanks on 23/09/2020.
//  Copyright © 2020 Jerry Okafor. All rights reserved.
//

import SwiftUI

struct NavDrawer:View {

    @State var name = "Hanne Fields"
    @State var coins = 28966
    @State var isDrawerOpen = false
    @State var menu =
        [Menu(id:1, title: "Quizes", icon:"quizes"),
         Menu(id:2, title: "My Chats", icon:"myChats"),
         Menu(id:3, title: "Leaderboard", icon:"leaderboard"),
         Menu(id:4, title: "Notifications", icon:"notifications"),
         Menu(id:5, title: "Earn Coin", icon:"earnCoin"),
    ]
    @Environment(\.colorScheme) var colorScheme
    
    private let backgroundLight = LinearGradient(gradient: Gradient(colors: [Color(.gray), Color(.gray)]), startPoint: .top, endPoint: .bottom)
    private let backgroundDark = LinearGradient(gradient: Gradient(colors: [Color(UIColor(hex: "#3b3d43")), Color(UIColor(hex: "#3c4561"))]), startPoint: .top, endPoint: .bottom)

    
    var body: some View{
        VStack(alignment: .leading){
            NavHeader(name: name, coins: coins).frame( height:160)
            Spacer(minLength: 10).fixedSize()
            NavMenu(menus: menu, isDrawerOpen: $isDrawerOpen).frame( height:240)
             Spacer()
            NavFooter().frame( height:60)
        }.frame(alignment: .topLeading)
        
    }
}


struct NavDrawer_Preveiw : PreviewProvider {
    
    static var previews: some View{
        NavDrawer()
    }
}
