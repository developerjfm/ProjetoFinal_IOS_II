//
//  DetalheLojaTableViewController.swift
//  ProjetoFinal_Projeto Lojas 
//
//  Created by Josimar  Fiuza Melo on 18/11/18.
//  Copyright © 2018 com.iesb. All rights reserved.
//

import UIKit

class DetalheLojaTableViewController: UITableViewController {

    @IBOutlet weak var imagemLogo: UIImageView!
    @IBOutlet weak var nomeLoja: UILabel!
    @IBOutlet weak var mapa: UIImageView!
    
    var nomeLojaRecebido : String = ""
    var loja = Loja()
    
    let controller = BuscaLojasController()
    
    override func viewDidLoad() {
        super.viewDidLoad()
        loja = controller.obterLoja(nomeLojaRecebido)
    }
    
    override func viewWillAppear(_ animated: Bool) {
        super.viewWillAppear(animated)
        imagemLogo.image = UIImage(named: loja.iconeGrande)
        nomeLoja.text = loja.nome
    }
    
    // MARK: - Table view data source
    override func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        // #warning Incomplete implementation, return the number of rows
        return 1
    }

    override func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCell(withIdentifier: "detalheLojaCell", for: indexPath)

        if let cellDetalhe = cell as? DetalheLojaTableViewCell {
            
            cellDetalhe.txtNomeLoja.text = loja.nome
            let vg = controller.vendeJogos(indexPath.row) ? "true" : "false"
            cellDetalhe.txtVideoGame.text = "Loja possui VideoGame: \(vg)"
            let comp = controller.vendeComputadores(indexPath.row) ? "true" : "false"
            cellDetalhe.txtPossuiComputador.text = "Loja possui Computadores :\(comp)"

       
            return cellDetalhe
        }

        return cell
    }


    /*
    // Override to support conditional editing of the table view.
    override func tableView(_ tableView: UITableView, canEditRowAt indexPath: IndexPath) -> Bool {
        // Return false if you do not want the specified item to be editable.
        return true
    }
    */

    /*
    // Override to support editing the table view.
    override func tableView(_ tableView: UITableView, commit editingStyle: UITableViewCellEditingStyle, forRowAt indexPath: IndexPath) {
        if editingStyle == .delete {
            // Delete the row from the data source
            tableView.deleteRows(at: [indexPath], with: .fade)
        } else if editingStyle == .insert {
            // Create a new instance of the appropriate class, insert it into the array, and add a new row to the table view
        }    
    }
    */

    /*
    // Override to support rearranging the table view.
    override func tableView(_ tableView: UITableView, moveRowAt fromIndexPath: IndexPath, to: IndexPath) {

    }
    */

    /*
    // Override to support conditional rearranging of the table view.
    override func tableView(_ tableView: UITableView, canMoveRowAt indexPath: IndexPath) -> Bool {
        // Return false if you do not want the item to be re-orderable.
        return true
    }
    */

    /*
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        // Get the new view controller using segue.destination.
        // Pass the selected object to the new view controller.
    }
    */

}
