//
//  Chats.swift
//  NavigationMenu
//
//  Created by Jerry Hanks on 24/09/2020.
//  Copyright © 2020 Jerry Okafor. All rights reserved.
//

import SwiftUI

struct Chats : View {
    
    var body: some View{
        Text("Welcome to the Chats Page!")
            .navigationBarTitle("My Chats")
            .frame(maxWidth:.infinity,maxHeight: .infinity)
    }
}


struct Chats_Preview : PreviewProvider {
    
    static var previews: some View{
        NavigationView{
            Chats()
        }
    }
}

