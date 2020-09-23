//
//  NavMenu.swift
//  NavigationMenu
//
//  Created by Jerry Hanks on 23/09/2020.
//  Copyright © 2020 Jerry Okafor. All rights reserved.
//

import SwiftUI
struct NavMenu : View {
    let menus:[Menu]
    
    @Binding var isDrawerOpen:Bool
    
    var body: some View{
        GeometryReader{geo in
            List(self.menus, id:\.id){menu in
                MenuItem(menu: menu, isDrawerOpen: self.$isDrawerOpen)
            }.padding(.top,10).frame(height:geo.size.height)
        }
    }
}


struct NavMenu_Preview : PreviewProvider {
    @State static var menus = [
        Menu(id:0, title: "Home", icon:"quizes"),
        Menu(id:2, title: "Quizs", icon:"myChats")]
    
    @State static var isDrawerOpen = false
    
    static var previews: some View {
        NavMenu(menus: menus,isDrawerOpen: $isDrawerOpen)
    }
}
