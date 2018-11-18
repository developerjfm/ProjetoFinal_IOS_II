//
//  DetalheFavoritoTableViewController.swift
//  ProjetoFinal_Projeto Lojas 
//
//  Created by Josimar  Fiuza Melo on 18/11/18.
//  Copyright © 2018 com.iesb. All rights reserved.
//

import UIKit

class DetalheFavoritoTableViewController: UITableViewController {
    
    let controller = BuscaFavoritosController()
    
    override func viewDidLoad() {
        super.viewDidLoad()
        controller.selectDasOutrasTelas()
        self.tableView.reloadData()
    }
    
    // MARK: - Table view data source
    
    override func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        // #warning Incomplete implementation, return the number of rows
        return controller.quantidadeDeLojas(section)
    }
    
    
    override func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCell(withIdentifier: "lojasFavorito", for: indexPath)
        
        // Configure the cell...
        if let cellFavorito = cell as? DetalheFavoritoTableViewCell {
            
            cellFavorito.nomeLoja.text = controller.nomeDaLoja(indexPath.row)
            cellFavorito.imagem.image = UIImage(named: controller.nomeLogoLoja(indexPath.row))
            
            cellFavorito.bolVideogame.text = controller.vendeJogos(indexPath.row) ? "true" : "false"
            cellFavorito.bolComputador.text = controller.vendeComputadores(indexPath.row) ? "true" : "false"
            
            return cellFavorito
        }
        
        
        return cell
    }
    
    override func tableView(_ tableView: UITableView, heightForRowAt indexPath: IndexPath) -> CGFloat {
        return 160
    }
    
}
