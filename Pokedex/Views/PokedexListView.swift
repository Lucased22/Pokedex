//
//  PokedexListView.swift
//  Pokedex
//
//  Created by Lucas Santos on 14/12/22.
//

import SwiftUI

struct PokedexListView: View {
    private let gridItems = [GridItem(.flexible()),GridItem(.flexible())]
    var body: some View {
        NavigationView {
            ScrollView{
                LazyVGrid(columns: gridItems, spacing: 16){
                    ForEach(0..<151) { _ in
                        PokeCellView()
                    }
                }
            }
        }
    }
}

struct PokedexListView_Previews: PreviewProvider {
    static var previews: some View {
        PokedexListView()
    }
}
