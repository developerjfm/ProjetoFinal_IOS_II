//
//  LojaTableViewCell.swift
//  Projeto Lojas
//
//  Created by Renê Xavier on 13/09/18.
//  Copyright © 2018 com.iesb. All rights reserved.
//

import UIKit

class LojaTableViewCell: UITableViewCell {
    
    @IBOutlet weak var logoLoja: UIImageView!
    @IBOutlet weak var nomeLoja: UILabel!
    @IBOutlet weak var likeButton: UIButton!
    @IBOutlet weak var vendeJogos: UIImageView!
    @IBOutlet weak var vendeComputador: UIImageView!
    
    override func awakeFromNib() {
        super.awakeFromNib()
        // Initialization code
    }
    
    @IBAction func lojaFavoritada(_ sender: Any) {
        let novaImagem = likeButton.currentImage == UIImage(named: "like") ? UIImage(named: "liked") : UIImage(named: "like")
        likeButton.setImage(novaImagem, for: .normal)
    }
    
    override func setSelected(_ selected: Bool, animated: Bool) {
        super.setSelected(selected, animated: animated)
        
        // Configure the view for the selected state
    }
    
}
