//
//  ContentView.swift
//  NavigationMenu
//
//  Created by Jerry Hanks on 23/09/2020.
//  Copyright © 2020 Jerry Okafor. All rights reserved.
//

import SwiftUI

struct ContentView: View {

    @State var isDrawerOpen = false
    
    var body: some View {
        
        let navDragGesture = DragGesture()
            .onEnded({
            if $0.translation.width > 100{
                withAnimation {self.isDrawerOpen = true}
            }
            
            if $0.translation.width < -100{
                withAnimation {self.isDrawerOpen = false}
            }
            
        })
        
        return ZStack{
            NavigationView{
                ZStack{
                    Text("Welcome to Side Navigation Menu")
                    .navigationBarTitle("Side Nav Menu")
                }.navigationBarItems(leading: Button(action: {
                    //toggle side nav menu
                    self.isDrawerOpen.toggle()
                    print("Drawe Open: \(self.isDrawerOpen)")
                }, label: {Image("sideMenu").contentShape(Rectangle())}))
            }.onTapGesture {
                if self.isDrawerOpen{self.isDrawerOpen.toggle()}
            }
            
            //add nav drawer
            NavDrawer(isDrawerOpen: $isDrawerOpen)
                .edgesIgnoringSafeArea([.top,.bottom])
                .transition(.move(edge: .leading))
                .animation(.interpolatingSpring(stiffness: 50, damping: 1))
        }.gesture(navDragGesture)
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
