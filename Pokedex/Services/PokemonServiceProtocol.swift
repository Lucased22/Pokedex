//
//  PokemonServiceProtocol.swift
//  Pokedex
//
//  Created by Lucas Santos on 02/01/23.
//

import Foundation

protocol PokemonServiceProtocol {
    func getPokemon(completionHandler: @escaping ([Pokemon]?) -> Void)
}
