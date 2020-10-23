//
//  ContentView.swift
//  Fructus
//
//  Created by Victor Manuel Puga Ruiz on 17/10/20.
//

import SwiftUI

struct ContentView: View {
    // MARK: - Properties
    var fruits: [Fruit] = fruitsData
    
    // MARK: - Body
    var body: some View {
        NavigationView {
            List {
                ForEach(fruits.shuffled()) { item in
                    FruitRowView(fruit: item)
                        .padding(.vertical,4)
                }
            }
            .navigationTitle("Fruits")
        } // NavigationView
    }
}

// MARK: - Previews
struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView(fruits: fruitsData)
        ContentView(fruits: fruitsData)
            .preferredColorScheme(.dark)
    }
}
