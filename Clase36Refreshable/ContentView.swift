//
//  ContentView.swift
//  Clase36Refreshable
//
//  Created by Escurra Colquis on 3/12/24.
//

import SwiftUI

struct ContentView: View {
    @State private var foods = [
        "Ceviche",
        "Pizza",
        "Arroz con Pollo",
        "Lomo Saltado"
    ]
    
    var body: some View {
        List(foods, id: \.self) { food in
            Text(food)
        }
        .refreshable {
            foods.append("Arroz con marisco")
        }
    }
}

#Preview {
    ContentView()
}
