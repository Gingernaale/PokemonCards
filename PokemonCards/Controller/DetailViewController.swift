//
//  DetailViewController.swift
//  PokemonCards
//
//  Created by Irunya =} on 06/08/2021.
//

import UIKit

class DetailViewController: UIViewController {
    
    @IBOutlet weak var imageView: UIImageView!
    var pokemon: Pokemon?
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        if let pokemon = pokemon {
            ImageController.getImage(for: pokemon.image ) { (image) in
                self.imageView.image = image
            }
        } else {
            print("No Pokemon image")
        }
    }
}
