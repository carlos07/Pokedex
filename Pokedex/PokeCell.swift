//
//  PokeCell.swift
//  Pokedex
//
//  Created by Carlos A. on 1/29/17.
//  Copyright © 2017 Carlos A. King. All rights reserved.
//

import UIKit

class PokeCell: UICollectionViewCell {
    
    @IBOutlet weak var thumbImg: UIImageView!
    @IBOutlet weak var nameLbl: UILabel!
    
    var pokemon: Pokemon!
    
    required init?(coder aDecoder: NSCoder) {
        super.init(coder: aDecoder)
        
        layer.cornerRadius = 5.0
        
    }
    
    func configureCell(pokemon: Pokemon) {
        
        self.pokemon = pokemon
        thumbImg.image = UIImage(named: "\(self.pokemon.pokedexId)")
        nameLbl.text = pokemon.name.capitalized
        
    }
    
}
