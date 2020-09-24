//
//  NavDrawer.swift
//  NavigationMenu
//
//  Created by Jerry Hanks on 23/09/2020.
//  Copyright © 2020 Jerry Okafor. All rights reserved.
//

import SwiftUI

struct DrawerContent : View {
   
    @Binding var name:String
    @Binding var coins:Int
    @Binding var menu:[Menu]
    @Binding var isDrawerOpen:Bool
    @Binding var currentTopLevelDestination:TopLeveelDestination
    
    @Environment(\.colorScheme) var colorScheme
       
    private let backgroundLight = LinearGradient(gradient: Gradient(colors: [Color(.gray), Color(.gray)]), startPoint: .top, endPoint: .bottom)
    private let backgroundDark = LinearGradient(gradient: Gradient(colors: [Color(UIColor(hex: "#3b3d43")), Color(UIColor(hex: "#3c4561"))]), startPoint: .top, endPoint: .bottom)

       
    
    var body: some View{
        GeometryReader{geo in
                VStack(alignment: .leading){
                    Spacer(minLength: 30).fixedSize()
                    NavHeader(name: self.name, coins: self.coins).frame( height:160)
                    Spacer(minLength: 10).fixedSize()
                    NavMenu(menus: self.menu, isDrawerOpen: self.$isDrawerOpen, currentTopLevelDestination: self.$currentTopLevelDestination).frame( height:240)
                     Spacer()
                    NavFooter(isDrawerOpen: self.$isDrawerOpen).frame( height:60)
                }.frame(width: geo.size.width, height: geo.size.height,alignment: .top)
                .background(self.colorScheme == .dark ? self.backgroundDark : self.backgroundLight)
            }

        
    }
}

struct NavDrawer:View {
    private let width   = UIScreen.main.bounds.width - 100

    @Binding var isDrawerOpen:Bool
    @Binding var currentTopLevelDestination:TopLeveelDestination
    
    @State var name = "Hanne Fields"
    @State var coins = 28966
    
    @State var menu =
        [Menu(id:1, title: "Quizzes", icon:"quizes", topLevelDestination: .quizzes),
         Menu(id:2, title: "My Chats", icon:"myChats", topLevelDestination: .myChats),
         Menu(id:3, title: "Leaderboard", icon:"leaderboard", topLevelDestination: .leaderboard),
         Menu(id:4, title: "Notifications", icon:"notifications", topLevelDestination: .notifications),
         Menu(id:5, title: "Earn Coin", icon:"earnCoin", topLevelDestination: .earnCoin),
    ]
   
    var body: some View{
        HStack{
            DrawerContent(name: $name, coins: $coins, menu: $menu, isDrawerOpen: $isDrawerOpen, currentTopLevelDestination: $currentTopLevelDestination)
                .frame(width:self.width)
                .offset(x: self.isDrawerOpen ? 0: -self.width)
                .animation(Animation.spring(response: 0.5, dampingFraction: 1.0, blendDuration: 0.4))
            Spacer()
        }
    }
}


struct NavDrawer_Preveiw : PreviewProvider {
    @State static var isDrawerOpen = true
    @State static var currentTopLevelDestination:TopLeveelDestination = .quizzes
    
    static var previews: some View{
        NavDrawer(isDrawerOpen:$isDrawerOpen, currentTopLevelDestination: $currentTopLevelDestination )
//        NavDrawer(isDrawerOpen: .constant(false))
    }
}
