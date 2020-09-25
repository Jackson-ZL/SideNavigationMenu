//
//  Notificattions.swift
//  NavigationMenu
//
//  Created by Jerry Hanks on 24/09/2020.
//  Copyright © 2020 Jerry Okafor. All rights reserved.
//

import SwiftUI

struct Notifications : View {
    
    var body: some View{
        Text("Welcome to the Notifications Page!")
            .navigationBarTitle("Notifications")
            .frame(maxWidth:.infinity,maxHeight: .infinity)
    }
}


struct Notifications_Preview : PreviewProvider {
    
    static var previews: some View{
        NavigationView{
            Notifications()
        }
    }
}
