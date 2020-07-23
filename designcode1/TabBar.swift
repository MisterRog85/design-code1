//
//  TabBar.swift
//  designcode1
//
//  Created by William Tomas on 23/07/2020.
//  Copyright © 2020 William Tomas. All rights reserved.
//

import SwiftUI

struct TabBar: View {
    var body: some View {
        TabView {
            Home().tabItem {
                Image(systemName: "play.circle.fill")
                Text("Home")
            }
            ContentView().tabItem {
                Image(systemName: "rectangle.stack.fill")
                Text("Certificates")
            }
        }
    }
}

struct TapBar_Previews: PreviewProvider {
    static var previews: some View {
        TabBar()
    }
}
