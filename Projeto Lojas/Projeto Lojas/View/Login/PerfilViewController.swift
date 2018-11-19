//
//  PerfilTableViewController.swift
//  ProjetoFinalIOS_II
//
//  Created by Josimar  Fiuza Melo on 17/11/18.
//  Copyright © 2018 Josimar Fiuza Melo. All rights reserved.
//

import UIKit

class PerfilTableViewController: UITableViewController {
    
    var email : String = ""
    var senha : String = ""
    
    @IBOutlet weak var imagem: UIImageView!
    @IBOutlet weak var txtNome: UILabel!
    @IBOutlet weak var txtEmail: UILabel!
    @IBOutlet weak var txtTelefone: UILabel!
    @IBOutlet weak var qtdLista: UILabel!
    
    let controller = PerfilController()
    let numeroCelulas = 5
    var usuario = Usuario()
    
    override func viewDidLoad() {
        super.viewDidLoad()
        print("++++++++++++++++++++++++\(email)")
        print(senha)
    }
    
    
    override func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return  numeroCelulas
    }
}
