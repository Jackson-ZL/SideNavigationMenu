//
//  NonTopLevelDestination.swift
//  NavigationMenu
//
//  Created by Jerry Hanks on 24/09/2020.
//  Copyright © 2020 Jerry Okafor. All rights reserved.
//

import SwiftUI

struct NonTopLevelDestination : View {
    
    var body: some View{
        Text("This is a non top level destination as you can see!")
            .navigationBarTitle("Details")
            .frame(maxWidth:.infinity,maxHeight: .infinity)
            .background(Color.background) //order of arrangment matters, this should come last
    }
}


struct NonTopLevelDestination_Preview : PreviewProvider {
    
    static var previews: some View{
        NavigationView{
            NonTopLevelDestination()
        }
    }
}
