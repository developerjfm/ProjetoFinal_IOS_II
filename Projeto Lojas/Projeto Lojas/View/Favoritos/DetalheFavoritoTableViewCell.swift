//
//  DetalheFavoritoTableViewCell.swift
//  ProjetoFinal_Projeto Lojas 
//
//  Created by Josimar  Fiuza Melo on 18/11/18.
//  Copyright © 2018 com.iesb. All rights reserved.
//

import UIKit

class DetalheFavoritoTableViewCell: UITableViewCell {
    
    @IBOutlet weak var imagem: UIImageView!
    @IBOutlet weak var nomeLoja: UILabel!
    @IBOutlet weak var bolVideogame: UILabel!
    @IBOutlet weak var bolComputador: UILabel!
    
    override func awakeFromNib() {
        super.awakeFromNib()
        // Initialization code
    }

    override func setSelected(_ selected: Bool, animated: Bool) {
        super.setSelected(selected, animated: animated)

        // Configure the view for the selected state
    }

}
