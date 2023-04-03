//
//  MainTabBar.swift
//  Shop
//
//  Created by User on 03.04.2023.
//

import SwiftUI

struct MainTabBar: View {
    var body: some View {
        TabView(selection: .constant(1)) {
            Text("Tab Content 1").tabItem { Text("Tab Label 1") }.tag(1)
            ProductDetailView().tabItem { Label("Башмаки", systemImage: "bell") }.tag(2)
        }
    }
}

struct MainTabBar_Previews: PreviewProvider {
    static var previews: some View {
        MainTabBar()
    }
}
