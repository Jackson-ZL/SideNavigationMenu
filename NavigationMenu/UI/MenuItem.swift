//
//  MenuItem.swift
//  NavigationMenu
//
//  Created by Jerry Hanks on 23/09/2020.
//  Copyright © 2020 Jerry Okafor. All rights reserved.
//

import SwiftUI

struct Menu : Hashable {
    let id:Int
    let title:String
    let icon:String
    let topLevelDestination:TopLeveelDestination
}

struct MenuItem : View {
    let menu:Menu
    
    @Binding var isDrawerOpen:Bool
    @Binding var currentTopLevelDestination:TopLeveelDestination
    @Environment(\.colorScheme) var colorScheme
    
    var body: some View{
        GeometryReader{geo in
            HStack(alignment: .center, spacing: 20) {
                Image(self.menu.icon)
                    .resizable()
                    .aspectRatio(contentMode: .fit)
                    .frame(width: 30, height: 30)
                
                Text(self.menu.title)
                    .font(.system(size: 18))
                    .frame(maxWidth:.infinity,alignment: .leading)
                    .foregroundColor(self.colorScheme == .dark ? Color.white : Color.black)
                    .contentShape(Rectangle()) //increase the tappable area
            }.padding(EdgeInsets(top: 8, leading: 20, bottom: 8, trailing: 20))
                .onTapGesture {
                    self.isDrawerOpen.toggle()
                    self.currentTopLevelDestination = self.menu.topLevelDestination
            }
            
        }
    }
}


struct MenuItem_Preview : PreviewProvider {
    
    @State static var isDrawerOpen = false
    @State static var currentTopLevelDestination:TopLeveelDestination = .quizzes
    
    static var previews: some View{
        MenuItem(menu: Menu(id: 0, title: "Quizzes", icon: "sideMenu",topLevelDestination: .quizzes),isDrawerOpen:$isDrawerOpen, currentTopLevelDestination: $currentTopLevelDestination)
        //MenuItem(menu: Menu(id: 0, title: "Home", icon: "earnCoin"),isDrawerOpen:.constant(true))
    }
}
