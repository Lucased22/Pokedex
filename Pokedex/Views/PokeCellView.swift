//
//  PokeCellView.swift
//  Pokedex
//
//  Created by Lucas Santos on 14/12/22.
//

import SwiftUI

struct PokeCellView: View {
    var body: some View {
        ZStack{
            VStack(alignment: .leading){
                Text("bulbassar")
                    .font(.headline)
                    .foregroundColor(.white)
                    .padding(.top,8)
                    .padding(.leading)
                HStack{
                    Text("Poison")
                        .font(.headline)
                        .foregroundColor(.white)
                        .padding(.horizontal,16)
                        .padding(.vertical,8)
                        .overlay {
                            RoundedRectangle(cornerRadius: 12)
                                .fill(Color.white.opacity(0.2))
                        }
                        .frame(width: 100, height: 24)
                    Image("bulba")
                        .resizable()
                        .scaledToFit()
                        .frame(width: 68, height: 68)
                        .padding([.leading, .trailing], 4)
                }
            }
            
        }
        .background(Color.green)
        .cornerRadius(12)
    }
}

struct PokeCellView_Previews: PreviewProvider {
    static var previews: some View {
        PokeCellView()
    }
}
