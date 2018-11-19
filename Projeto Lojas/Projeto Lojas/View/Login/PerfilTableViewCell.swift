//
//  PerfilTableViewCell.swift
//  ProjetoFinal_Projeto Lojas
//
//  Created by Josimar  Fiuza Melo on 19/11/18.
//  Copyright © 2018 com.iesb. All rights reserved.
//

import UIKit

class PerfilTableViewCell: UITableViewCell {

    override func awakeFromNib() {
        super.awakeFromNib()
        // Initialization code
    }
    @IBOutlet weak var foto: UIImageView!
    @IBOutlet weak var txtNome: UILabel!
    @IBOutlet weak var txtEmail: UILabel!
    @IBOutlet weak var txtTelefone: UILabel!
    @IBOutlet weak var qtd: UILabel!
    
    override func setSelected(_ selected: Bool, animated: Bool) {
        super.setSelected(selected, animated: animated)

        // Configure the view for the selected state
    }

}
