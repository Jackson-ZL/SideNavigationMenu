//
//  TopLevelDestination.swift
//  NavigationMenu
//
//  Created by Jerry Hanks on 24/09/2020.
//  Copyright © 2020 Jerry Okafor. All rights reserved.
//

import Foundation


/// Represetns top level destination - At any point in time while interacting with these destinations,
/// we want the hamburger menu to be accessible so the that user can still interact with the SideNavigationMenu
enum TopLeveelDestination: String{
    case quizzes
    case myChats
    case leaderboard
    case notifications
    case earnCoin
}
