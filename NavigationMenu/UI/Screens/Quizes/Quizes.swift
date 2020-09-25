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
    @State var showToast = false
    
    var body: some View{
        GeometryReader{geo in
            VStack(spacing:40){
                Text("Welcome to the Quizes Page!").primaryHeader()
                
                NavigationLink(destination: NonTopLevelDestination()) {
                    Text("Click Me!").secondaryHeader()
                }
                
                Button(action: {
                    self.showToast.toggle()
                    }) { Text("Show Toast!") }
                    .primaryButton()
                
                Button(action: {
                }) { Text("Secondary Button") }
                    .secondaryButton()
                
            }.frame(maxWidth:.infinity,maxHeight: .infinity)
                .navigationBarTitle(Text("Quizes"),displayMode: .automatic)
                .toast(isShowing: self.$showToast, type: .success(message: "This is success message"))
            //.background(Color.red)
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
