//
//  Text+Extension.swift
//  NavigationMenu
//
//  Created by Jerry Hanks on 25/09/2020.
//  Copyright © 2020 Jerry Okafor. All rights reserved.
//

import SwiftUI

struct PrimaryHeader: ViewModifier {
    func body(content: Content) -> some View {
        content
            .font(Font.system(size: Matrix.headerPrimarySize,
                              weight: .bold,
                              design: .default))
            .foregroundColor(Color.textHeaderPrimary)
    }
}

extension View {
    func primaryHeader() -> some View {
        return self.modifier(PrimaryHeader())
    }
}

struct SecondaryHeader: ViewModifier {
    func body(content: Content) -> some View {
        content
            .font(Font.system(size: Matrix.headerSecondarySize,
                              weight: .semibold,
                              design: .default))
            .foregroundColor(Color.textHeaderSecondary)
    }
}

extension View {
    func secondaryHeader() -> some View {
        return self.modifier(SecondaryHeader())
    }
}


struct Paragraph: ViewModifier {
    func body(content: Content) -> some View {
        content
            .font(Font.system(size: Matrix.paragraphSize,
                              weight: .regular,
                              design: .default))
            .foregroundColor(Color.textHeaderPrimary)
    }
}

extension View {
    func paragraph() -> some View {
        return self.modifier(Paragraph())
    }
}
