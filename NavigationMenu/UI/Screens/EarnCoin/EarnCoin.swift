//
//  EarnCoin.swift
//  NavigationMenu
//
//  Created by Jerry Hanks on 24/09/2020.
//  Copyright © 2020 Jerry Okafor. All rights reserved.
//

import SwiftUI

struct EarnCoin : View {
    
    var body: some View{
        Text("Welcome to the EarnCoin Page!")
            .navigationBarTitle("Earn Coin")
            .frame(maxWidth:.infinity,maxHeight: .infinity)
    }
}

struct EarnCoin_Preview : PreviewProvider {
    
    static var previews: some View{
        NavigationView{
            EarnCoin()
        }
    }
}
