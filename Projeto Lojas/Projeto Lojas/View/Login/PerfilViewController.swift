//
//  PerfilTableViewController.swift
//  ProjetoFinalIOS_II
//
//  Created by Josimar  Fiuza Melo on 17/11/18.
//  Copyright © 2018 Josimar Fiuza Melo. All rights reserved.
//

import UIKit
import RealmSwift

class PerfilTableViewController: UITableViewController {
    
    var email : String = ""
    var senha : String = ""
    
    let controller = PerfilController()
    let numeroCelulas = 1
    
    override func viewDidLoad() {
        super.viewDidLoad()
    }

    
    override func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return  numeroCelulas
    }
    
    override func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        
        var usuario : Results<Usuario>
        usuario = controller.obterUsuario(email: email, senha: senha)
      
        let cell = tableView.dequeueReusableCell(withIdentifier: "PerfilCell", for: indexPath)
        
        if let cellPerfil = cell as? PerfilTableViewCell {
            
            
            return cellPerfil
        }
        
        return cell
    }
    
}
