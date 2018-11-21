//
//  ListaFavoritosViewController.swift
//  Projeto Lojas
//
//  Created by Renê Xavier on 27/09/18.
//  Copyright © 2018 com.iesb. All rights reserved.
//

import UIKit

class ListaFavoritoTableViewController: UITableViewController {
    
    let controller = BuscaFavoritosController()
    
    override func viewDidLoad() {
        super.viewDidLoad()
        controller.selectDasOutrasTelas()
        self.tableView.reloadData()
    }
    
    // MARK: - Table view data source
    
    override func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        // #warning Incomplete implementation, return the number of rows
        return controller.quantidadeDeLojasFavorito()
    }
    
    override func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {

        let cellFavorito = tableView.dequeueReusableCell(withIdentifier: "Favorito", for: indexPath)

        if let cell = cellFavorito as? FavoritoTableViewCell {
                cell.txtNomeLoja.text = controller.nomeDaLoja(indexPath.row)
                cell.txtqtdLoja.text = String(controller.quantidadeDeLojas(indexPath.row) )
                
            return cell
        }
    
        
        return  cellFavorito

    }
    
    override func tableView(_ tableView: UITableView, heightForRowAt indexPath: IndexPath) -> CGFloat {
        return 160
    }
    
}
