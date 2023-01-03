//
//  PokeCellView.swift
//  Pokedex
//
//  Created by Lucas Santos on 14/12/22.
//

import SwiftUI
import Kingfisher

struct PokeCellView: View {
   
    let pokemon: Pokemon
    let viewModel: PokemonViewModel
    var body: some View {
        ZStack{
            VStack(alignment: .leading){
                Text(pokemon.name.capitalized)
                    .font(.headline)
                    .foregroundColor(.white)
                    .padding(.top,8)
                    .padding(.leading)
                HStack{
                    Text(pokemon.type.capitalized)
                        .font(.headline)
                        .foregroundColor(.white)
                        .padding(.horizontal,16)
                        .padding(.vertical,8)
                        .overlay {
                            RoundedRectangle(cornerRadius: 12)
                                .fill(Color.white.opacity(0.2))
                        }
                        .frame(width: 100, height: 24)
                    KFImage(URL(string: pokemon.imageUrl))
                        .resizable()
                        .scaledToFit()
                        .frame(width: 68, height: 68)
                        .padding([.leading, .trailing], 4)
                }
            }
            
        }
        .background(Color(viewModel.backgroundColor(forType: pokemon.type)))
        .cornerRadius(12)
    }
}


