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
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        let usuario = controller.obterUsuario(email: email, senha: senha)
        
        imagem.image = UIImage(named: usuario.foto)
        txtNome.text = usuario.nome
        txtEmail.text = usuario.email
        txtTelefone.text = usuario.telefone
        
    }
    
    override func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return  numeroCelulas
    }
}
