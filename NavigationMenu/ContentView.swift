//
//  ContentView.swift
//  NavigationMenu
//
//  Created by Jerry Hanks on 23/09/2020.
//  Copyright © 2020 Jerry Okafor. All rights reserved.
//

//
//https://www.c-sharpcorner.com/article/swift-ui-gesture-and-gesture-state/
import SwiftUI

struct ContentView: View {

    @State var isDrawerOpen = false
    @State var currentTopLevelDestination:TopLevelDestination = .quizzes
    
    //Note the id(...) that has been added to each AnyView.
    //This allows SwiftUI to identify the view within it's view hierarchy allowing
    //it to apply the transition animations correctly.
    func topLevelDestinationView(for destination:TopLevelDestination) -> some View {
        switch(destination){
        case .quizzes: return AnyView(Quizzes())
            .id("quizzes")
            
        case .myChats : return AnyView(Chats())
            .id("chats")
            
        case .leaderboard: return AnyView(Leaderboard())
            .id("leaderbaord")
            
        case .notifications : return AnyView(Notifications())
            .id("notifications")
            
        case .earnCoin: return AnyView(EarnCoin())
            .id("earnCoin")
        }
    }
    

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
        
        return  ZStack {
            NavigationView{
                ZStack{
                    topLevelDestinationView(for: self.currentTopLevelDestination)
                }.frame(maxWidth:.infinity,maxHeight: .infinity)
                    .background(Color.background)
                    .edgesIgnoringSafeArea(.vertical)
                    .onTapGesture {
                        //close side nav when tapped outside
                        if self.isDrawerOpen {self.isDrawerOpen = false}
                }
                .gesture(navDragGesture)
                .navigationBarItems(leading: Button(action: {
                    //toggle side nav menu
                    self.isDrawerOpen.toggle()
                }, label: {Image("sideMenu")})
                    .frame(width:30,height: 20)
                    .contentShape(Rectangle())
                )
            }
            
            //add nav drawer
            NavDrawer(isDrawerOpen: $isDrawerOpen, currentTopLevelDestination: $currentTopLevelDestination)
                .edgesIgnoringSafeArea(.vertical)
                
        }
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
