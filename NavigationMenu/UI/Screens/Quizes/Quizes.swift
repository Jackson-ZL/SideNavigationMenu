//
//  Quizes.swift
//  NavigationMenu
//
//  Created by Jerry Hanks on 24/09/2020.
//  Copyright © 2020 Jerry Okafor. All rights reserved.
//

import SwiftUI

struct Quizes : View {
    @State var isActive = true
    
    var body: some View{
        GeometryReader{geo in
            VStack(spacing:20){
                Text("Welcome to the Quizes Page!")
                NavigationLink(destination: NonTopLevelDestination()) {
                    Text("Click Me!")
                }
            }.navigationBarTitle("Quizes")
                .frame(width:geo.size.width,height: geo.size.height)
                .background(Color.red)
        }
    }
}


struct Quizes_Preview : PreviewProvider {
    
    static var previews: some View{
        NavigationView{
            Quizes()
        }
    }
}
