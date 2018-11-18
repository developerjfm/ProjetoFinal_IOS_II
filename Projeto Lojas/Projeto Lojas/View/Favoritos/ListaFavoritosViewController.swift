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
    
    //    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
    //        let vc = segue.destination as! DetalheFavoritoTableViewController
    //        let detalhe = controller.nomeDaLoja((tableView!.indexPathForSelectedRow?.row)!)
    //        vc.nomeFavorito = detalhe
    //    }
    
    override func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        
        //let criarLista = tableView.dequeueReusableCell(withIdentifier: "CriarListaLojas", for: indexPath)
        let cell = tableView.dequeueReusableCell(withIdentifier: "Favorito", for: indexPath)
        
        // Configure the cell...
        if let cellFavorito = cell as? FavoritoTableViewCell {
            
            cellFavorito.txtNomeLoja.text = controller.nomeDaLoja(indexPath.row)
            cellFavorito.txtqtdLoja.text = String(controller.quantidadeDeLojas(indexPath.row) )
            
            return cellFavorito
        }
        
        return cell
    }
    
    override func tableView(_ tableView: UITableView, heightForRowAt indexPath: IndexPath) -> CGFloat {
        return 160
    }
    
}
