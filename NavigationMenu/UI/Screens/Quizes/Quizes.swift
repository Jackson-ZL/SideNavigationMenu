//
//  Quizes.swift
//  NavigationMenu
//
//  Created by Jerry Hanks on 24/09/2020.
//  Copyright © 2020 Jerry Okafor. All rights reserved.
//

import SwiftUI

struct Quizes : View {
    
    var body: some View{
        Text("Welcome to the Quizes Page!")
            .navigationBarTitle("Quizes")
    }
}


struct Quizes_Preview : PreviewProvider {
    
    static var previews: some View{
        NavigationView{
            Quizes()
        }
    }
}
