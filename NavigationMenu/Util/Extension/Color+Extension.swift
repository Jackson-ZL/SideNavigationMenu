//
//  Color+Extension.swift
//  NavigationMenu
//
//  Created by Jerry Hanks on 25/09/2020.
//  Copyright © 2020 Jerry Okafor. All rights reserved.
//

import SwiftUI

extension Color{
    static var theme:Color{
        return Color("theme")
    }
    
    static var background:Color{
        return Color("background")
    }
    
    static var error: Color  {
        return Color("error")
    }
    
    static var success: Color  {
        return Color("success")
    }
    
    static var warning: Color  {
        return Color("warning")
    }
    
    static var solidButtonText: Color  {
        return Color("solidButtonText")
    }
    
    static var textHeaderPrimary: Color  {
        return Color("textHeaderPrimary")
    }
    
    static var textHeaderSecondary: Color  {
        return Color("textHeaderSecondary")
    }
    
    static var textParagraph: Color  {
        return Color("textParagraph")
    }
}

struct Color_Preview : PreviewProvider {
    static var previews: some View{
        HStack(spacing:20){
            VStack(spacing:20){
                Text("Test")
                    .frame(width:50,height: 50)
                    .background(Color.theme)
                
                Text("Test")
                    .frame(width:50,height: 50)
                    .foregroundColor(Color.textHeaderPrimary)
                
                Text("Test")
                    .frame(width:50,height: 50)
                    .foregroundColor(Color.error)
                
                Text("Test")
                    .frame(width:50,height: 50)
                    .foregroundColor(Color.success)
                
            }.colorScheme(.dark)
                .frame(maxWidth:.infinity,maxHeight:.infinity)
                .background(Color.theme)
            
            VStack(spacing:20){
                Text("Test")
                    .frame(width:50,height: 50)
                
                Text("Test")
                    .frame(width:50,height: 50)
                    .foregroundColor(Color.textHeaderPrimary)
                
                Text("Test")
                    .frame(width:50,height: 50)
                    .foregroundColor(Color.error)
                
                Text("Test")
                    .frame(width:50,height: 50)
                    .foregroundColor(Color.success)
                
            }.colorScheme(.light)
                .frame(maxWidth:.infinity,maxHeight:.infinity)
                .background(Color.theme)
        }.frame(maxWidth:.infinity,maxHeight:.infinity)
        
    }
}
