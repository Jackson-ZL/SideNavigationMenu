//
//  Leaderboard.swift
//  NavigationMenu
//
//  Created by Jerry Hanks on 24/09/2020.
//  Copyright © 2020 Jerry Okafor. All rights reserved.
//

import SwiftUI

struct Leaderboard : View {
    
    var body: some View{
        Text("Welcome to the Leaderbaord Page!")
            .navigationBarTitle("Leaderboard")
            .frame(maxWidth:.infinity,maxHeight: .infinity)
    }
}


struct Leaderbaord_Preview : PreviewProvider {
    
    static var previews: some View{
        NavigationView{
            Leaderboard()
        }
    }
}
