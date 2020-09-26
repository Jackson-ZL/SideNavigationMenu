//
//  Button+ViewModifier.swift
//  NavigationMenu
//
//  Created by Jerry Hanks on 25/09/2020.
//  Copyright © 2020 Jerry Okafor. All rights reserved.
//

import SwiftUI

public struct PrimaryButton: ViewModifier {
    public func body(content: Content) -> some View {
        content.foregroundColor(Color.theme)
        .padding()
        .font(Font.system(size: Matrix.paragraphSize,
                        weight: .semibold,
                        design: .default))
        .overlay(
            RoundedRectangle(cornerRadius: 10)
                .stroke(Color.theme, lineWidth: 1)
        )
            
    }
}

public struct SecondaryButton: ViewModifier {
    public func body(content: Content) -> some View {
        content
            .foregroundColor(Color.solidButtonText)
            .padding() //can add custom padding with matrix class
            .font(Font.system(size: Matrix.paragraphSize,
                            weight: .semibold,
                            design: .default))
            .background(Color.theme)
            .cornerRadius(Matrix.cornerRadius)
    }
}

extension View {
    public func primaryButton() -> some View {
        self.modifier(PrimaryButton())
    }
}

extension View {
    public func secondaryButton() -> some View {
        self.modifier(SecondaryButton())
    }
}
