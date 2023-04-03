//
//  ContentView.swift
//  Shop
//
//  Created by User on 20.03.2023.
//

import SwiftUI

struct ProductDetailView: View {
    var body: some View {
        VStack {
            ScrollView(.horizontal, showsIndicators: false) {
                HStack {
                    ForEach(/*@START_MENU_TOKEN@*/0 ..< 5/*@END_MENU_TOKEN@*/) { item in
                        Image("sneakers")
                            .resizable()
                            .aspectRatio(contentMode: .fill)
                            .frame(width: 328, height: 279)
                        .cornerRadius(9)
                    }
                }
            }
            HStack(alignment: .top) {
                VStack(alignment: .leading, spacing: 14.0) {
                    Text("New balance Sneakers")
                        .font(.system(size: 17, weight: .semibold))
                    Text("Features waterproof, fire, air resistant shoes. all changed when the country of fire attacked.")
                        .font(.system(size: 9))
                        .foregroundColor(Color("greyTextColor"))
                    HStack {
                        Image(systemName: "star")
                            .foregroundColor(.yellow)
                        Text("3.9")
                            .bold()
                        Text("(4000 reviews)")
                    }
                    HStack {
                        ForEach([Color.blue, Color.pink, Color.green], id: \.self) { color in
                            RoundedRectangle(cornerRadius: 9)
                                .fill(color)
                                .frame(width: 34, height: 26)
                        }
                    }
                }
                Spacer()
                Text("$22.50")
                    .font(.system(size: 17, weight: .semibold))
            }
            .padding(.horizontal, 23)
            Spacer()
        }
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ProductDetailView()
    }
}

