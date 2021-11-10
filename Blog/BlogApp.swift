//
//  BlogApp.swift
//  Blog
//
//  Created by Cooper Weiser on 11/6/21.
//

import SwiftUI

@main
struct BlogApp: App {
    var network = Network()
    
    var body: some Scene {
        WindowGroup {
            NavigationView{
                PostsView().environmentObject(network)
            }
        }
    }
}
