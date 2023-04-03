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
            Text("Tab Content 1")
                .tabItem { Image("House")
                }
                .tag(1)
            ProductDetailView().tabItem { Label("Башмаки", systemImage: "heart") }.tag(2)
            ProductDetailView().tabItem { Label("Башмаки", systemImage: "cart") }.tag(3)
            ProductDetailView().tabItem { Label("Башмаки", systemImage: "house") }.tag(4)
            ProductDetailView().tabItem { Label("Башмаки", systemImage: "person") }.tag(5)
        }
    }
}

struct MainTabBar_Previews: PreviewProvider {
    static var previews: some View {
        MainTabBar()
    }
}
