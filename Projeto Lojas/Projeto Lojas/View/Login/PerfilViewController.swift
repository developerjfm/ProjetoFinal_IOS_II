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
    
    let numeroCelulas = 5
    
    override func viewDidLoad() {
        super.viewDidLoad()
    }
    
    override func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        // #warning Incomplete implementation, return the number of rows
        return  numeroCelulas
    }
    
    
    
}
