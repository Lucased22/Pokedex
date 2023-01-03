//
//  PokedexListView.swift
//  Pokedex
//
//  Created by Lucas Santos on 14/12/22.
//

import SwiftUI

struct PokedexListView: View {
    private let gridItems = [GridItem(.flexible()),GridItem(.flexible())]
    @ObservedObject var viewModel = PokemonViewModel()
    
    var body: some View {
        NavigationView {
            ScrollView{
                LazyVGrid(columns: gridItems, spacing: 16){
                    ForEach(viewModel.pokemon) { pokemon in
                        PokeCellView(pokemon: pokemon, viewModel: viewModel)
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
