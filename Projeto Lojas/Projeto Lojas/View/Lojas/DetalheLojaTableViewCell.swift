//
//  DetalheLojaTableViewCell.swift
//  ProjetoFinal_Projeto Lojas 
//
//  Created by Josimar  Fiuza Melo on 18/11/18.
//  Copyright © 2018 com.iesb. All rights reserved.
//

import UIKit

class DetalheLojaTableViewCell: UITableViewCell {

    
    @IBOutlet weak var txtNome: UITextField!
    @IBOutlet weak var txtNomeLoja: UITextField!
    @IBOutlet weak var txtNomeProduto: UITextField!
    @IBOutlet weak var txtNomeImagemProduto: UITextField!
    
    override func awakeFromNib() {
        super.awakeFromNib()
        // Initialization code
    }

    
    override func setSelected(_ selected: Bool, animated: Bool) {
        super.setSelected(selected, animated: animated)

        // Configure the view for the selected state
    }

}
