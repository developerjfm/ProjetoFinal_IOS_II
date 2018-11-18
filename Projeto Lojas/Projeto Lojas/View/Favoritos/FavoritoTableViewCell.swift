//
//  FavoritoTableViewCell.swift
//  ProjetoFinal_Projeto Lojas 
//
//  Created by Josimar  Fiuza Melo on 18/11/18.
//  Copyright © 2018 com.iesb. All rights reserved.
//

import UIKit

class FavoritoTableViewCell: UITableViewCell {
    
    @IBOutlet weak var txtNomeLoja: UILabel!
    @IBOutlet weak var txtqtdLoja: UILabel!

    
    override func awakeFromNib() {
        super.awakeFromNib()
        // Initialization code
    }

    override func setSelected(_ selected: Bool, animated: Bool) {
        super.setSelected(selected, animated: animated)

        // Configure the view for the selected state
    }

}
